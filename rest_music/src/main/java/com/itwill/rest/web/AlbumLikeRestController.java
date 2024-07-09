package com.itwill.rest.web;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.rest.dto.album.AlbumLikeDto;
import com.itwill.rest.service.AlbumSongsService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class AlbumLikeRestController {

	private final AlbumSongsService albumSongsService;

	// 특정 사용자가 특정 노래를 좋아요 했는지 여부 확인
	@PostMapping("/isAlbumLiked")
	public ResponseEntity<Boolean> isUserLikedSong(@RequestBody AlbumLikeDto dto) {
		log.debug("isUserLikedSong = {}", dto);

		boolean result = albumSongsService.isUserLikedAlbum(dto);
		return ResponseEntity.ok(result);
	}

	// 좋아요 추가
	@PostMapping("/addAlbumLike")
	public ResponseEntity<Integer> addSongLike(@RequestBody AlbumLikeDto dto) {
		log.debug("addSongLike({})", dto);

		albumSongsService.addSongLike(dto);
		Integer likesCount = albumSongsService.albumLikesCount(dto.getAlbumId()); // 최신 좋아요 개수 반환
		return ResponseEntity.ok(likesCount);

	}

	// 좋아요 취소
	@DeleteMapping("/cancelAlbumLike/{albumId}/{id}")
	public ResponseEntity<Integer> deleteSongLike(@PathVariable int albumId, @PathVariable int id) {
		log.debug("deleteSongLike(albumId={}, id={})", albumId, id);

		AlbumLikeDto dto = new AlbumLikeDto(albumId, id);

		albumSongsService.cancelAlbumLike(dto);
		int likesCount = albumSongsService.albumLikesCount(albumId); // 최신 좋아요 개수 반환
		return ResponseEntity.ok(likesCount);

	}

}
