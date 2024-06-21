package com.itwill.rest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.rest.repository.AlbumSongs;
import com.itwill.rest.service.AlbumSongsService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;



@RequiredArgsConstructor
@Controller
@Slf4j
@RequestMapping("/album")
public class AlbumSongsController {
	private final AlbumSongsService albumSongsService;

	@GetMapping("/detail")
	public void detail(
		@RequestParam(name = "albumId") String albumId,
		Model model
		) {
		log.debug("detail({})", albumId);
		Integer albumIdInteger = Integer.parseInt(albumId);
		List<AlbumSongs> list = albumSongsService.selectByAlbumId(albumIdInteger);
		model.addAttribute("albumSongs", list);
		AlbumSongs album = albumSongsService.selectAlbumByAlbumId(albumIdInteger);
		log.debug("album = {}", album);
		model.addAttribute("album", album);
	}
	

}
