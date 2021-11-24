package org.easyway.controller;

import org.easyway.domain.member.MemberVO;
import org.easyway.service.member.MemberServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
//	@PostMapping("/login")
//	@ResponseBody
//	public ResponseEntity<?> login(@RequestParam("member_email") String member_email, 
//						@RequestParam("member_pw") String member_pw)
//	{
//		log.info("login Post................");
//		MemberVO member = service.login(member_email, member_pw);
//		
//		if(member == null) {
//			return new ResponseEntity<>("fail", HttpStatus.FAILED_DEPENDENCY);
//		}
//		return new ResponseEntity<>(member, HttpStatus.OK);
//	}	
	
	@GetMapping("/join")
	public void join(){
		log.info("join................");
	}
	
	@PostMapping("/join")
	public String join(MemberVO member){
		log.info(member);
		service.join(member);
		return "redirect:/member/login";
	}
}
