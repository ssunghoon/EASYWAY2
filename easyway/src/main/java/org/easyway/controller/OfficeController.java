package org.easyway.controller;

import org.easyway.security.domain.CustomUser;
import org.easyway.service.office.OfficeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/office")
public class OfficeController {
	
	@Autowired
	private OfficeService service;
	
	@GetMapping("/list")
	public void list(Authentication auth, Model model){
		log.info(auth.getPrincipal());
		
		CustomUser member = (CustomUser)auth.getPrincipal();
		model.addAttribute("OfficeList", service.list(member.getMember().getMember_id()));
		log.info("ofiice list...............");
	}
	
	@PostMapping("/add")
	public void add(@RequestParam("officeName") String officeName){
		log.info(officeName);
		service.add(officeName);
	}
}
