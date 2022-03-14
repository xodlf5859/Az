package com.az.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.az.board.vo.BoardVO;

@Mapper
public interface BoardMapper {

	//게시글 검색
	List<BoardVO> selectBoard(BoardVO boardVO) throws Exception;
	
	//등록
	void insertBoard(BoardVO boardVO) throws Exception;
}
