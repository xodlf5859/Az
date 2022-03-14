package com.az.board.service;

import java.util.List;

import com.az.board.vo.BoardVO;

public interface BoardService {

	
	//게시글 검색
	List<BoardVO> selectBoard(BoardVO boardVO) throws Exception;
	
}
