package com.itwill.rest.repository;

public interface SongLikesDao {
	
	// 좋아요 개수 검사
	Integer countLikes(Integer songId, Integer id);
	
	// 좋아요 추가
	int insertLikes(SongLikes likes);
	
	// 좋아요 삭제
	int deleteLikes(Integer songId, Integer userId);
}
