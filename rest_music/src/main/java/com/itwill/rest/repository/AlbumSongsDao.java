package com.itwill.rest.repository;

import java.util.List;

public interface AlbumSongsDao {
	List<AlbumSongs> selectByAlbumId(Integer albumId);

	AlbumSongs selectAlbumByAlbumId(Integer albumId);

	Integer selectAlbumSongsCount(Integer albumId);

	AlbumSongs selectSongBySongId(Integer songId);

	Integer songLikesCount(Integer songId);
}
