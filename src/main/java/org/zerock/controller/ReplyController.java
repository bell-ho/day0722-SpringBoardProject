package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.domain.ReplyVo;
import org.zerock.service.ReplyService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/reply/*")
public class ReplyController {

	@Setter(onMethod_ =@Autowired )
	private ReplyService replyService;
	
	@PostMapping("/insertReply")
	public String insert(ReplyVo replyVo) {
		Long bno = replyVo.getBno();
		
		replyService.insert(replyVo);
		return "redirect:/board/get?bno="+bno;
	}
	
	@PostMapping("/delete")
	public String delete(Long bno,int rno) {
		
		replyService.delete(rno);
		return "redirect:/board/get?bno="+bno;
	}
	
	@GetMapping("/replyUpdate")
	public String update(Model model , int rno) {
		model.addAttribute("reply",replyService.get(rno));
		return "/replyUpdate";
	}
	
	@PostMapping("/update")
	public String update(Long bno,ReplyVo replyVo) {
		replyService.update(replyVo);
		return "redirect:/board/get?bno="+bno;
	}
}
