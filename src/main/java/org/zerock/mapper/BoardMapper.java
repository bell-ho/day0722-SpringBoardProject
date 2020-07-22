package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVo;
import org.zerock.domain.Criteria;

public interface BoardMapper {

	public List<BoardVo>list(Criteria criteria);
	
	public void insert(BoardVo boardVo);
	
	public BoardVo get(Long bno);
	
	public int delete(Long bno);
	
	public int update(BoardVo boardVo);
	
	public int total();
}
