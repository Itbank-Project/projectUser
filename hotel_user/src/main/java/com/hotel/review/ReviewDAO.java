package com.hotel.review;

import java.util.List;

public interface ReviewDAO {

	int insertReview(ReviewDTO dto);

	List<ReviewDTO> selectReview(String hotelName);

	int selectCount(String hotelName);
	
	// 리뷰 작성한 사람 있는지 찾기
	ReviewDTO selectOneReview(int review_re_idx);
}
