package com.az.apply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.az.apply.dao.ApplyMapper;
import com.az.apply.vo.ApplyVO;
import com.az.common.Criteria;

@Service
public class ApplyServiceImpl implements ApplyService {


	@Autowired
	ApplyMapper applyMapper;

	@Override
	public void insertApply(ApplyVO applyVO) throws Exception {
		applyMapper.insertApply(applyVO);
	}

	@Override
	public List<ApplyVO> selectApply(ApplyVO applyVO,Criteria cri) throws Exception {

		return applyMapper.selectApply(applyVO,cri);
	}

	@Override
	public ApplyVO detailApply(int applyIdx) throws Exception {
		return applyMapper.detailApply(applyIdx);
	}

	@Override
	public void updateApply(ApplyVO applyVO) throws Exception {
		applyMapper.updateApply(applyVO);
	}

	@Override
	public void deleteApply(int ApplyIdx) throws Exception {
		applyMapper.deleteApply(ApplyIdx);
	}
	@Override
	public void updateState(List<Integer> applyList) throws Exception {
		applyMapper.updateState(applyList);
	}

	@Override
	public int countApply() throws Exception {
		return applyMapper.countApply();
	}

}
	