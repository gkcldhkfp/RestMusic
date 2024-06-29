package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.playlists.AddPlayListDto;
import com.itwill.rest.dto.song.AddSongLikeDto;
import com.itwill.rest.dto.song.SongsPopularDto;
import com.itwill.rest.repository.PlayList;
import com.itwill.rest.repository.PlayListDao;
import com.itwill.rest.repository.SongChart;
import com.itwill.rest.repository.SongChartDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class SongChartService {
	private final SongChartDao songChartDao;
	private final PlayListDao playListDao;

	// 특정 곡의 좋아요 개수 확인
	public int countSongLikes(Integer songId) {
		log.debug("countSongLikes({})", songId);
		
		int result = songChartDao.countSongLikes(songId);
		return result;

	}

	// 좋아요 추가
	public int addSongLike(AddSongLikeDto dto) {
		log.debug("addSongLike({})", dto);
		
		int result = songChartDao.insertSongLike(dto.toEntity());
		return result;

	}

	// 좋아요 취소
	public int cancelSongLike(Integer songId, Integer id) {
		log.debug("cancelSongLike(songId = {}, id = {})", songId, id);
		
		int result = songChartDao.deleteSongLike(songId, id);
		return result;

	}
	
	// top30
    public List<SongsPopularDto> readTopSongs() {
    	log.debug("readTopSongs()");
    	
    	List<SongChart> list = songChartDao.getAllSongs();
        return list.stream().limit(30).map(SongsPopularDto::fromEntity).toList();
    }
    
    // 전체 차트
    public List<SongChart> readAllSongs() {
        log.debug("readAllSongs()");
        
        List<SongChart> list = songChartDao.getAllSongs();
        return list;
    }
       
    // 장르별 차트
    public List<SongChart> readSongsByGenre(String genre) {
    	log.debug("readSongsByGenre({})", genre);
    	
    	List<SongChart> list = songChartDao.getSongsByGenre(genre);
    	return list;
    }
    
    // 플레이리스트에 곡 추가
    public int addSongToPlaylist(AddPlayListDto dto) {
        log.debug("addSongToPlaylist({})", dto);
        
        int result = songChartDao.addSongToPlaylist(dto);
        return result;
    }
    
    public List<PlayList> getPlaylistsById(Integer id) {
    	log.debug("getPlaylistsById({})",id);
		
		List<PlayList> list = playListDao.AllPlayListsByUserId(id);
		
		return list;
    }

}
