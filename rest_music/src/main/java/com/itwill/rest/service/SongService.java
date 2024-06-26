package com.itwill.rest.service;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.playlists.AddPlayListDto;
import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.dto.song.SongLikeDto;
import com.itwill.rest.repository.SongDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class SongService {
	private final SongDao songDao;
	
	public SongDetailDto readDetail(int songId) {
		
		SongDetailDto dto = songDao.detailBySongId(songId);
		
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
	
	
}
