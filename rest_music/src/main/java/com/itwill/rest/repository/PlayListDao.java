package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.playlists.PlaylistFirstAlbumImgDto;

public interface PlayListDao {
	
	List<PlaylistFirstAlbumImgDto> allPlayListsByUserId(int id);

	int addSongToPlayList(AddSongToPlayListDto dto);

	Integer checkSongInPlayList(AddSongToPlayListDto dto);

}
