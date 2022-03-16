package com.az.asBoard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.az.asBoard.dao.AsBoardMapper;
import com.az.asBoard.vo.AsBoardVO;

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
	public void writeAs(AsBoardVO asboardVo) {
		asBoardDAO.writeAs(asboardVo);
	}

	@Override
	public List<AsBoardVO> asBoardDetail(AsBoardVO asBoardVo) {
		return asBoardDAO.asBoardDetail(asBoardVo);
	}

	@Override
	public void asUpdate(AsBoardVO asboardVo) {
		asBoardDAO.asUpdate(asboardVo);
	}

	@Override
	public void asBoardAnswer(AsBoardVO asBoardVo) {
		asBoardDAO.asBoardAnswer(asBoardVo);	
	}
	
	
	
	
}
