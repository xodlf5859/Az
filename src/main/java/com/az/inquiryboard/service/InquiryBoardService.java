package com.az.inquiryboard.service;

import java.util.List;

import com.az.inquiryboard.vo.InquiryVO;


public interface InquiryBoardService {
	
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
