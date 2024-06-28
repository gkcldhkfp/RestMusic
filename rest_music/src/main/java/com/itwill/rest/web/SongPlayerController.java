package com.itwill.rest.web;

import java.util.ArrayList;
import java.util.List;

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

	@GetMapping("/frameset")
	public void frameset() {

	}

	@GetMapping("player/playerPage")
	public void playerPage(
			Model model,
			HttpSession session) throws JsonProcessingException {
		List<AlbumSongs> cPList = (List<AlbumSongs>) session.getAttribute("cPList");
		// jackson objectmapper 객체 생성
		ObjectMapper objectMapper = new ObjectMapper();
		// List -> Json 문자열
		String cPListJson = objectMapper.writeValueAsString(cPList);
		// Json 문자열 출력
		System.out.println(cPListJson);
		model.addAttribute("cPList", cPListJson);
	}

	@GetMapping("/song/addCurrentPlayList")
	@ResponseBody
	public void addCurrentPlayList(
			@RequestParam(value = "songId", required = false) String songId,
			HttpSession session,
			Model model) {
		List<AlbumSongs> cPList = (List<AlbumSongs>) session.getAttribute("cPList");
		if (cPList == null) { // 리스트가 널이면 새 배열을 넣어줌.
			cPList = new ArrayList<>();
		}
		if (songId != null) { // 요청파라미터 없이 요청이 들어왔을 때 널포인터익셉션 발생 방지
			log.debug("songId =s {}", songId);
			AlbumSongs song = albumSongsService.selectSongBySongId(Integer.parseInt(songId));
			log.debug("song", song);
			cPList.add(song);
		}

		log.debug("cPList = {}", cPList);
		model.addAttribute("cPList", cPList);
		session.setAttribute("cPList", cPList);
	}

	@GetMapping("/song/listen")
	@ResponseBody
	public void listen(
			@RequestParam(value = "songId") String songId,
			HttpSession session) {

				session.setAttribute("cPList", null);
				// 바로듣기 버튼 클릭 시 세션에 저장된 리스트를 지움.
				AlbumSongs song = albumSongsService.selectSongBySongId(Integer.parseInt(songId));
				log.debug("song = {}", song);
				List<AlbumSongs> cPList = new ArrayList<>();
				cPList.add(song);
				session.setAttribute("cPList", cPList);
	}

}
