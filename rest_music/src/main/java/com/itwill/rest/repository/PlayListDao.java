package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.playlists.AddPlayListDto;

public interface PlayListDao {
	
	List<PlayList> AllPlayListsByUserId(int id);

	int addPlayList(AddPlayListDto dto);

}
