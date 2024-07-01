package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.playlists.AddPlayListDto;
import com.itwill.rest.dto.song.SongChartDto;
//import com.itwill.rest.dto.song.AddSongLikeDto;
import com.itwill.rest.dto.song.SongDetailDto;
import com.itwill.rest.dto.song.SongLikeDto;
//import com.itwill.rest.repository.PlayList;
import com.itwill.rest.repository.SongDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class SongService {
	private final SongDao songDao;
	
	public SongDetailDto readDetail(int songId) {
		
		SongDetailDto dto = songDao.detailBySongId(songId);
		
		return dto;
	}
	
	// 특정 사용자가 특정 노래를 좋아요 했는지 여부 확인
    public boolean isUserLikedSong(SongLikeDto dto) {
    	log.debug("isUserLikedSong({})", dto);
    	
    	int result = songDao.isLikes(dto);
    	
    	// 결과를 boolean으로 변환하여 반환
        return result > 0;
    }
    
    // 특정 곡의 좋아요 개수 확인
 	public int countSongLikes(Integer songId) {
 		log.debug("countSongLikes({})", songId);
 		
 		int result = songDao.countSongLikes(songId);
 		return result;

 	}

	// 좋아요 추가
	public int addSongLike(SongLikeDto dto) {
		log.debug("addSongLike({})", dto);
		
		int result = songDao.addLike(dto);
		return result;

	}

	// 좋아요 취소
	public int cancelSongLike(SongLikeDto dto) {
		log.debug("cancelSongLike({})", dto );
		
		int result = songDao.removeLike(dto);
		return result;

	}
	
	// top30
    public List<SongChartDto> readTopSongs() {
    	log.debug("readTopSongs()");
    	
    	List<SongChartDto> list = songDao.getAllSongs();
        return list.stream().limit(30).toList();
    }
    
    // 전체 차트
    public List<SongChartDto> readAllSongs() {
        log.debug("readAllSongs()");
        
        List<SongChartDto> list = songDao.getAllSongs();
        return list;
    }
       
    // 장르별 차트
    public List<SongChartDto> readSongsByGenre(String genre) {
    	log.debug("readSongsByGenre({})", genre);
    	
    	List<SongChartDto> list = songDao.getSongsByGenre(genre);
    	return list;
    }
    
    // 플레이리스트에 곡 추가
    public int addSongToPlaylist(AddPlayListDto dto) {
        log.debug("addSongToPlaylist({})", dto);
        
        int result = songDao.addSongToPlaylist(dto);
        return result;
    }
    
//    public List<PlayList> getPlaylistsById(Integer id) {
//    	log.debug("getPlaylistsById({})",id);
//		
//		List<PlayList> list = playListDao.AllPlayListsByUserId(id);
//		
//		return list;
//    }
	
	
}
