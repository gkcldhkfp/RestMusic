package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.dto.song.SongLikeDto;
import com.itwill.rest.dto.song.SongSearchDto;
import com.itwill.rest.dto.song.SearchResultDto;

public interface SongDao {

	SongDetailDto detailBySongId(int id);

	Integer isLikes(SongLikeDto dto);

	int addLike(SongLikeDto dto);
	
	int removeLike(SongLikeDto dto);
	
	int addPlayList(AddSongToPlayListDto dto);
	
	List<SearchResultDto> searchSongs (SongSearchDto dto);
}
