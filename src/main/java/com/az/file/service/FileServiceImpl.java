package com.az.file.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.az.file.dao.FileMapper;
import com.az.file.vo.FileVO;

@Service
public class FileServiceImpl implements FileService{

	@Autowired
	FileMapper fileMapper;
	
	
	@Override
	public void insertFile(FileVO fileVO) throws Exception {

		fileMapper.insertFile(fileVO);
	}

	@Override
	public int autoIncrementValue() throws Exception {
		return fileMapper.autoIncrementValue();
		
	}

}
