package com.hotel.reply;

import java.util.HashMap;
import java.util.List;

public interface ReplyDAO {

	int insertReply(ReplyDTO dto);

	List<ReplyDTO> selectReplyList(HashMap<String, Object> map);
}
