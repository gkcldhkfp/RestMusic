package com.itwill.rest.repository;

public interface ChartDao {
	
	// 좋아요 개수 검사
	Integer countLikes(Integer songId, Integer id);
	void insertLikes(int songId, int userId);
	void deleteLikes(int songId, int userId);
}
