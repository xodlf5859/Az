package com.az.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.az.board.service.BoardService;
import com.az.board.vo.BoardVO;

@RequestMapping("/board")
@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@GetMapping("/select")
	@ResponseBody
	public ModelAndView selectBoard(BoardVO boardVO,ModelAndView mnv) throws Exception{
		List<BoardVO> selectList = boardService.selectBoard(boardVO);
		
		mnv.addObject("selectList", selectList);
		mnv.setViewName("board/select");
		
		System.out.println(selectList.get(0).getBoardIdx());
		return mnv;
	}
	
	
}
