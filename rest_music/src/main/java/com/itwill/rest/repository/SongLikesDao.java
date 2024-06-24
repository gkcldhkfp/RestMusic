package com.itwill.rest.repository;

import java.util.List;

public interface SongLikesDao {
	
	// 좋아요 개수 검사
	Integer countSongLikes(Integer songId);
	
	// 좋아요 추가
	int insertSongLikes(SongLikes likes);
	
	// 좋아요 삭제
	int deleteSongLikes(Integer songId);
	
	List<SongLikes> popularSongs();
}

