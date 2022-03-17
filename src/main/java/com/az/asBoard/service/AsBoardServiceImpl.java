package com.az.asBoard.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.az.asBoard.dao.AsBoardMapper;
import com.az.asBoard.vo.AsBoardVO;
import com.az.paging.Criteria;

@Service
public class AsBoardServiceImpl implements AsBoardService {

	@Autowired
	AsBoardMapper asBoardDAO;
	
	//게시판보기
	@Override
	public List<AsBoardVO> selectAsBoard(AsBoardVO asBoardVo) {
		return asBoardDAO.selectAsBoard(asBoardVo);
	}

	@Override
	public void writeAs(AsBoardVO asBoardVo) {
		asBoardDAO.writeAs(asBoardVo);
	}

	@Override
	public List<AsBoardVO> asBoardDetail(AsBoardVO asBoardVo) {
		return asBoardDAO.asBoardDetail(asBoardVo);
	}

	@Override
	public void asUpdate(AsBoardVO asBoardVo) {
		asBoardDAO.asUpdate(asBoardVo);
	}

	@Override
	public void asBoardAnswer(AsBoardVO asBoardVo) {
		asBoardDAO.asBoardAnswer(asBoardVo);	
	}

	@Override
	public void asBoardDelete(AsBoardVO asBoardVo) {
		asBoardDAO.asBoardDelete(asBoardVo);
	}

	@Override
	public int listCountCriteria(Criteria cri) {
		return asBoardDAO.listCountCriteria(cri);
	}

	@Override
	public List<AsBoardVO> listCriteria(Criteria cri) {
		return asBoardDAO.listCriteria(cri);
	}

	@Override
	public void asCount(AsBoardVO asBoardVo) {
		asBoardDAO.asCount(asBoardVo);
	}

	@Override
	public List<AsBoardVO> realPass(AsBoardVO asBoardVo) {
		return asBoardDAO.realPass(asBoardVo);
	}


	
	
	
	
}
