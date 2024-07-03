package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.repository.PlayList;
import com.itwill.rest.repository.PlayListDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class PlayListService {
	
	private final PlayListDao playListDao;
	
	
	public List<PlayList> getPlayListByUserId(int id) {
		log.debug("getPlayListByUserId({})",id);
		
		List<PlayList> result = playListDao.AllPlayListsByUserId(id);
		
		return result;
	}


	public int songAddToPlayList(AddSongToPlayListDto dto) {
		log.debug("service{}",dto);
		
		int result = playListDao.addSongToPlayListDto(dto);
		
		return result;
	}


}
