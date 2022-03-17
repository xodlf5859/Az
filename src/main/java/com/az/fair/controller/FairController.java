package com.az.fair.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.az.fair.service.FairService;
import com.az.fair.vo.FairVO;

@Controller
@RequestMapping("/fair")
public class FairController {

	@Autowired
	FairService fairService;
	
	//조회 
	@GetMapping("/list")
	public ModelAndView selectFair(FairVO fairVO, ModelAndView mnv) throws Exception{
		
		mnv.setViewName("fair/Fair");
		
		List<FairVO> fairList = fairService.selectFair(fairVO);
		
		mnv.addObject("fairList", fairList);
		
		return mnv;
	}
	@RequestMapping("/regist")
	public String fairRegistForm() throws Exception{
		return "fair/FairRegist";
	}
	
//	@PostMapping("/list")
//	@ResponseBody
//	public void insertFair(	@RequestParam("uploadFile") MultipartFile[] uploadFile, Model model) throws Exception{
//		
//		
//		System.out.println(uploadFile);
//		
//		
////		fairService.insertFair(fairVO);
//	}
	
	@PostMapping("/list")
	public String saveFile(
//			@RequestParam("boardTitle") String boardTitle,
//							@RequestParam("boardContent") String boardContent,
							@RequestParam MultipartFile file,
							HttpServletRequest req) throws IOException{
		
		System.out.println(file);
		
		return "fair/Fair";
	}
	
}
