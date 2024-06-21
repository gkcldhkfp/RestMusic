package com.itwill.rest.repository;

import com.itwill.rest.dto.song.SongDetailDto;

public interface SongDao {

	SongDetailDto detailBySongId(int id);
}
