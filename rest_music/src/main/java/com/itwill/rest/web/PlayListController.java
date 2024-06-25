package com.itwill.rest.web;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.repository.PlayList;
import com.itwill.rest.service.PlayListService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class PlayListController {

	private final PlayListService playListService;
	
	@GetMapping("/getPlayList/{id}")
	@ResponseBody
	public ResponseEntity<List<PlayList>> getPlayList(@PathVariable int id) {
		log.debug("getPlayList({})",id);
		
		List<PlayList> result = playListService.getPlayListByUserId(id);
		
		return ResponseEntity.ok(result);
	}
	
	@PostMapping("/addSongToPlayList")
	@ResponseBody
	public ResponseEntity<Integer> addSongToPlayList(@RequestBody AddSongToPlayListDto dto) {
		log.debug("addPlayList({})",dto);
		
		int result = playListService.songAddToPlayList(dto);
		
		
		return ResponseEntity.ok(result);
	}
	
}
