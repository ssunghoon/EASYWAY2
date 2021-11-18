package org.easyway.controller;

import org.easyway.domain.member.MemberVO;
import org.easyway.service.member.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {
	
	@Autowired
	private MemberServiceImpl service;
	
	@GetMapping("/login")
	public void login(){
		log.info("login................");
	}
	
	@GetMapping("/join")
	public void join(){
		log.info("join................");
	}
	
	@PostMapping("/join")
	public String join(MemberVO member, RedirectAttributes rttr){
		
		log.info(member);
		service.join(member);
		
		rttr.addFlashAttribute("memberInfo", member);
		return "redirect:/member/login";
	}
}
