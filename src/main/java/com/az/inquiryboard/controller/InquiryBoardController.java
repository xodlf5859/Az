package com.az.inquiryboard.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.az.inquiryboard.service.InquiryBoardService;
import com.az.inquiryboard.vo.InquiryVO;

@Controller
@RequestMapping("/inquiry")
public class InquiryBoardController {
	
	@Autowired
	private InquiryBoardService service;
	
	private final String MODULE = "inquiry";
	
	//리스트
	@GetMapping("/list.do")
	public String list(Model model) {
		model.addAttribute("list", service.list());
		return MODULE + "/list";
	}
	
	//상세보기
	@GetMapping("/view.do")
	public String view(int inquiry_idx, Model model) {
		
		InquiryVO vo = service.view(inquiry_idx);
		
		// 글 내용의 엔터를 <br>로 바꾸어야 보기를 할 때 줄바꿈이 된다.
		vo.setInquiry_content(vo.getInquiry_content().replaceAll("\n", "<br>"));
		
		model.addAttribute("vo", vo);
		return MODULE + "/view";
	}
	
	// 등록 폼
	@GetMapping("/write.do")
	public String writeForm() {
		return MODULE + "/write";
	}
	
	// 등록 처리
	@PostMapping("write.do")
	public String write(InquiryVO vo, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		// DB에 저장
		service.write(vo);
		// 처리 결과 메시지 저장
		rttr.addFlashAttribute("msg", "게시글이 등록 되었습니다.");
		
		return "redirect:list.do";
	}
	
	// 수정 폼
	@GetMapping("update.do")
	public String updateForm(int inquiry_idx, Model model) {
		
		model.addAttribute("vo", service.view(inquiry_idx));
		
		return MODULE + "/update";
	}
	
	// 수정 처리
	@PostMapping("/update.do")
	public String update(InquiryVO vo, RedirectAttributes rttr) {
		
		service.update(vo);
		rttr.addFlashAttribute("msg", "수정이 완료되었습니다.");
		return "redirect:view.do?inquiry_idx=" + vo.getInquiry_idx();
	}
	
	
	
	
}
