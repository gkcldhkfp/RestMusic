package com.itwill.rest.repository;

import java.sql.Timestamp;
import java.util.List;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.playlists.PlayListNameUpdateDto;
import com.itwill.rest.dto.playlists.PlayListSongInfoDto;
import com.itwill.rest.dto.playlists.PlaylistFirstAlbumImgDto;

public interface PlayListDao {
	
	List<PlaylistFirstAlbumImgDto> allPlayListsByUserId(int id);

	int addSongToPlayList(AddSongToPlayListDto dto);
	
	int addPlayList(PlayList playList);
	
	int deleteByListId(Integer pListId);
	
	int deleteListSongsByListId(Integer pListId);
	
	List<PlayListSongInfoDto> getSongsByPlistId(Integer pListId);
	
	PlayList getPlayListInfoByListId(Integer pListId);
	
	int deleteListSongBySongId(Integer pListId, Integer songId, Timestamp createdTime);
	
	int updatePlayListNameByListId(PlayListNameUpdateDto dto);

	Integer checkSongInPlayList(AddSongToPlayListDto dto);

}
