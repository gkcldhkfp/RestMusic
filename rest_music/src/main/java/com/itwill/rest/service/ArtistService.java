package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.artist.ArtistAlbumDto;
import com.itwill.rest.dto.artist.ArtistSongDto;
import com.itwill.rest.repository.Artist;
import com.itwill.rest.repository.ArtistDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class ArtistService {
	
	private final ArtistDao artistDao;
	
	public Artist readDetail(Integer artistId) {
		
		return artistDao.selectByArtistId(artistId);
	}
	
	public List<ArtistSongDto> readSongs(Integer artistId) {
		log.debug("readSongs()");
		
		List<ArtistSongDto> list = artistDao.selectSongsByArtistId(artistId);
		
		return list;
	}
	
	public List<ArtistAlbumDto> readAlbums(Integer artistId) {
		log.debug("readAlbums()");
		
		List<ArtistAlbumDto> list = artistDao.selectAlbumsByArtistId(artistId);
		
		return list;
	}

}
