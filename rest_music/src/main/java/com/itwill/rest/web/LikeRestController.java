package com.itwill.rest.web;

import java.util.List;

import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.DeleteMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.rest.dto.song.AddSongLikeDto;
import com.itwill.rest.repository.SongChart;
import com.itwill.rest.service.SongChartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api")

public class LikeRestController {

	private final SongChartService songChartService;

	// 좋아요 추가
	@PostMapping("/addLike")
	public ResponseEntity<Integer> addSongLike(@RequestBody AddSongLikeDto dto) {
		songChartService.addSongLike(dto);
		int likesCount = songChartService.countSongLikes(dto.getSongId()); // 최신 좋아요 개수 반환
		return ResponseEntity.ok(likesCount);

//    	return ResponseEntity.ok(result);
	}

	// 좋아요 취소
	@DeleteMapping("/cancelLike/{songId}")
	public ResponseEntity<Integer> deleteSongLike(@PathVariable("songId") int songId, @RequestParam("id") int id) {
		SongChart songLikes = SongChart.builder().songId(songId).id(id).build();
		songChartService.cancelSongLike(songLikes);
		int likesCount = songChartService.countSongLikes(songId); // 최신 좋아요 개수 반환
		return ResponseEntity.ok(likesCount);
//    	return ResponseEntity.ok(result);
	}

}
