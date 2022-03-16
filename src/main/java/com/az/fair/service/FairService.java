package com.az.fair.service;

import java.util.List;

import com.az.board.vo.BoardVO;
import com.az.fair.vo.FairVO;

public interface FairService {

	
	//게시글 검색
	List<FairVO> selectFair(FairVO fairVO) throws Exception;

	//등록
	void insertFair(FairVO fairVO) throws Exception;

	//수정
	void updateFair(FairVO fairVO) throws Exception;
	
}
