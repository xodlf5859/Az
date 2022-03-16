package com.az.inquiryboard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.az.inquiryboard.vo.InquiryVO;

@Mapper
public interface InquiryBoardMapper {
	
	//리스트
	public List<InquiryVO> list();
	
	//보기
	public InquiryVO view(int inquiry_idx);
	
	//등록
	public int write(InquiryVO vo);
	
	//수정
	public int update(InquiryVO vo);
	
	//삭제
	public int delete(InquiryVO vo);
}
