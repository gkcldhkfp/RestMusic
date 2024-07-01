package com.itwill.rest.web;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.rest.dto.song.SongChartDto;
import com.itwill.rest.dto.song.SongDetailDto;

import com.itwill.rest.service.SongService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/song")
public class SongController {

	private final SongService songService;

	@GetMapping("/detail")
	public String songDetail(@RequestParam(name = "songId") int id, Model model) {
		log.debug("id={}", id);

		SongDetailDto data = songService.readDetail(id);

		model.addAttribute("songId", id);
		model.addAttribute("data", data);

		return "song/songDetail";
	}

	// top30 차트
	@GetMapping("/popular")
	public void showPopularSongs(Model model) {
		log.debug("showPopularSongs({})", model);

		List<SongChartDto> list = songService.readTopSongs();
		model.addAttribute("topSongs", list);
	}

	// 전체 or 장르별 차트
	@GetMapping("/genreChart")
	public String showSongs(Model model, @RequestParam(name = "genre", required = false) String genre) {
		log.debug("showSongs(model = {}, genre = {})", model, genre);

		List<SongChartDto> list;
		if (genre == null || genre.equals("전체")) {
			list = songService.readAllSongs();
			model.addAttribute("genreSongs", list);
			model.addAttribute("genres", Arrays.asList("전체", "OST", "댄스", "발라드", "팝", "힙합"));
			return "/song/genreChart";
		} else {
			list = songService.readSongsByGenre(genre);
			model.addAttribute("genreSongs", list);
			model.addAttribute("genres", Arrays.asList("전체", "OST", "댄스", "발라드", "팝", "힙합"));
			return "/song/genreChart";
		}
	}

	// 뮤직비디오 차트
	@GetMapping("/videoChart")
	public void showVideoSongs(Model model) {

	}

}

