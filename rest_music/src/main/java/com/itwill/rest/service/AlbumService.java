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
	
	
	
	
	
    
	
	
	
	
//	public List<Album> selectAllByAlbumId() {
//		log.debug("read()");
//		
//		List<Album> list = albumDao.selectAllByAlbumId();
//		log.debug("list = {}", list);
//		return list;
//	}
	
	
	public List<Album> selectOrderByDate(Integer id) {
	    log.debug("selectOrderByDate()");

	    List<Album> list = albumDao.selectOrderByDate();
	    log.debug("list = {}", list);

	    // id를 각 앨범 객체에 설정할 필요가 있는 경우 추가
	    list.forEach(album -> album.setId(id));
	    
	    return list;
	}
	
//	public List<Album> selectOrderByDate() {
//		log.debug("selectOrderByDate()");
//		
//		List<Album> list = albumDao.selectOrderByDate();
//		log.debug("list = {}" , list);
//		return list;
//	}
	
	
	public List<Album> selectOrderByLikes(Integer id) {
	    log.debug("selectOrderByLikes()");

	    List<Album> list = albumDao.selectOrderByLikes();
	    log.debug("list = {}", list);

	    // id를 각 앨범 객체에 설정할 필요가 있는 경우 추가
	    list.forEach(album -> album.setId(id));
	    
	    return list;
	}
	
//	public List<Album> selectOrderByLikes() {
//		log.debug("selectOrderByLikes()");
//		
//		List<Album> list = albumDao.selectOrderByLikes();
//		log.debug("list = {}" , list);
//		return list;
//	}
	
	
	
	
	
	
	
	
	

}
