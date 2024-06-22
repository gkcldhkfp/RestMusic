package com.itwill.rest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/song")
public class SongLikesController {
	// localhost:8080/song/popular => top30
	// localhost:8080/song/genre => 장르별 차트
	// localhost:8080/song/video => 뮤직비디오 차트
	
	
}
