package org.easyway.controller;

import org.easyway.domain.schedule.ScheduleVO;
import org.easyway.service.schedule.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/schedule/**")
@Log4j
public class ScheduleController {

	@Autowired
	private ScheduleService service;
	
	@GetMapping("/main")
	public void scheduleList(Model model){
		log.info("getMain..........");
		model.addAttribute("list", service.scheduleList());
	}
	
	
	/*@GetMapping("/register")
	public void register(){
		log.info("getRegister......");
	}*/
	@PostMapping("/register")
	public String register(ScheduleVO scheduleVO, RedirectAttributes rttr){
		log.info("register..........");
		log.info("postregister: " + scheduleVO);
		service.register(scheduleVO);
		rttr.addFlashAttribute("scheduleInfo", scheduleVO);
		
		return "redirect:/schedule/main";
	}
		
	
	
}
