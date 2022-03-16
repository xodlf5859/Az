package com.az.apply.service;

import java.util.List;

import com.az.apply.vo.ApplyVO;
import com.az.common.Criteria;

public interface ApplyService {

	//게시판 조회
	List<ApplyVO> selectApply(ApplyVO applyVO,Criteria cri) throws Exception;
	
	//총 글 갯수 확인
	int countApply() throws Exception;
	
	
	//상세보기 
	ApplyVO detailApply(int applyIdx) throws Exception;
	
	
	void insertApply(ApplyVO applyVO) throws Exception;

	//수정
	void updateApply(ApplyVO applyVO) throws Exception;
	
	//삭제
	void deleteApply(int ApplyIdx) throws Exception;

	//답변 상태 변경
	void updateState(List<Integer> applyList) throws Exception;


}
