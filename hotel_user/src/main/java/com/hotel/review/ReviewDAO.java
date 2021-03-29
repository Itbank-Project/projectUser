package com.hotel.review;

import java.util.List;

public interface ReviewDAO {

	int insertReview(ReviewDTO dto);

	List<ReviewDTO> selectReview(String hotelName);

	int selectCount(String hotelName);
}
