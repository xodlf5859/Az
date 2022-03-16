package com.az.fair.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.az.board.vo.BoardVO;
import com.az.fair.vo.FairVO;

@Mapper
public interface FairMapper {

	//게시글 검색
	List<BoardVO> selectFair(FairVO fairVO) throws Exception;
	
	//등록
	void insertFair(FairVO fairVO) throws Exception;
	
	//수정
	void updateFair(FairVO fairVO) throws Exception;
}