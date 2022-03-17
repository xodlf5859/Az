package com.az.file.dao;

import org.apache.ibatis.annotations.Mapper;

import com.az.file.vo.FileVO;

@Mapper
public interface FileMapper {

	//파일등록
	
	void insertFile(FileVO fileVO) throws Exception;
	
	//board_idx조회
	int autoIncrementValue() throws Exception;
}
