package com.itwill.rest.repository;

import java.util.List;


public interface AlbumDao {
	

    // albumList-mapper.xml에서 id="selectAllByAlbumId"인 SQL을 실행하는 메서드.
    List<Album> selectAllByAlbumId(); 

    
    // 최신순으로 정렬하는 메서드
    List<Album> selectOrderByDate();

    
    // 좋아요순으로 정렬하는 메서드
    List<Album> selectOrderByLikes();

    
    

    
    
    
    
    
    
    
    // 좋아요 개수를 증가시키는 메서드
    int updateLikes(Integer id);
    
  
    
    
    
    // 앨범수록곡 전곡을 바로 듣고, 현재 재생 목록에 담는 메서드
    
    
    // 앨범수록곡 전곡을 재생 목록에 담는 메서드
    
    
    // 앨범수록곡 전곡을 플리에 담는 메서드 

}
