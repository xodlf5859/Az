package com.az.cooperation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.az.asBoard.controller.AsBoardController;

@RestController
@RequestMapping("/cooper")
public class CooperationController {
	private static final Logger logger = LoggerFactory.getLogger(CooperationController.class);
	
//	@Autowired
//	AsBoardService asBoardService;
	
	
		@RequestMapping("/searchList")
		public ModelAndView write() {
			logger.info("협력사조회 접속");
			ModelAndView mav = new ModelAndView("/cooperation/sub-Cooperator");
			
			return mav;
		}
	
	
}
