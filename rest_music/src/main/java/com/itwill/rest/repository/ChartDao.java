package com.itwill.rest.repository;

public interface ChartDao {
	
	// 좋아요 개수 검사
	Integer countLikes(Integer songId, Integer id);

//    void insertLike(@Param("songId") int songId, @Param("userId") int userId);
//
//    void deleteLike(@Param("songId") int songId, @Param("userId") int userId);
//
//    void incrementLikesCount(@Param("songId") int songId);
//
//    void decrementLikesCount(@Param("songId") int songId);
}
