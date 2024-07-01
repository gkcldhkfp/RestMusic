package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.playlists.PlaylistFirstAlbumImgDto;
import com.itwill.rest.repository.PlayListDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class PlayListService {
	
	private final PlayListDao playListDao;
	
	
	public List<PlaylistFirstAlbumImgDto> getPlayListByUserId(int id) {
		log.debug("getPlayListByUserId({})",id);
		
		List<PlaylistFirstAlbumImgDto> result = playListDao.allPlayListsByUserId(id);
		
		return result;
	}


	public int songAddToPlayList(AddSongToPlayListDto dto) {
		log.debug("service{}",dto);
		
		int result = playListDao.addSongToPlayListDto(dto);
		
		return result;
	}


	public Boolean checkSongInPlayList(AddSongToPlayListDto dto) {
		log.debug("checkSongInPlayList = ({})",dto);
		
		int result = playListDao.checkSongInPlayList(dto);
		
		if(result == 0 ) { 
			return true; // 플리의 해당 곡이 없다면 true 리턴
		} else {
			return false; // 플리의 해당 곡이 있다면 false 리턴
		}
		
	}


}
