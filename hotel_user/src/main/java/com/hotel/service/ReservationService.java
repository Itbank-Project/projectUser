package com.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.reservation.ReservationDAO;
import com.hotel.reservation.ReservationDTO;

@Service
public class ReservationService {

	@Autowired private ReservationDAO dao;
	
	public int insertReservation(ReservationDTO rev) {	
		return dao.insertReservation(rev);
	}
	
	// 로그인한 고객의 예약정보 불러오기
	public List<ReservationDTO> getReservationInfo(String userid) {
		return dao.selectReservationInfo(userid);
	}
	
	
	//예약 취소
	public int updateCancel(ReservationDTO dto) {
		
		return dao.updateCancel(dto);
	}
	
}
