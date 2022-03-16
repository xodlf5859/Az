package com.az.apply.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.az.apply.service.ApplyService;
import com.az.apply.vo.ApplyVO;
import com.az.board.vo.BoardVO;

@Controller
@RequestMapping("/partner")
public class applyController {
	
	@Autowired
	ApplyService applyService;
	
	@GetMapping("/list")
	public ModelAndView selectPartner(ApplyVO applyVO,ModelAndView mnv) throws Exception{
		
		List<ApplyVO> selectList = applyService.selectApply(applyVO);
		
		System.out.println(selectList.get(0).getApplyRegdate());
		System.out.println(selectList.get(0).getApplyCompany());
		mnv.addObject("selectList",selectList);
		mnv.setViewName("partner/PartnerList");
		
		return mnv;
	}
	
	@RequestMapping("/regist")
	public String partnerRegistForm() throws Exception{
		return "partner/PartnerRegistForm";
	}
	
	
	@PostMapping("/list")
	@ResponseBody
	public void insertPartner(@RequestBody ApplyVO applyVO) throws Exception{
		
		applyService.insertApply(applyVO);
		
		System.out.println("insert test");
	}
	
	@GetMapping("/list/{applyIdx}")
	public ModelAndView detailPartner(ApplyVO applyVO, ModelAndView mnv, @PathVariable int applyIdx) throws Exception{
		
		applyVO = applyService.detailApply(applyIdx);
		
		mnv.setViewName("partner/PartnerDetail");
		mnv.addObject("applyVO", applyVO);
		
		return mnv;
	}
	
	@RequestMapping("/modify")
	public ModelAndView partnerModifyForm(int applyIdx, ModelAndView mnv) throws Exception{
		
		ApplyVO applyVO = applyService.detailApply(applyIdx);
		
		mnv.setViewName("partner/PartnerModifyForm");
		mnv.addObject("applyVO", applyVO);
		
		return mnv;
	}
	
	
	@PutMapping("/list")
	@ResponseBody
	public void updatePartner(@RequestBody ApplyVO applyVO) throws Exception{
		System.out.println("update");
		System.out.println(applyVO.getApplyManager());
		System.out.println(applyVO.getApplyIdx());
		
		applyService.updateApply(applyVO);
		
	}

	
	@DeleteMapping("/list")
	@ResponseBody
	public void deletePartner(@RequestBody ApplyVO applyVO) throws Exception{
		int applyIdx = applyVO.getApplyIdx();
		
		applyService.deleteApply(applyIdx);
	}
	
}
