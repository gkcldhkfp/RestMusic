package com.itwill.rest.repository;

import java.util.List;


public interface AlbumDao {
	
	

    // albumList-mapper.xml에서 id="selectOrderByIdDesc"인 SQL을 실행하는 메서드.
    List<Album> selectAllByAlbumId(); 

    
    // 좋아요 개수를 증가시키는 메서드
    void incrementLikes(Integer albumId);

}
