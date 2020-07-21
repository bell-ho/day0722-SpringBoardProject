package org.zerock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVo;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.Setter;

@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	@Setter(onMethod_ =@Autowired )
	private BoardService boardService;
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list",boardService.list());
	}
	
	@GetMapping("/insert")
	public void insert() {
	}
	
	@PostMapping("/insert")
	public String insert(BoardVo boardVo , RedirectAttributes rttr) {
		boardService.insert(boardVo);
		return "redirect:/board/list";
	}
	
	@GetMapping({"/get","/update"})
	public void get(Long bno,Model model) {
		model.addAttribute("b",boardService.get(bno));
	}
	
	@PostMapping("/delete")
	public String delete(Long bno) {
		boardService.delete(bno);
		return "redirect:/board/list";
	}
	
	@PostMapping("/update")
	public String update(BoardVo boardVo) {
		boardService.update(boardVo);
		return "redirect:/board/list";
	}
	
}
