package com.hotel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.member.Hash;
import com.hotel.member.MemberDAO;
import com.hotel.member.MemberDTO;

@Service
public class MemberService {
	
	@Autowired private MemberDAO dao;

	// 로그인
	public MemberDTO getMember(MemberDTO dto) {
		dto.setCu_pw(Hash.getHash(dto.getCu_pw()));
		return dao.selectMember(dto);
	}

	// 회원 정보 수정
	public int updateMember(MemberDTO dto) {
		return dao.updateOne(dto);
	}

	// 아이디 찾기
	public String getUserId(MemberDTO dto) {
		return dao.selectId(dto);
	}

	// 비번 변경 시 일치하는 계정 찾기
	public MemberDTO getUserPw(MemberDTO dto) {
		return dao.selectPw(dto);
	}

	// 회원가입 시 id중복체크
	public int getMember(String userid) {
		return dao.selectOne(userid);
	}

	// 회원가입
	public int insertMember(MemberDTO dto) {
		dto.setCu_pw(Hash.getHash(dto.getCu_pw()));
		return dao.insertMember(dto);
	}

	// 비밀번호 변경
	public int changePw(MemberDTO dto) {
		dto.setCu_pw(Hash.getHash(dto.getCu_pw()));
		return dao.updatePW(dto);
	}

}
