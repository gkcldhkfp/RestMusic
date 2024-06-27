package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.song.SearchResultDto;
import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.dto.song.SongLikeDto;
import com.itwill.rest.dto.song.SongSearchDto;
import com.itwill.rest.repository.SongDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class SongService {
	private final SongDao songDao;
	
	public SongDetailDto readDetail(int songId) {
		log.debug("id={}",songId);
		
		SongDetailDto dto = songDao.detailBySongId(songId);
		log.debug("dto={}",dto);
		
		return dto;
	}

	public boolean likes(SongLikeDto dto) {
		log.debug("serviceLikes{}",dto);
		int result = songDao.isLikes(dto);
		log.debug("dto={}",dto);
		
		if (result == 0) {
			songDao.addLike(dto);
			return true; // 좋아요가 없을경우 생성 후 true 반환
		} else {
			songDao.removeLike(dto);
			return false; // 좋아요가 있을경우 삭제 후 false 반환
			}
		
	}

	public boolean isLikes(SongLikeDto dto) {
		
		int result = songDao.isLikes(dto);
		
		if (result == 0) {
			return true; // 좋아요가 없을경우 생성 후 true 반환
		} else {
			return false; // 좋아요가 있을경우 삭제 후 false 반환
		}
		
	}
	
	public List<SearchResultDto> searchSongs(SongSearchDto dto) {
		
		List<SearchResultDto> result = songDao.searchSongs(dto);
		
		return result;
	}
	
	
}
