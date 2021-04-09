package com.hotel.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hotel.calendar.CalendarDAO;
import com.hotel.calendar.CalendarDTO;

@Service
public class CalendarService {

	
	@Autowired private CalendarDAO dao;
	
	// 방가격 제일 싼거 가져오기
	public String getRoomPrice(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.selectRoomPrice(map);
	}

	// 방 리스트 달력에서 가져오기
	public List<CalendarDTO> getRoomList(HashMap<String, Object> map) {
	
		return dao.selectRoomList(map);
	}
	
	// 선택한 방의 정보 가져오기
	public List<CalendarDTO> getOneRoom(HashMap<String, Object> map) {

		return dao.getOneRoom(map);
	}
	
	// 객실 이미지
	public List<CalendarDTO> getRoomIMG(String hotelName) {
		return dao.getIMG(hotelName);
	}



	
	
	
	
}
