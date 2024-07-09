package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.artist.ArtistAlbumDto;
import com.itwill.rest.dto.artist.ArtistSongDto;

public interface ArtistDao {
	
	Artist selectByArtistId(Integer artistId);
	List<ArtistSongDto> selectSongsByArtistId(Integer artistId);
	List<ArtistAlbumDto> selectAlbumsByArtistId(Integer artistId);

}
