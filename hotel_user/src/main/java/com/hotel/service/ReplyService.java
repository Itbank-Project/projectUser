package com.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotel.reply.ReplyDAO;
import com.hotel.reply.ReplyDTO;

@Service
public class ReplyService {

	@Autowired private ReplyDAO dao;
	
	public int insertReply(ReplyDTO dto) {
		return dao.insertReply(dto);
	}

	public List<ReplyDTO> getReplyList(HashMap<String, Object> map) {
		return dao.selectReplyList(map);
	}
}
