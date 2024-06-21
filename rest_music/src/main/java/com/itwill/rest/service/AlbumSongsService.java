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

	public List<AlbumSongs> selectByAlbumId(Integer albumId) {
		log.debug("selectByAlbumId(albumId = {})", albumId);
		return albumSongsDao.selectByAlbumId(albumId);
	}

	public AlbumSongs selectAlbumByAlbumId(Integer albumId) {
		log.debug("selectAlbumByAlbumId(albumId = {})", albumId);
		return albumSongsDao.selectAlbumByAlbumId(albumId);
	}
}
