package com.hotel.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.FileNotFoundException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.hotel.calendar.CalendarDTO;
import com.hotel.hotel.HotelDTO;
import com.hotel.member.MemberDTO;
import com.hotel.reservation.ReservationDTO;
import com.hotel.review.ReviewDTO;
import com.hotel.service.CalendarService;
import com.hotel.service.HotelService;
import com.hotel.service.MailService;
import com.hotel.service.MemberService;
import com.hotel.service.ReservationService;
import com.hotel.service.ReviewService;

@Controller
public class MainController {

	@Autowired private MemberService ms;
	@Autowired private HotelService hs;
	@Autowired private ReservationService res;
	@Autowired private MailService mailService;
	@Autowired private ReviewService reviewService;
	@Autowired private CalendarService cs;
	
	// 메인페이지
	@GetMapping("")
	public ModelAndView dailyMain() {
		ModelAndView mav = new ModelAndView("dailyMain");
		
		List<HotelDTO> list = hs.getHotelList();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("list_length", list.size());
		mav.addObject("map", map);
		return mav;
	}
	
	// 이미지 클릭시 해당 호텔
	@GetMapping("hotelView/{hotelName}/")
	public ModelAndView hotelView (@PathVariable String hotelName) {
		ModelAndView mav = new ModelAndView("hotelView");
		HotelDTO dto = hs.getOneHotel(hotelName);
		HashMap<String, Object> map = new HashMap<String, Object>();
		SimpleDateFormat sdf = new SimpleDateFormat ( "yyyy-MM-dd");	// 오늘 날짜 출력
		Date time = new Date();
		String day = sdf.format(time);
		System.out.println("오늘 날짜 : " + day);
		
//		 리뷰 전체 목록
		List<ReviewDTO> showReview = reviewService.selectReview(hotelName);
		System.out.println("showReview : " +  showReview);
		map.put("showReview", showReview);
		
//		 리뷰 전체 갯수
		int count = reviewService.selectCount(hotelName);
		System.out.println(count);
		map.put("count", count);
		
		
		// 방 최적화 가격
		map.put("hotelName", hotelName);
		map.put("day", day);
		String calendar_price = cs.getRoomPrice(map);
		System.out.println("calendar : " + calendar_price);
		
		
		map.put("roomPrice", calendar_price);
		
		// 리뷰 만족 갯수
//		int goodCount = reviewService.getGoodCount(hotelName);
		
		
		// 리뷰 불만족 갯수
//		int badCount = reviewService.getBadCount(hotelName);
		
		map.put("dto", dto);
		mav.addObject("map", map);
		
		return mav;
	}
	
	@PostMapping("hotelView/{hotelName}/")
	public ModelAndView hotelView (@PathVariable String hotelName, String indata) throws ParseException {
		ModelAndView mav = new ModelAndView("selectRoom");
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("hotelName", hotelName);
		map.put("indata", indata);
		System.out.println("메인 컨트롤 : " + hotelName);
		System.out.println("메인 컨트롤 roomSelect: " + indata);
		SimpleDateFormat sdf = new SimpleDateFormat ( "yyyy-MM-dd");	// 오늘 날짜 출력
		Date time = new Date();
		String day = sdf.format(time);
		System.out.println("오늘 날짜 : " + day);
		
		
		// 방 리스트 띄우기
		map.put("day", day);
		List<CalendarDTO> roomList = cs.getRoomList(map);
		System.out.println("roomList : "  + roomList);
		map.put("roomList", roomList);
		mav.addObject("map", map);
		
		return mav;
	}
	
	// 객실 선택
	@GetMapping("selectRoom")
	public ModelAndView selectRoom() {
		ModelAndView mav = new ModelAndView("selectRoom");
	
		return mav;
	}
	
	
	// 검색
	@GetMapping("search")
	public ModelAndView search () {
		ModelAndView mav = new ModelAndView("search");
		List<HotelDTO> list = hs.getHotelList();
		mav.addObject("list", list);
		return mav;	
	}
	
	// 로그인
	@GetMapping("login")
	public void login() {}
	
	// 로그인 (쿠키)
	@PostMapping("login")
	public ModelAndView login(MemberDTO dto, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		String userid = dto.getCu_id();
		String storeid = request.getParameter("storeid");
		
		MemberDTO login = ms.getMember(dto);
		
		Cookie c = new Cookie("userid", userid);
		
		session.setAttribute("login", login);
		
		boolean flag = (storeid != null) && (session.getAttribute("login") != null);
		
		c.setMaxAge(flag ? 60 * 60 * 24 * 100 : 0);	
		response.addCookie(c);	
		
		mav.setViewName(login != null ? "redirect:/" : "msg");
		if(login == null) {
			mav.addObject("msg", "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다.");
		}
		return mav;
	}
	
	// 로그아웃
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.removeAttribute("login");
		return "redirect:/";
	}
	
	// 회원가입
	@GetMapping("join")
	public void join() {}

	// 판매자 정보
	@GetMapping("sellerInformation/{hotelName}")
	public ModelAndView sellerInformation(@PathVariable String hotelName) {
		ModelAndView mav = new ModelAndView("sellerInformation");
		HotelDTO dto = hs.getSellerInfo(hotelName);
		mav.addObject("dto", dto);
		return mav;
	}
	
	// 아이디 찾기
	@GetMapping("findID")
	public void findID() {}
	
	// 비밀번호 찾기
	@GetMapping("findPW")
	public void findPW() {}
	
	// 회원 정보 수정
	@GetMapping("modify")
	public void modify() {}
	
	// 마이 페이지
	@GetMapping("myPage")
	public ModelAndView myPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("myPage");
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String userid = dto.getCu_id();
		System.out.println("마이페이지 : " + userid);
		List<ReservationDTO> reservationList = res.getReservationInfo(userid);
		mav.addObject("reservationList", reservationList);
		
		return mav;
		
	}
	
	// 더보기 페이지
	@GetMapping("moreDetails")
	public void moreDetails() {}
	
	// 호텔가이드 페이지
	@GetMapping("hotelGuide")
	public void hotelGuide() {}
	
	// 호텔정보 페이지
	@GetMapping("hotelInfo")
	public void hotelInfo() {}
	
	// 질문 페이지
	@GetMapping("hotelQ")
	public void hotelQ() {}
	
		// 지도 페이지
	@GetMapping("map/{hotelName}")
	public ModelAndView map(@PathVariable String hotelName) {
		ModelAndView mav = new ModelAndView("map");
		HotelDTO dto = hs.getHotelAddress(hotelName);
		mav.addObject("dto", dto);
		return mav;
	}
	
	// 호텔 룸 선택 페이지
	@GetMapping("rooms/{indata}/{hotelName}/{roomType}/")
	public ModelAndView rooms(@PathVariable HashMap<String, Object> map) throws ParseException {
		ModelAndView mav = new ModelAndView("rooms");
		String indata = (String) map.get("indata");
		String hotelName = (String) map.get("hotelName");
		String roomType = (String) map.get("roomType");
		System.out.println(indata);
		System.out.println(hotelName);
		System.out.println(roomType);
		
		
		String[] data = indata.split(" to");
		
		String dateStart = data[0];
		String dateEnd = data[1];
		
		
		System.out.println("체크인 : "+ dateStart);
		System.out.println("체크아웃 : " + dateEnd);
		map.put("dateStart", dateStart);
		map.put("dateEnd", dateEnd);
		String strFormat = "yyyy-MM-dd";

		SimpleDateFormat sdf = new SimpleDateFormat(strFormat);
		Date startDate = sdf.parse(dateStart);
		Date endDate = sdf.parse(dateEnd);
		
		long day = (endDate.getTime() - startDate.getTime()) / (24*60*60*1000);
		System.out.println("몇박인지 ? " + day);
		
		int result = 0;
		List<CalendarDTO> roomList =  cs.getOneRoom(map);
		for(int i = 0; i < roomList.size(); i++) {
			System.out.println("roomList : " + roomList.get(i).getCalendar_price());
			result += roomList.get(i).getCalendar_price();
		}
		System.out.println("총 값 : " + result);
		
		
//		System.out.println("price : " + price);
		
		
		
		
		System.out.println("값 : " + result);
		map.put("roomList", roomList.get(0));	// 방리스트 출력
		map.put("indata", indata);		// 날짜 몇일 부터 몇일 까지 인지		
		map.put("result", result); 		// 총 결제 금액
		mav.addObject("map", map);
		
		
		return mav;
		
		
	}
	
	// 결제하기 페이지
	@GetMapping("payment/{indata}/{hotelName}/{roomType}/")
	public ModelAndView payment(@PathVariable HashMap<String, Object> map) throws ParseException {
		ModelAndView mav = new ModelAndView("payment");
		String indata = (String) map.get("indata");
		String hotelName = (String) map.get("hotelName");
		String roomType = (String) map.get("roomType");
		System.out.println("날짜 : " + indata);
		System.out.println("호텔이름 : " + hotelName);
		System.out.println("룸타입 : " + roomType);

		// 예약정보를 판매자 이메일로 보내기 위해 필요
		HotelDTO hotelDTO = hs.getSellerInfo(hotelName);
		mav.addObject("hotelDTO", hotelDTO);
		
		String[] data = indata.split(" to");

		String dateStart = data[0];
		String dateEnd = data[1];

		
		map.put("dateStart", dateStart);
		map.put("dateEnd", dateEnd);
		System.out.println("체크인 : " + dateStart);
		System.out.println("체크아웃 : " + dateEnd);
		String strFormat = "yyyy-MM-dd";

		SimpleDateFormat sdf = new SimpleDateFormat(strFormat);
		Date startDate = sdf.parse(dateStart);
		Date endDate = sdf.parse(dateEnd);

		long day = (endDate.getTime() - startDate.getTime()) / (24 * 60 * 60 * 1000);
		System.out.println("몇박인지 ? " + day);
		
		int result = 0;
		List<CalendarDTO> roomList =  cs.getOneRoom(map);
		for(int i = 0; i < roomList.size(); i++) {
			System.out.println("roomList : " + roomList.get(i).getCalendar_price());
			result += roomList.get(i).getCalendar_price();
		}
		System.out.println("총 값 : " + result);
		
		map.put("roomList", roomList.get(0));
		map.put("dayStart", dateStart); // 날짜 몇일 부터 몇일 까지 인지
		map.put("dayEnd", dateEnd);
		map.put("fewDay", day);
		map.put("indata", indata);
		map.put("result", result); // 총 결제 금액
		mav.addObject("map", map);
		return mav;
	}
		
	@PostMapping("payment/{indata}/{hotelName}/{roomType}/")
	public String payment(ReservationDTO rev, HttpSession session) throws FileNotFoundException {
		int row = res.insertReservation(rev);
		System.out.println("이멜 ㅣ  "  +rev.getAd_email());
		System.out.println(row);

//		// 예약정보가 insert되면 관리자에게 이메일보내기
		if(row == 1 ) {
			
			String check = mailService.reservationInfoCheck(rev.getAd_email(),session);
			System.out.println(check);
		}
		return "redirect:/";
	}
		
	
		

}
