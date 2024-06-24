package com.itwill.rest.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.rest.dto.playlists.AddPlayListDto;
import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.dto.song.SongLikeDto;
import com.itwill.rest.service.SongService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/song")
public class SongController {
	
	private final SongService songService;
	@GetMapping("/detail")
	public String songDetail(@RequestParam(name = "songId")int id, Model model ) {
		log.debug("id={}",id);
		
		SongDetailDto data = songService.readDetail(id);
		
		model.addAttribute("songId",id);
		model.addAttribute("data", data);
		
		return "song/songDetail";
	}
	
	@PostMapping("/like")
	@ResponseBody
	public boolean songLikes(@RequestBody SongLikeDto dto) {
		
		log.debug("dto={}",dto);
		boolean result = songService.likes(dto);
		
		return result;
	}
	
	@PostMapping("/addPlayList")
	@ResponseBody
	public int addPlayList(@RequestBody AddPlayListDto dto) {
		log.debug("addPlayList({})",dto);
		
		int result = songService.addPlayList(dto);
		log.debug("result={}",result);
		
		return result;
	}

}
