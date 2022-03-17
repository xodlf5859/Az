package com.az.asBoard.service;

import java.util.List;


import com.az.asBoard.vo.AsBoardVO;
import com.az.paging.Criteria;

public interface AsBoardService {
	//게시판보기
	List<AsBoardVO> selectAsBoard(AsBoardVO asBoardVo);

	void writeAs(AsBoardVO asBoardVo);

	List<AsBoardVO> asBoardDetail(AsBoardVO asBoardVo);

	void asUpdate(AsBoardVO asBoardVo);

	void asBoardAnswer(AsBoardVO asBoardVo);

	void asBoardDelete(AsBoardVO asBoardVo);

	int listCountCriteria(Criteria cri);

	List<AsBoardVO> listCriteria(Criteria cri);

	void asCount(AsBoardVO asBoardVo);


	List<AsBoardVO> realPass(AsBoardVO asBoardVo);




	


}
