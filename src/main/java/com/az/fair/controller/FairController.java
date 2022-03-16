package com.az.fair.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.az.fair.service.FairService;
import com.az.fair.vo.FairVO;

@Controller
@RequestMapping("/fair")
public class FairController {

	@Autowired
	FairService fairService;
	
	@GetMapping("/list")
	public ModelAndView selectFair(FairVO fairVO, ModelAndView mnv) throws Exception{
		return mnv;
	}
}
