package com.itwill.rest.service;

import org.springframework.stereotype.Service;

import com.itwill.rest.repository.SongLikes;
import com.itwill.rest.repository.SongLikesDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class SongLikesService {
	private final SongLikesDao songLikesDao;

	public int countLikes(Integer songId) {
		return songLikesDao.countSongLikes(songId);

	}

	public boolean insertLike(Integer songId, Integer id) {
		SongLikes like = SongLikes.builder().songId(songId).id(id).build();
		int result = songLikesDao.insertSongLikes(like);
		return result > 0;

	}

	public boolean deleteLike(Integer songId) {
		int result = songLikesDao.deleteSongLikes(songId);
		return result > 0;

	}

}
