package com.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.hotel.review.ReviewDTO;
import com.hotel.service.ReviewService;

@RestController
public class ReviewAjaxController {

	@Autowired private ReviewService reviewService;
	
	// 리뷰 작성 (insert)
	@PostMapping(value = "myPage", consumes = "application/json;charset=utf8")
	public int myPage(@RequestBody ReviewDTO dto) {
			int review_re_idx = dto.getReview_re_idx();
		System.out.println(review_re_idx);
		ReviewDTO review = reviewService.selectOneReview(review_re_idx);
		if(review != null) {
			System.out.println("리뷰가 들어 있다" + review);
			return -1;			
		} else {
			int row = reviewService.insertReview(dto);
			
			return row;
		}
	}
}
