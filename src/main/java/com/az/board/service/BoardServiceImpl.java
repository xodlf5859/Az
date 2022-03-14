package com.az.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.az.board.dao.BoardMapper;
import com.az.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> selectBoard(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return boardMapper.selectBoard(boardVO);
	}

}
