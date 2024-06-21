package com.itwill.rest.service;

import org.springframework.stereotype.Service;

import com.itwill.rest.repository.Likes;
import com.itwill.rest.repository.LikesDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class LikesService {
	private final LikesDao likesDao;

	public int countLikes(Integer songId, Integer id) {
		return likesDao.countLikes(songId, id);

	}

	public boolean insertLike(Integer songId, Integer id) {
		Likes like = Likes.builder().songId(songId).id(id).build();
		int result = likesDao.insertLikes(like);
		return result > 0;

	}

	public boolean deleteLike(Integer songId, Integer id) {
		int result = likesDao.deleteLikes(songId, id);
		return result > 0;

	}

}
