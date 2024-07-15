package com.itwill.rest.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.song.SongChartDto;
import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.dto.song.SongLikeDto;
import com.itwill.rest.dto.song.SongSearchDto;
import com.itwill.rest.dto.song.SearchResultDto;

public interface SongDao {

	SongDetailDto detailBySongId(int id);

	Integer isLikes(SongLikeDto dto);

	int addLike(SongLikeDto dto);
	
	int removeLike(SongLikeDto dto);
	
	int addPlayList(AddSongToPlayListDto dto);
	
	List<SearchResultDto> searchSongs (SongSearchDto dto);

	// 좋아요 개수 검사
	Integer countSongLikes(Integer songId);

	// top 30
	List<SongChartDto> getAllSongs();

	// 장르별 차트
	List<SongChartDto> getSongsByGenre(String genreName);
	
	// 최신 음악
	List<SongChartDto> getNewestSongs();
	
	// 페이지와 페이지 크기를 이용해 노래 목록을 가져오는 메서드
	List<SongChartDto> findSongs(@Param("offset") int offset, @Param("end") int end);
	
	
}
