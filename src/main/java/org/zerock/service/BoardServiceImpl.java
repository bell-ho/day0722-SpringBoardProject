package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVo;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.Setter;
import oracle.security.o3logon.b;

@Service
public class BoardServiceImpl implements BoardService {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Override
	public List<BoardVo> list(Criteria criteria) {
		// TODO Auto-generated method stub
		return boardMapper.list(criteria);
	}

	@Override
	public void insert(BoardVo boardVo) {
		// TODO Auto-generated method stub
		boardMapper.insert(boardVo);
	}

	@Override
	public BoardVo get(Long bno) {
		// TODO Auto-generated method stub
		return boardMapper.get(bno);
	}

	@Override
	public int delete(Long bno) {
		// TODO Auto-generated method stub
		return boardMapper.delete(bno);
	}

	@Override
	public boolean update(BoardVo boardVo) {
		// TODO Auto-generated method stub
		return boardMapper.update(boardVo)==1;
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		int total = boardMapper.total();
		return total;
	}

}
