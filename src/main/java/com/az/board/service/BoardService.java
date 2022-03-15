package com.az.board.service;

import java.util.List;

import com.az.board.vo.BoardVO;

public interface BoardService {

	
	//게시글 검색
	List<BoardVO> selectBoard(BoardVO boardVO) throws Exception;

	//등록
	void insertBoard(BoardVO boardVO) throws Exception;

	//수정
	void updateBoard(BoardVO boardVO) throws Exception;
	
}
