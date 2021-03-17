package com.hotel.controller;

import java.io.FileNotFoundException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.hotel.service.MailService;
import com.hotel.service.MemberService;
import com.hotel.member.Hash;
import com.hotel.member.MemberDTO;

@RestController
public class MemberAjaxController {

	@Autowired private MemberService ms;
	@Autowired private MailService mailService;
	
	// 로그인
	@PostMapping(value = "login", produces = "application/json;charset=utf8")
	public String login(@RequestBody MemberDTO dto , HttpSession session) {
		System.out.println(dto.getCu_id());
		System.out.println(dto.getCu_pw());
		MemberDTO login = ms.getMember(dto);
		session.setAttribute("login", login);
		System.out.println(login);
		return login != null ? "로그인" : "가입하지 않은 아이디이거나, 잘못된 비밀번호입니다." ;
	}
	
	// 회원 정보 수정
	@PutMapping(value = "modify", consumes = "application/json;charset=utf8")
	public int modify(@RequestBody MemberDTO dto, HttpSession session) {
		int row = ms.updateMember(dto);
		
		// 수정하고 login세션 불러와서 변경내용 다시 세션에 저장하기
		MemberDTO login  =  (MemberDTO) session.getAttribute("login");
		
		login.setCu_name(dto.getCu_name());
		login.setCu_email(dto.getCu_email());
		login.setCu_pnum(dto.getCu_pnum());
		
		session.removeAttribute("login");
		session.setAttribute("login", login);
		
		return row;
	}
	
	// 아이디 찾기
	@PostMapping(value = "findId", produces = "application/text;charset=utf8")
	public String findId(@RequestBody MemberDTO dto) {
		String userid = ms.getUserId(dto);
		return userid != null ? userid : "일치하는 정보가 없습니다.";  
	}
	
	// 비번 찾기
	@PostMapping(value = "sendMail", produces = "application/text;charset=utf8")
	public String findPw(@RequestBody MemberDTO dto,HttpSession session) throws FileNotFoundException {
		MemberDTO user = ms.getUserPw(dto);
		String email = dto.getCu_email();
		
		if(user != null	) {
			String userid = user.getCu_id();
			mailService.authMail(email,session);
			System.out.println("userid : " + userid);
			return userid;
		}
		else {
			return "일치하는 계정이 없습니다";
		}
	}
	
	// 입력한 인증번호 전송한 인증번호와 일치하는지 확인
	@GetMapping("authCheck/{authNumber}/")
	public String authCheck(@PathVariable String authNumber, HttpSession session) {
		String hashNumber = (String) session.getAttribute("hashNumber");
		boolean flag = hashNumber.equals(Hash.getHash(authNumber));
		return Boolean.toString(flag);
	}
	
	// 비밀번호 재설정
	@PutMapping(value = "changePW", consumes = "application/json;charset=utf8")
	public int changePW(@RequestBody MemberDTO dto) {
		int row = ms.changePw(dto);
		
		return row;
	}
	
	// 회원가입 시 이메일 인증
	@GetMapping(value="mailto/{mailAddress}/", produces="application/text;charset=utf8" )
	public String mailto(@PathVariable String mailAddress, HttpSession session) throws FileNotFoundException {
		System.out.println(mailAddress);
		return mailService.authMail(mailAddress, session);
		
	}
	
	// 회원가입 시 id중복체크
	@GetMapping(value="join/{userid}", produces="application/text;charset=utf8" )
	public String member(@PathVariable String userid) {
		int row = ms.getMember(userid);	
		String msg = row == 1 ? "이미 사용중인 ID입니다":"사용 가능한 ID입니다";
		return msg;
	}
	
	// 회원가입
	@PostMapping(value="join", consumes="application/json;charset=utf8" )
	public String join(@RequestBody MemberDTO dto) throws Exception{
		int row = ms.insertMember(dto);
		return row + "";
	}
	
	
	
	
	
	
	
}
