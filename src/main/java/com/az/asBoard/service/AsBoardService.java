package com.az.asBoard.service;

import java.util.List;

import com.az.asBoard.vo.AsBoardVO;

public interface AsBoardService {
	//게시판보기
	List<AsBoardVO> selectAsBoard(AsBoardVO asBoardVo);

	void writeAs(AsBoardVO asboardVo);

	List<AsBoardVO> asBoardDetail(AsBoardVO asBoardVo);

	void asUpdate(AsBoardVO asboardVo);

	void asBoardAnswer(AsBoardVO asBoardVo);
	


}
