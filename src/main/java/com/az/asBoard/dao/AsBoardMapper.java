package com.az.asBoard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.az.asBoard.vo.AsBoardVO;

@Repository
@Mapper
public interface AsBoardMapper {
	//게시판보기
	List<AsBoardVO> selectAsBoard(AsBoardVO asBoardVo);

	void writeAs(AsBoardVO asboardVo);

	List<AsBoardVO> asBoardDetail(AsBoardVO asBoardVo);

	
}
