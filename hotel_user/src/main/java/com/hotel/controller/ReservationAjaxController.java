package com.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import com.hotel.reservation.ReservationDTO;
import com.hotel.review.ReviewDTO;
import com.hotel.service.ReservationService;
import com.hotel.service.ReviewService;

@RestController
public class ReservationAjaxController {

	@Autowired private ReservationService rs;
	@Autowired private ReviewService reviewService;
	
	@PostMapping(value="myPage/{id}/", consumes = "application/json;charset=utf8" )
	public int myPage(@PathVariable int id) {
		
		ReservationDTO dto = new ReservationDTO();
		dto.setRe_idx(id);
		int review_re_idx = id;
		ReviewDTO review = reviewService.selectOneReview(review_re_idx);		
		System.out.println(review);
		if(review != null) {
			System.out.println("이미 이용한 호텔");
			return -1;
		} else {
			int row = rs.updateCancel(dto);
			System.out.println("취소여부 컨트롤 : " + row);
			
			return row;
		}
			
		
		
		
		
	}
	
	
}
