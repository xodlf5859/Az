package com.az.apply.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.az.apply.vo.ApplyVO;

@Mapper
public interface ApplyMapper {

	//협력업체 등록 게시글 조회
	List<ApplyVO> selectApply(ApplyVO applyVO) throws Exception;
	
	//상세보기 
	ApplyVO detailApply(int applyIdx) throws Exception;
	
	//협력업체 등록
	void insertApply(ApplyVO applyVO) throws Exception;
	
	//수정
	void updateApply(ApplyVO applyVO) throws Exception;
	
	//삭제
	void deleteApply(int ApplyIdx) throws Exception;
}
