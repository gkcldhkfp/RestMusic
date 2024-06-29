package com.itwill.rest.web;

import java.util.Arrays;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.rest.dto.playlists.AddPlayListDto;
import com.itwill.rest.dto.song.AddSongLikeDto;
import com.itwill.rest.dto.song.SongsPopularDto;
import com.itwill.rest.repository.PlayList;
import com.itwill.rest.repository.SongChart;
import com.itwill.rest.service.PlayListService;
import com.itwill.rest.service.SongChartService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller

public class SongChartController {
	
	private final SongChartService songChartService;

	// top30 차트
    @GetMapping("/song/popular")
    public void showPopularSongs(Model model) {
    	log.debug("showPopularSongs({})", model);
    	
    	List<SongsPopularDto> list = songChartService.readTopSongs();
		model.addAttribute("topSongs", list);
    }
    
    // 전체 or 장르별 차트
    @GetMapping("/song/genreChart")
    public String showSongs(Model model, @RequestParam(value = "genre", required = false) String genre) {
        log.debug("showSongs(model = {}, genre = {})", model, genre);

        List<SongChart> list;
        if (genre == null || genre.equals("전체")) {
            list = songChartService.readAllSongs();
            model.addAttribute("genreSongs", list);
            model.addAttribute("genres", Arrays.asList("전체", "OST", "댄스", "발라드", "팝", "힙합"));
            return "/song/genreChart";
        } else {
            list = songChartService.readSongsByGenre(genre);
            model.addAttribute("genreSongs", list);
            model.addAttribute("genres", Arrays.asList("전체", "OST", "댄스", "발라드", "팝", "힙합"));
            return "/song/genreChart";
        }
    }

    // 뮤직비디오 차트
    @GetMapping("/song/videoChart")
    public void showVideoSongs(Model model) {
    	
    }
    
	// 좋아요 추가
	@PostMapping("/api/addLike")
	@ResponseBody
	public ResponseEntity<Integer> addSongLike(@RequestBody AddSongLikeDto dto) {
		log.debug("addSongLike({})", dto);
		
		songChartService.addSongLike(dto);
		int likesCount = songChartService.countSongLikes(dto.getSongId()); // 최신 좋아요 개수 반환
		return ResponseEntity.ok(likesCount);

	}

	// 좋아요 취소
	@DeleteMapping("/api/cancelLike/{songId}")
	@ResponseBody
	public ResponseEntity<Integer> deleteSongLike(@PathVariable("songId") int songId, @RequestParam("id") int id) {
		log.debug("deleteSongLike(songId = {}, id = {})", songId, id);
		
        songChartService.cancelSongLike(songId, id);
        int likesCount = songChartService.countSongLikes(songId); // 최신 좋아요 개수 반환
        return ResponseEntity.ok(likesCount);
	}
    
	// 플레이리스트에 곡 추가
	@PostMapping("/api/addToPlaylist")
	@ResponseBody
	public ResponseEntity<Integer> addSongToPlaylist(@RequestBody AddPlayListDto dto) {
		log.debug("addSongToPlaylist({})", dto);
		
		int result = songChartService.addSongToPlaylist(dto);
		return ResponseEntity.ok(result);
	}
	
	// 플레이리스트 목록 가져오기
    @GetMapping("/api/getMyPlayList")
    @ResponseBody
    public ResponseEntity<List<PlayList>> getMyPlayList(@RequestParam("id") int id) {
        log.debug("getMyPlayList(id = {})", id);

        List<PlayList> list = songChartService.getPlaylistsById(id);
        return ResponseEntity.ok(list);
    }
	
}


