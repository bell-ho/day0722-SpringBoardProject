package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVo;

public interface BoardService {

	public List<BoardVo>list();
	
	public void insert(BoardVo boardVo);
}
