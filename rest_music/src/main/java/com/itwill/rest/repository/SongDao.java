package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.song.SongChartDto;
import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.dto.song.SongLikeDto;

public interface SongDao {

	SongDetailDto detailBySongId(int id);

	// 특정 회원이 특정 노래를 좋아요 했는지 여부 확인
	Integer isLikes(SongLikeDto dto);

	// 좋아요 추가
	int addLike(SongLikeDto dto);

	// 좋아요 삭제
	int removeLike(SongLikeDto dto);

	// 좋아요 개수 검사
	Integer countSongLikes(Integer songId);

	// top 30
	List<SongChartDto> getAllSongs();

	// 장르별 차트
	List<SongChartDto> getSongsByGenre(String genre);

}
