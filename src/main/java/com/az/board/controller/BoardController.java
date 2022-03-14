package com.az.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.az.board.service.BoardService;
import com.az.board.vo.BoardVO;

@RequestMapping("/board")
@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	
	@RequestMapping("/select")
	public ModelAndView boardSelect(ModelAndView mnv,BoardVO boardVO) throws Exception{
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<BoardVO> boardList = boardService.selectBoard(boardVO);
		
		dataMap.put("boardList", boardList);
		
		mnv.setViewName("board/boardTest");
		mnv.addObject("dataMap",dataMap);
		
		return mnv;
	}
}
