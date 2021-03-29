package com.hotel.hotel;

import java.util.List;

public interface HotelDAO {

	List<HotelDTO> selectList();

	HotelDTO selectOne(String hotelName);

	HotelDTO selectSellerInfo(String hotelName);
	
	HotelDTO selectHotelAddress(String hotelName);

}
