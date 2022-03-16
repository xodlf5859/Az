package com.az.inquiryboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.az.inquiryboard.dao.InquiryBoardMapper;
import com.az.inquiryboard.vo.InquiryVO;

@Service
public class InquiryBoardServiceImpl implements InquiryBoardService{

	@Autowired
	private InquiryBoardMapper mapper;
	
	@Override
	public List<InquiryVO> list(){
		
		return mapper.list();
	}

	@Override
	public InquiryVO view(int inquiry_idx) {
		// TODO Auto-generated method stub
		return mapper.view(inquiry_idx);
	}

	@Override
	public int write(InquiryVO vo) {
		// TODO Auto-generated method stub
		return mapper.write(vo);
	}

	@Override
	public int update(InquiryVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}

	@Override
	public int delete(InquiryVO vo) {
		// TODO Auto-generated method stub
		return mapper.delete(vo);
	}
	
}
