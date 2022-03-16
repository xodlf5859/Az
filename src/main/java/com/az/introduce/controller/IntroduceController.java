package com.az.introduce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/introduce")
public class IntroduceController {

	@RequestMapping("/company")
	public String CompanyIntroduce() throws Exception{
		return "introduce/CompanyIntroduce";
	}

}
