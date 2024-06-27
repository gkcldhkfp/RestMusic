package com.itwill.rest.web;

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
import com.itwill.rest.dto.playlists.AddSongToPlayListDto;
import com.itwill.rest.dto.playlists.PlayListSongInfoDto;
import com.itwill.rest.dto.playlists.PlaylistFirstAlbumImgDto;
import com.itwill.rest.repository.PlayList;
import com.itwill.rest.service.PlayListService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class PlayListController {

	private final PlayListService playListService;
	
	@GetMapping("/playlists/playlist")
	public void playlist(@RequestParam(name = "plistId") int pListId, Model model) {
		log.debug("plistId={}", pListId);
		
		PlayList playList = playListService.getPlayListInfoByListId(pListId); // 플레이리스트 정보 가져오기
		List<PlayListSongInfoDto> songs = playListService.getSongsByPlistId(pListId); // 곡 정보 가져오기
		
		model.addAttribute("playList", playList);
		model.addAttribute("songs", songs);
	}
	
	@GetMapping("/getPlayList/{id}")
	@ResponseBody
	public ResponseEntity<List<PlaylistFirstAlbumImgDto>> getPlayList(@PathVariable int id) {
		log.debug("getPlayList({})",id);
		
		List<PlaylistFirstAlbumImgDto> result = playListService.getPlayListByUserId(id);
		
		return ResponseEntity.ok(result);
	}
	
	@PostMapping("/addSongToPlayList")
	@ResponseBody
	public ResponseEntity<Integer> addSongToPlayList(@RequestBody AddSongToPlayListDto dto) {
		log.debug("addPlayList({})",dto);
		
		int result = playListService.songAddToPlayList(dto);
		
		
		return ResponseEntity.ok(result);
	}
	
	@PostMapping("/addPlayList")
	@ResponseBody
	public ResponseEntity<Integer> addPlayList(@RequestBody AddPlayListDto dto) {
		log.debug("addPlayList({})", dto);
		
		int result = playListService.addPlayList(dto);
		
		return ResponseEntity.ok(result);
	}
	
	@DeleteMapping("/deletePlayList/{pListId}")
	@ResponseBody
	public ResponseEntity<Integer> deleteByListId(@PathVariable int pListId) {
		log.debug("deleteByListId(ListId={})");
		
		int result = playListService.deleteByListId(pListId);
		
    	return ResponseEntity.ok(result);
	}
	
	@DeleteMapping("/deletePlayListSong/{pListId},{songId}")
	@ResponseBody
	public ResponseEntity<Integer> deleteListSongBySongId(@PathVariable int pListId, int songId) {
		log.debug("deleteByListId(ListId={})");
		
		int result = playListService.deleteListSongsBySongId(pListId, songId);
		
		return ResponseEntity.ok(result);
	}
	
}
