package com.itwill.rest.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwill.rest.dto.playlists.AddPlayListDto;

public interface SongChartDao {
	
	// 좋아요 개수 검사
	Integer countSongLikes(@Param("songId") Integer songId);
	
	// 좋아요 추가
	int insertSongLike(SongChart songChart);
	
	// 좋아요 삭제
	int deleteSongLike(@Param("songId") Integer songId, @Param("id") Integer id);
	
	// top 30, 전체 차트
	List<SongChart> getAllSongs();
	
	// 장르별 차트
	List<SongChart> getSongsByGenre(@Param("genre") String genre);
	
	// 플레이리스트에 곡 추가
    int addSongToPlaylist(AddPlayListDto dto);
    
    // 사용자 ID로 플레이리스트 조회
    // List<PlayList> getAllPlayListsById(@Param("id") Integer id);


}

