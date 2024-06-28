package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.repository.Album;
import com.itwill.rest.repository.AlbumDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class AlbumService {
	
	private final AlbumDao albumDao;
	
	
	
	
	public List<Album> read() {
		log.debug("read()");
		
		List<Album> list = albumDao.selectAllByAlbumId();
		log.debug("list = {}", list);
		return list;
	}
	
	public void incrementLikes(Integer albumId) {
        log.debug("incrementLikes({})", albumId);
        albumDao.updateLikes(albumId);
    }
	
	

}
