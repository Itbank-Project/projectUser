package com.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.review.ReviewDAO;
import com.hotel.review.ReviewDTO;

@Service
public class ReviewService {

	@Autowired private ReviewDAO dao;

	public int insertReview(ReviewDTO dto) {
		return dao.insertReview(dto);
	}
	
	public List<ReviewDTO> selectReview(String hotelName) {
		return dao.selectReview(hotelName);
	}

	public int selectCount(String hotelName) {
		return dao.selectCount(hotelName);
	}
	
	// 회원이 리뷰를 작성했으면 가지고 오기
	public ReviewDTO selectOneReview(int review_re_idx) {
		// TODO Auto-generated method stub
		return dao.selectOneReview(review_re_idx);
	}
}
