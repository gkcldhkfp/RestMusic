package com.itwill.rest.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.service.SongService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/song")
public class SongController {
	
	private final SongService songService;
	@GetMapping("/detail")
	public String songDetail(@RequestParam(name = "songid")int id, Model model ) {
		log.debug("id={}",id);
		
		SongDetailDto data = songService.readDetail(id);
		
		model.addAttribute("songid",id);
		model.addAttribute("data", data);
		
		return "song/songDetail";
	}

}
