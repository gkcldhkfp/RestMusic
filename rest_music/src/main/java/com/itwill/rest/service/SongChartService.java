package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.song.AddSongLikeDto;
import com.itwill.rest.dto.song.PopularSongsDto;
import com.itwill.rest.repository.SongChart;
import com.itwill.rest.repository.SongChartDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class SongChartService {
	private final SongChartDao songChartDao;

	// 특정 곡의 좋아요 개수 확인
	public int countSongLikes(Integer songId) {
		int result = songChartDao.countSongLikes(songId);
		return result;

	}

	// 좋아요 추가
	public int addSongLike(AddSongLikeDto dto) {
		int result = songChartDao.insertSongLike(dto.toEntity());
		return result;

	}

	// 좋아요 취소
	public int cancelSongLike(SongChart songChart) {
		int result = songChartDao.deleteSongLike(songChart);
		return result;

	}
	
	// top30
    public List<PopularSongsDto> readTopSongs() {
    	List<SongChart> list = songChartDao.topSongs();
    	
        return list.stream().limit(30).map(PopularSongsDto::fromEntity).toList();
    }
       
    // 장르별 차트
    public List<PopularSongsDto> readSongsByGenre(String genre) {
    	List<SongChart> list = songChartDao.selectSongsByGenre(genre);
    	return list.stream().map(PopularSongsDto::fromEntity).toList();
    }

}
