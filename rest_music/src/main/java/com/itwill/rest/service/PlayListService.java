package com.itwill.rest.service;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.playlists.AddPlayListDto;
import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.playlists.PlayListNameUpdateDto;
import com.itwill.rest.dto.playlists.PlayListSongInfoDto;
import com.itwill.rest.dto.playlists.PlaylistFirstAlbumImgDto;
import com.itwill.rest.repository.PlayList;
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
	
	public List<PlayListSongInfoDto> getSongsByPlistId(int pListId) {
		return playListDao.getSongsByPlistId(pListId);
	}
	
	public PlayList getPlayListInfoByListId(int pListId) {
		return playListDao.getPlayListInfoByListId(pListId);
	}

	public int songAddToPlayList(AddSongToPlayListDto dto) {
		log.debug("service{}",dto);
		
	int result = playListDao.addSongToPlayListDto(dto);
		
		return result;
	}
	
	public int addPlayList(AddPlayListDto dto) {
		log.debug("service{}",dto);
		
		int result = playListDao.addPlayList(dto.toEntity());
		
		return result;
	}
	
	public int deleteByListId(Integer pListId) {
		log.debug("deleteByListId(ListId={})");
		
		int rows = playListDao.deleteListSongsByListId(pListId);
		log.debug("삭제된 리스트 음악 개수 = {}", rows);
		
		int result = playListDao.deleteByListId(pListId);
		
		return result;
	}
	
	public int deleteListSongsBySongId(Integer pListId, Integer songId, Timestamp createdTime) {
		log.debug("deleteByListId(ListId={})");
		log.debug("deleteByListId(songId={})");
		int result = playListDao.deleteListSongBySongId(pListId, songId, createdTime);
		
		return result;
	}
	
	public int updatePlayListNameByListId(PlayListNameUpdateDto dto) {
		int result = playListDao.updatePlayListNameByListId(dto);
		
		return result;
	}

}
