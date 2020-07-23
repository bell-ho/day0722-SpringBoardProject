package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ReplyVo;
import org.zerock.mapper.ReplyMapper;

import lombok.Setter;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Setter(onMethod_ =@Autowired )
	private ReplyMapper replyMapper;
	
	@Override
	public int insert(ReplyVo replyVo) {
		// TODO Auto-generated method stub
		return replyMapper.insert(replyVo);
	}

	@Override
	public ReplyVo get(int rno) {
		// TODO Auto-generated method stub
		return replyMapper.get(rno);
	}

	@Override
	public int delete(int rno) {
		// TODO Auto-generated method stub
		return replyMapper.delete(rno);
	}

	@Override
	public int update(ReplyVo replyVo) {
		// TODO Auto-generated method stub
		return replyMapper.update(replyVo);
	}

	@Override
	public List<ReplyVo> list(Long bno) {
		// TODO Auto-generated method stub
		return replyMapper.list(bno);
	}

	
}
