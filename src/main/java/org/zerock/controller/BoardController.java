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
import org.zerock.domain.Criteria;
import org.zerock.domain.pageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
@Log4j
public class BoardController {

	@Setter(onMethod_ =@Autowired )
	private BoardService boardService;
	
	@GetMapping("/list")
	public void list(Model model, Criteria criteria) {
		
		int total = boardService.total();
		
		model.addAttribute("list",boardService.list(criteria));
		model.addAttribute("pagemaker",new pageDTO(criteria, total));
	}
	
	@GetMapping("/insert")
	public void insert() {
	}
	
	@PostMapping("/insert")
	public String insert(BoardVo boardVo ,Criteria criteria) {
		boardService.insert(boardVo);
		
		return "redirect:/board/list";
	}
	
	@GetMapping({"/get","/update"})
	public void get(Long bno,Model model,Criteria criteria) {
		model.addAttribute("b",boardService.get(bno));
	}
	
	@PostMapping("/delete")
	public String delete(Long bno ,Criteria criteria) {
		boardService.delete(bno);
		
		return "redirect:/board/list?pagenum="+criteria.getPagenum()+"&amount="+criteria.getAmount();
	}
	
	@PostMapping("/update")
	public String update(BoardVo boardVo,Criteria criteria , RedirectAttributes rttr) {
		boardService.update(boardVo);
		
		return "redirect:/board/list?pagenum="+criteria.getPagenum()+"&amount="+criteria.getAmount();
	}
	
}
