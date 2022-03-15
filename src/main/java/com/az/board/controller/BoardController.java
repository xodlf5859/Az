package com.az.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
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
		
		return mnv;
	}
	
	@PostMapping("/select")
	@ResponseBody
	public void insertBoard(@RequestBody BoardVO boardVO) throws Exception{
		
		boardVO.setBoardWriter(1);
		
		System.out.println(boardVO.getBoardTitle());
		boardService.insertBoard(boardVO);
	}
	
	@PutMapping("/select")
	@ResponseBody
	public void updateBoard(@RequestBody BoardVO boardVO) throws Exception{
		boardService.updateBoard(boardVO);
	}
}
