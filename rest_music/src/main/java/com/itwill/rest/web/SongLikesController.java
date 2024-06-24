package com.itwill.rest.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.rest.service.SongLikesService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/chart")
public class SongLikesController {
	// localhost:8080/song/popular => top30
	// localhost:8080/song/genre => 장르별 차트
	// localhost:8080/song/video => 뮤직비디오 차트
//	chart/song_chart"
	
	private final SongLikesService songLikesService;

    @GetMapping("/song_chart")
    public String showPopularSongs(Model model) {
    	// top30 차트
     //   model.addAttribute("topSongs", songLikesService.getTop30Songs());
        return "./chart/popular";
    }

    @GetMapping("/genre_chart")
    public String showGenreSongs(Model model) {
        // 장르별 차트
        return "./chart/genreChart";
    }

    @GetMapping("/mv_chart")
    public String showVideoSongs(Model model) {
        // 뮤직비디오 차트
        return "./chart/video";
    }
}
	

