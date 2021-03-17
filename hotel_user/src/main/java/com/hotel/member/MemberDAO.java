package com.hotel.member;

public interface MemberDAO {

	// 로그인
	MemberDTO selectMember(MemberDTO dto);

	// 회원정보 수정
	int updateOne(MemberDTO dto);

	// 아이디 찾기
	String selectId(MemberDTO dto);

	// 비밀번호 찾기 시 일치하는 계정 찾기
	MemberDTO selectPw(MemberDTO dto);

	// 비밀번호 변경
	int updatePW(MemberDTO dto);
	
	// 회원가입
	int insertMember(MemberDTO dto);

	// 회원가입시 id중복 체크
	int selectOne(String userid);

}
