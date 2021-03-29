package com.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.hotel.HotelDAO;
import com.hotel.hotel.HotelDTO;

@Service
public class HotelService {

	@Autowired private HotelDAO dao;
	
	public List<HotelDTO> getHotelList() {
		return dao.selectList();
	}

	public HotelDTO getOneHotel(String hotelName) {
		return dao.selectOne(hotelName);
	}

	public HotelDTO getSellerInfo(String hotelName) {
		return dao.selectSellerInfo(hotelName);
	}
	
	public HotelDTO getHotelAddress(String hotelName) {
		return dao.selectHotelAddress(hotelName);
	}

}
