package com.az.file.service;

import com.az.file.vo.FileVO;

public interface FileService {

	//파일등록
	void insertFile(FileVO fileVO) throws Exception;
	
	//board_idx조회
	int autoIncrementValue() throws Exception;
}
