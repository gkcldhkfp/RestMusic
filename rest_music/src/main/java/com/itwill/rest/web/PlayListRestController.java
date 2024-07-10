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
			//세션에서 리스트를 가져와 album_detail.js에 데이터를 전달하는 Rest 컨트롤러
			List<AlbumSongs> list = (List<AlbumSongs>) session.getAttribute("cPList");
			// 세션에서 리스트를 받아옴
			log.debug("list={}", list);
		return ResponseEntity.ok(list);
		// album_detail.js에서 axios로 사용하기 위해 전달.
	}
	
	
}

