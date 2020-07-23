package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ReplyVo;

public interface ReplyMapper {
	
	public int insert(ReplyVo replyVo);
	
	public ReplyVo get(int rno);
	
	public int delete(int rno);
	
	public int update(ReplyVo replyVo);
	
	public List<ReplyVo>list(Long bno);
}
