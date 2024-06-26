package com.itwill.rest.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface SongChartDao {
	
	// 좋아요 개수 검사
	Integer countSongLikes(@Param("songId") Integer songId);
	
	// 좋아요 추가
	int insertSongLike(SongChart songChart);
	
	// 좋아요 삭제
	int deleteSongLike(SongChart songChart);
	
	// top30
	List<SongChart> topSongs();
	
	// 장르별 차트
	List<SongChart> selectSongsByGenre(String genre);


}

