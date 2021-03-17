package com.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	// 메인페이지
	@GetMapping("")
	public String daliyMain() {
		return "daliyMain";
	}
	
	// 이미지 클릭시 해당 호텔
	@GetMapping("hotel")
	public void hotel () {}
	
	// 검색
	@GetMapping("search")
	public void search () {}
	
	// 로그인
	@GetMapping("login")
	public void login() {}
	
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
	@GetMapping("sellerInformation")
	public void sellerInformation() {}
	
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
	public void myPage() {}
	
	// 더보기 페이지
	@GetMapping("moreDetails")
	public void moreDetails() {}

}
