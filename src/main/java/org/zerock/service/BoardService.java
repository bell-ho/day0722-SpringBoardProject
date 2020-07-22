package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVo;
import org.zerock.domain.Criteria;

public interface BoardService {

	public List<BoardVo>list(Criteria criteria);
	
	public void insert(BoardVo boardVo);
	
	public BoardVo get(Long bno);
	
	public int delete(Long bno);
	
	public boolean update(BoardVo boardVo);
	
	public int total();
}
