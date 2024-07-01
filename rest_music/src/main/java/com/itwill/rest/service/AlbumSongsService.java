package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

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
}
