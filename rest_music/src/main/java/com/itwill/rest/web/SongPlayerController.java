package com.itwill.rest.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itwill.rest.repository.AlbumSongs;
import com.itwill.rest.service.AlbumSongsService;

import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequiredArgsConstructor
public class SongPlayerController {
	private final AlbumSongsService albumSongsService;

	

	@GetMapping("player/playerPage")
	public void playerPage(
			Model model,
			HttpSession session) throws JsonProcessingException {
		List<AlbumSongs> cPList = (List<AlbumSongs>) session.getAttribute("cPList");
		// 세션에서 리스트를 받아옴.
		ObjectMapper objectMapper = new ObjectMapper();
		// jackson objectmapper 객체 생성
		String cPListJson = objectMapper.writeValueAsString(cPList);
		// List -> Json 문자열
		System.out.println(cPListJson);
		// Json 문자열 출력
		model.addAttribute("cPList", cPListJson);
		// jsp에 전달
	}

	@GetMapping("/song/addCurrentPlayList")
	@ResponseBody
	public ResponseEntity<AlbumSongs> addCurrentPlayList(
			@RequestParam(value = "songId") String songId,
			HttpSession session) {

		// 세션에서 리스트를 가져옴
		List<AlbumSongs> cPList = (List<AlbumSongs>) session.getAttribute("cPList");
		if (cPList == null) { // 리스트가 널이면 새 배열을 넣어줌.
			cPList = new ArrayList<>();
		}
		log.debug("songId = {}", songId);
		AlbumSongs song = albumSongsService.selectSongBySongId(Integer.parseInt(songId));
		// 요청 파라미터로 받은 songId로 음악 객체를 생성함.
		log.debug("song", song);
		cPList.add(song);
		// 생성한 음악 객체를 현재 재생 목록에 추가함.

		log.debug("cPList = {}", cPList);
		session.setAttribute("cPList", cPList);
		// 재생목록을 세션에 업데이트.

		return ResponseEntity.ok(song);
	}

	@GetMapping("/song/listen")
	@ResponseBody
	public ResponseEntity<AlbumSongs> listen(
			@RequestParam(value = "songId") String songId,
			HttpSession session) {

		session.setAttribute("cPList", null);
		// 바로듣기 버튼 클릭 시 세션에 저장된 리스트를 지움.
		List<AlbumSongs> cPList = new ArrayList<>();
		// 리스트를 지웠으므로 새 리스트를 생성해줌.
		AlbumSongs song = albumSongsService.selectSongBySongId(Integer.parseInt(songId));
		// 요청 파라미터로 받은 songId로 음악 객체를 생성
		log.debug("song = {}", song);
		cPList.add(song);
		// 새로 생성한 리스트에 음악 객체를 추가.
		session.setAttribute("cPList", cPList);
		// 세션에 리스트를 업데이트

		return ResponseEntity.ok(song);
	}

	@GetMapping("/api/album")
	public ResponseEntity<List<AlbumSongs>> getAlbum(@RequestParam(value = "albumId") String albumId) {
		log.debug("albumId = {}", albumId);
		List<AlbumSongs> list = albumSongsService.selectByAlbumId(Integer.parseInt(albumId));
		log.debug("list = {}", list);
		return ResponseEntity.ok(list);
	}

	// 재생목록 비우는 매핑컨트롤러
	@GetMapping("/song/empty")
	@ResponseBody
	public ResponseEntity<List<AlbumSongs>> empty(HttpSession session) {
		session.setAttribute("cPList", null);
		// 바로듣기 버튼 클릭 시 세션에 저장된 리스트를 지움.
		List<AlbumSongs> cPList = new ArrayList<>();
		// 리스트를 지웠으므로 새 리스트를 생성해줌.
		// 새로 생성한 리스트에 음악 객체를 추가.
		session.setAttribute("cPList", cPList);
		// 세션에 리스트를 업데이트

		return ResponseEntity.ok(cPList);
	}

	// 요청받은 songId가 세션에 있는 지 검사하는 매핑 컨트롤러
	@GetMapping("/song/getCPList")
	public ResponseEntity<Boolean> getCPList(@RequestParam(value = "songId") String songId, HttpSession session) {
		AlbumSongs song = albumSongsService.selectSongBySongId(Integer.parseInt(songId));
		log.debug("song = {}", songId);
		// 세션에서 현재 재생목록을 가져옴.
		List<AlbumSongs> cPList = (List<AlbumSongs>) session.getAttribute("cPList");

		if(cPList == null) {
			// cPList null인경우 그냥 false(중복된 데이터 없음.)을 리턴.
			return ResponseEntity.ok(false);
		}
		// 요청받은 객체가 현재 세션에 있는 지 검사
		boolean containsAlbumSong = cPList.contains(song);

		return ResponseEntity.ok(containsAlbumSong);

	}

}
