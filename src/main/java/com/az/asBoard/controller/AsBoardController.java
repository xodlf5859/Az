package com.az.asBoard.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.az.asBoard.service.AsBoardService;
import com.az.asBoard.vo.AsBoardVO;
import com.az.paging.Criteria;
import com.az.paging.PageMaker;

@RestController
@RequestMapping("/asBoard")
public class AsBoardController {
	private static final Logger logger = LoggerFactory.getLogger(AsBoardController.class);
	
	@Autowired
	AsBoardService asBoardService;
	
	
	@RequestMapping("/security")
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView("/asBoard/password");
		
		return mav;
	}
	
//	//페이징처리한 글목록
//	@RequestMapping(value = "/listCri", method = RequestMethod.GET)
//	public void listCriGET(Criteria cri, Model model) throws Exception{
//		model.addAttribute("boardList", asBoardService.listCri(cri));
//	}
	
	
	
	//게시판
	@RequestMapping(value = "/as", method = RequestMethod.GET)
	public ModelAndView as(@ModelAttribute("cri") Criteria cri, Model model, AsBoardVO asBoardVo) {
		ModelAndView mav = new ModelAndView("/asBoard/as");
		logger.info("as게시판 입장");
		
//		List<AsBoardVO> asList = asBoardService.selectAsBoard(asBoardVo); 
//		logger.info(asBoardVo.toString());
//		logger.info("리스트 값 : "+asList);
		
		List<AsBoardVO> asList = asBoardService.listCriteria(cri); 
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(asBoardService.listCountCriteria(cri));
		
		mav.addObject("asList", asList);
		mav.addObject("pageMaker", pageMaker);
		return mav;
	}
	
	//글작성페이지
	@RequestMapping("/write")
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView("/asBoard/write");
		
		
		return mav;
	}
	
	//글쓰기
	@RequestMapping(value = "/writeAS", method = RequestMethod.POST)
	public ModelAndView writeAS(@ModelAttribute AsBoardVO asBoardVo) {
		ModelAndView mav = new ModelAndView("redirect:/asBoard/as");
		System.out.println(asBoardVo.toString());
		
		//데이터 잘 넘어옴submit으로
		//insert로직 넣으셈
		asBoardService.writeAs(asBoardVo);
		
		
		
	return mav;
	}
	
	
	//상세보기
	@RequestMapping(value = "/detail/{asIdx}", method = RequestMethod.GET)
	public ModelAndView boardDetail(@PathVariable("asIdx") int as_idx, Model model, AsBoardVO asBoardVo) {
		logger.info("boardDetail접속");
		ModelAndView mav = new ModelAndView("/asBoard/asdetail");
		logger.info("가져온 값 : "+as_idx);
		
		List<AsBoardVO> list = asBoardService.asBoardDetail(asBoardVo);
		mav.addObject("list", list);
		
//		List<FileVO> fileList = this.boardService.fileList(boardNum);
//		mav.addObject("fileList", fileList);
		
//		logger.info("list의 값 : "+list.toString());
//		logger.info("fileList의 값 : "+fileList.toString());
		
		return mav;
	}
	
	//수정페이지접속
	@RequestMapping(value = "/asUpdatePage", method = RequestMethod.POST)
	public ModelAndView asUpdatePage(@ModelAttribute AsBoardVO asBoardVo) {
		ModelAndView mav = new ModelAndView("/asBoard/updatePage");
		logger.info("업데이트 페이지");
		logger.info("가져온 데이터 : "+asBoardVo);
		List<AsBoardVO> list = asBoardService.asBoardDetail(asBoardVo);
		
		mav.addObject("list", list);
		
		return mav;
	}
	
	
	//수정 실행
	@RequestMapping(value = "/asUpdate", method = RequestMethod.POST)
	public ModelAndView asUpdate(@ModelAttribute AsBoardVO asBoardVo) {
		ModelAndView mav = new ModelAndView("redirect:/asBoard/as");
		logger.info("업데이트 실행");
		logger.info("업데이트에 가져온 데이터 : "+asBoardVo);
		asBoardService.asUpdate(asBoardVo);
		
		return mav;
	}
	
	//삭제(실질적으로는 없음 update)
	@RequestMapping(value = "/asDelete", method = RequestMethod.POST)
	public ModelAndView asDelete(@ModelAttribute AsBoardVO asBoardVo) {
		ModelAndView mav = new ModelAndView("redirect:/asBoard/as");
		
		logger.info("삭제진행");
		logger.info("가져온 숫자 : "+asBoardVo.getAsIdx());
		
		asBoardService.asBoardDelete(asBoardVo);
		
		return mav;
	}
	
	//답변완료
	@RequestMapping(value = "/asAnswer", method = RequestMethod.POST)
	public ModelAndView asAnswer(HttpServletRequest reauest, AsBoardVO asBoardVo) {
		ModelAndView mav = new ModelAndView("redirect:/asBoard/as");
		logger.info("답변진행");
		logger.info("가져온 숫자 : "+reauest.getParameterValues("asIdx")[0]);
		
		for (int i = 0; i < reauest.getParameterValues("asIdx").length; i++) {
			String number = reauest.getParameterValues("asIdx")[i];
			logger.info("답변진행"+number);
			asBoardVo.setAsIdx(Integer.parseInt(number));
			asBoardService.asBoardAnswer(asBoardVo);
		}
		
		return mav;
	}
	
}
