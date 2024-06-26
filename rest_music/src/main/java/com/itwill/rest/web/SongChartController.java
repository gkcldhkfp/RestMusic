package com.itwill.rest.web;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.rest.dto.song.AddSongLikeDto;
import com.itwill.rest.dto.song.PopularSongsDto;
import com.itwill.rest.repository.SongChart;
import com.itwill.rest.service.SongChartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/song")

public class SongChartController {
	
	private final SongChartService songChartService;

	// top30 차트
    @GetMapping("/popular")
    public void showPopularSongs(Model model) {
    	List<PopularSongsDto> list = songChartService.readTopSongs();
		model.addAttribute("topSongs", list);
    }

    // 장르별 차트
    @GetMapping("/songsByGenre")
    public void showGenreSongs(Model model) {

    }

    // 뮤직비디오 차트
    @GetMapping("/songsByVideo")
    public void showVideoSongs(Model model) {
    	
    }
    
    // 좋아요 추가
    @PostMapping("/addLike") 
    @ResponseBody
    public ResponseEntity<Integer> addSongLike(@RequestBody AddSongLikeDto dto) {
    	int result = songChartService.addSongLike(dto);
    	
    	return ResponseEntity.ok(result);
    }
    
    // 좋아요 취소
    @DeleteMapping("/cancelLike/{songId}")
    @ResponseBody
    public ResponseEntity<Integer> deleteSongLike(@PathVariable int songId, @RequestParam int id) {
    	SongChart songLikes = SongChart.builder().songId(songId).id(id).build();
    	int result = songChartService.cancelSongLike(songLikes);
    	return ResponseEntity.ok(result);
    }
    
}


