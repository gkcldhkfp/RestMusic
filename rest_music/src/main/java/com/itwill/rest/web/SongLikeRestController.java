package com.itwill.rest.web;

import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.DeleteMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.rest.dto.song.SongLikeDto;
//import com.itwill.rest.dto.song.AddSongLikeDto;
//import com.itwill.rest.service.SongChartService;
import com.itwill.rest.service.SongService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api")

public class SongLikeRestController {

	private final SongService songService;

	// 특정 사용자가 특정 노래를 좋아요 했는지 여부 확인
	@PostMapping("/isLiked")
	public ResponseEntity<Boolean> isUserLikedSong(@RequestBody SongLikeDto dto) {
		log.debug("isUserLikedSong = {}", dto);

		boolean result = songService.isUserLikedSong(dto);
		return ResponseEntity.ok(result);

	}

	// 좋아요 추가
	@PostMapping("/addLike")
	public ResponseEntity<Integer> addSongLike(@RequestBody SongLikeDto dto) {
		log.debug("addSongLike({})", dto);

		songService.addSongLike(dto);
		int likesCount = songService.countSongLikes(dto.getSongId()); // 최신 좋아요 개수 반환
		return ResponseEntity.ok(likesCount);

	}

	// 좋아요 취소
	@DeleteMapping("/cancelLike/{songId}/{loginUserId}")
	public ResponseEntity<Integer> deleteSongLike(@PathVariable int songId, @PathVariable int loginUserId) {
		log.debug("deleteSongLike(songId={}, loginUserId={})", songId, loginUserId);
		
		// id 못찾으면 여기일 확률 높음!!
		SongLikeDto dto = new SongLikeDto(songId, loginUserId);

		songService.cancelSongLike(dto);
		int likesCount = songService.countSongLikes(songId); // 최신 좋아요 개수 반환
		return ResponseEntity.ok(likesCount);

	}

}
