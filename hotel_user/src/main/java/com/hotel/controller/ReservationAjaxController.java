package com.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import com.hotel.reservation.ReservationDTO;
import com.hotel.service.ReservationService;

@RestController
public class ReservationAjaxController {

	@Autowired private ReservationService rs;
	
	@PostMapping(value="myPage/{id}/", consumes = "application/json;charset=utf8" )
	public int myPage(@PathVariable int id) {
		
		ReservationDTO dto = new ReservationDTO();
		dto.setRe_idx(id);
		int row = rs.updateCancel(dto);
			
		System.out.println("취소여부 컨트롤 : " + row);
		return row;
	}
	
	
}
