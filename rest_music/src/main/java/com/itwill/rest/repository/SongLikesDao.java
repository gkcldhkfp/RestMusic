package com.itwill.rest.repository;

public interface SongLikesDao {
	
	// 좋아요 개수 검사
	Integer countSongLikes(Integer songId, Integer id);
	
	// 좋아요 추가
	int insertSongLikes(SongLikes likes);
	
	// 좋아요 삭제
	int deleteSongLikes(Integer songId, Integer userId);
}
