package com.itwill.rest.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/song")
public class SongController {
	
	@GetMapping("/detail")
	public String songDetail(@RequestParam(name = "songId")int id, Model model ) {
		log.debug("id={}",id);
		model.addAttribute("songId",id);
		
		return "song/songDetail";
	}

}
