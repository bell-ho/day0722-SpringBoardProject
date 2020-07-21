package org.zerock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Conditional;
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
}
