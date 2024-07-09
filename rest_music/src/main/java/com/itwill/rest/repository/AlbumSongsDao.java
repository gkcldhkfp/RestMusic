package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.album.AlbumLikeDto;

public interface AlbumSongsDao {
	List<AlbumSongs> selectByAlbumId(Integer albumId);

	AlbumSongs selectAlbumByAlbumId(Integer albumId);

	Integer selectAlbumSongsCount(Integer albumId);

	AlbumSongs selectSongBySongId(Integer songId);

	Integer songLikesCount(Integer songId);

	Integer albumLikesCount(Integer albumId);

	Integer isAlbumLikes(AlbumLikeDto dto);

	Integer addAlbumLike(AlbumLikeDto dto);

	Integer removeAlbumLike(AlbumLikeDto dto);
}
