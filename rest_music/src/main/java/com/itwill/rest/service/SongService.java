package com.itwill.rest.service;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.repository.SongDao;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SongService {
	private final SongDao songDao;
	
	public SongDetailDto readDetail(int songId) {
		
		SongDetailDto dto = songDao.detailBySongId(songId);
		
		return dto;
	}

}
