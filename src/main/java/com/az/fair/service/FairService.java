package com.az.fair.service;

import java.util.List;

import com.az.board.vo.BoardVO;
import com.az.common.Criteria;
import com.az.fair.vo.FairVO;

public interface FairService {

	
	//게시글 검색
	List<FairVO> selectFair(FairVO fairVO,Criteria cri) throws Exception;

	//총 글 갯수 확인
	int countFair() throws Exception;
	
	//상세보기
	FairVO detailFair(FairVO fairVO) throws Exception;

	//등록
	void insertFair(FairVO fairVO) throws Exception;

	//수정
	void updateFair(FairVO fairVO) throws Exception;
	
}
