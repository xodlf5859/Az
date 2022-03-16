package com.az.apply.service;

import java.util.List;

import com.az.apply.vo.ApplyVO;

public interface ApplyService {

	List<ApplyVO> selectApply(ApplyVO applyVO) throws Exception;
	
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
