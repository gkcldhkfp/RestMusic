package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.album.AlbumLikeDto;
import com.itwill.rest.repository.AlbumSongs;
import com.itwill.rest.repository.AlbumSongsDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class AlbumSongsService {
	private final AlbumSongsDao albumSongsDao;

	// 앨범의 수록곡 정보를 가져오는 리스트
	public List<AlbumSongs> selectByAlbumId(Integer albumId) {
		log.debug("selectByAlbumId(albumId = {})", albumId);
		return albumSongsDao.selectByAlbumId(albumId);
	}

	// 앨범 객체(타이틀곡 포함)를 리턴하는 메서드
	public AlbumSongs selectAlbumByAlbumId(Integer albumId) {
		log.debug("selectAlbumByAlbumId(albumId = {})", albumId);
		return albumSongsDao.selectAlbumByAlbumId(albumId);
	}

	// 앨범의 수록곡 개수를 가져오는 서비스메서드
	public Integer selectAlbumSongsCount(Integer albumId) {
		log.debug("selectAlbumSongsCount(albumId={})", albumId);
		return albumSongsDao.selectAlbumSongsCount(albumId);
	}

	// 음악의 정보를 음악 아이디로 가져오는 메서드
	public AlbumSongs selectSongBySongId(Integer songId) {
		log.debug("selectSongBySongId()");
		return albumSongsDao.selectSongBySongId(songId);
	}

	// 음악의 좋아요 개수를 리턴하는 메서드
	public Integer songLikesCount(Integer songId) {
		log.debug("songId={}", songId);
		return albumSongsDao.songLikesCount(songId);
	}

	// 앨범의 좋아요 개수를 리턴하는 메서드
	public Integer albumLikesCount(Integer albumId) {
		log.debug("albumId = {}", albumId);
		return albumSongsDao.albumLikesCount(albumId);
	}

	public boolean isAlbumLikes(AlbumLikeDto dto) {

		int result = albumSongsDao.isAlbumLikes(dto);

		if (result == 0) {
			return true; // 좋아요가 없을경우 생성 후 true 반환
		} else {
			return false; // 좋아요가 있을경우 삭제 후 false 반환
		}

	}

	// 좋아요를 눌렀을 때 실행하는 메서드
	public boolean albumLikes(AlbumLikeDto dto) {
		log.debug("serviceLikes{}", dto);
		int result = albumSongsDao.isAlbumLikes(dto);
		log.debug("dto={}", dto);

		if (result == 0) {
			albumSongsDao.addAlbumLike(dto);
			return true; // 좋아요가 없을경우 생성 후 true 반환
		} else {
			albumSongsDao.removeAlbumLike(dto);
			return false; // 좋아요가 있을경우 삭제 후 false 반환
		}

	}

	// 특정 사용자가 특정 노래를 좋아요 했는지 여부 확인
	public boolean isUserLikedAlbum(AlbumLikeDto dto) {
		log.debug("isUserLikedSong({})", dto);

		int result = albumSongsDao.isAlbumLikes(dto);

		// 결과를 boolean으로 변환하여 반환
		return result > 0;
	}

	// 좋아요 추가
	public int addSongLike(AlbumLikeDto dto) {
		log.debug("addSongLike({})", dto);

		int result = albumSongsDao.addAlbumLike(dto);
		return result;

	}

	// 좋아요 취소
	public int cancelAlbumLike(AlbumLikeDto dto) {
		log.debug("cancelAlbumLike({})", dto);

		int result = albumSongsDao.removeAlbumLike(dto);
		return result;

	}
}
