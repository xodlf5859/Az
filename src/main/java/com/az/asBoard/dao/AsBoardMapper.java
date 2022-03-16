package com.az.asBoard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.az.asBoard.vo.AsBoardVO;
import com.az.paging.Criteria;

@Repository
@Mapper
public interface AsBoardMapper {
	//게시판보기
	List<AsBoardVO> selectAsBoard(AsBoardVO asBoardVo);

	void writeAs(AsBoardVO asboardVo);

	List<AsBoardVO> asBoardDetail(AsBoardVO asBoardVo);

	void asUpdate(AsBoardVO asboardVo);

	void asBoardAnswer(AsBoardVO asBoardVo);

	void asBoardDelete(AsBoardVO asBoardVo);

	int getBoardCnt(AsBoardVO asBoardVo);

	int listCountCriteria(Criteria cri);

	List<AsBoardVO> listCriteria(Criteria cri);





	
}
