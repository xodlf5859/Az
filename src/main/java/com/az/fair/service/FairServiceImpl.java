package com.az.fair.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.az.board.dao.BoardMapper;
import com.az.board.service.BoardService;
import com.az.board.vo.BoardVO;
import com.az.common.Criteria;
import com.az.fair.dao.FairMapper;
import com.az.fair.vo.FairVO;

@Service
public class FairServiceImpl implements FairService {

	@Autowired
	FairMapper fairMapper;

	@Override
	public List<FairVO> selectFair(FairVO fairVO,Criteria cri) throws Exception {
		return fairMapper.selectFair(fairVO,cri);
	}
	@Override
	public void insertFair(FairVO fairVO) throws Exception {

		fairMapper.insertFair(fairVO);
	}

	@Override
	public void updateFair(FairVO fairVO) throws Exception {
		// TODO Auto-generated method stub
		
	}
	@Override
	public int countFair() throws Exception {
		// TODO Auto-generated method stub
		return fairMapper.countFair();
	}

	


}
