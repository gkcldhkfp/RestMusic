package com.itwill.rest.repository;

import java.util.List;


public interface AlbumDao {
	
	

    // albumList-mapper.xml에서 id="selectOrderByIdDesc"인 SQL을 실행하는 메서드.
    List<Album> selectAllByAlbumId(); // id랑 메서드 이름이 같아야함 이렇게
//    Album selectById(Integer id);
//    int insertAlbum(Album album);
//    int updateAlbum(Album album);
//    int deleteAlbum(Integer id);
    
    

}
