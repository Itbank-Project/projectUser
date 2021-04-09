package com.hotel.calendar;

import java.util.HashMap;
import java.util.List;

public interface CalendarDAO {
	
	
	// 제일 싼 방가격
	String selectRoomPrice(HashMap<String, Object> map);
	
	// 달력 테이블에서 방 리스트 가져오기
	List<CalendarDTO> selectRoomList(HashMap<String, Object> map);

	List<CalendarDTO> getOneRoom(HashMap<String, Object> map);

	// 객실 이미지
	List<CalendarDTO> getIMG(String hotelName);


}
