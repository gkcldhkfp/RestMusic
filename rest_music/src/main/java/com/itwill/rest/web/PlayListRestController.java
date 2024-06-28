package com.itwill.rest.web;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.rest.repository.AlbumSongs;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;



@RestController
@Slf4j
@RequestMapping("/api/playList")
public class PlayListRestController {


	@GetMapping("/cPList")
	public ResponseEntity<List<AlbumSongs>> cPList(
		HttpSession session) {
			
			List<AlbumSongs> list = (List<AlbumSongs>) session.getAttribute("cPList");
			log.debug("list={}", list);
		return ResponseEntity.ok(list);
	}
	
	
}

