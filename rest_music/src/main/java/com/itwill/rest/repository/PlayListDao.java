package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;

public interface PlayListDao {
	
	List<PlayList> AllPlayListsByUserId(int id);

	int AddSongToPlayListDto(AddSongToPlayListDto dto);

}
