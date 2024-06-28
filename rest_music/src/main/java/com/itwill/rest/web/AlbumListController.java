package com.itwill.rest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.rest.repository.Album;
import com.itwill.rest.service.AlbumService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/album")
public class AlbumListController {
	private final AlbumService albumService;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.debug("albumservice({})", albumService);
		
		// 서비스 메서드 호출
		List<Album> list = albumService.read();
		log.debug("list={}",list);
		model.addAttribute("albumList", list);
	}
	
	@PostMapping("/like")
    @ResponseBody
    public String likeAlbum(@RequestParam Integer albumId) {
        albumService.incrementLikes(albumId);
        return "success";
    }
	
	
	
	
	
}
