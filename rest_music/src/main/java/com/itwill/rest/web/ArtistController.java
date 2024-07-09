package com.itwill.rest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.rest.dto.artist.ArtistAlbumDto;
import com.itwill.rest.dto.artist.ArtistSongDto;
import com.itwill.rest.repository.Artist;
import com.itwill.rest.service.ArtistService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/artist")
public class ArtistController {
	
	private final ArtistService artistService;
	
	@GetMapping("/songs")
	public void songs(@RequestParam(name = "artistId") Integer artistId, Model model) {
		log.debug("artistId={}", artistId);
		
		Artist artist = artistService.readDetail(artistId);
		
		List<ArtistSongDto> list = artistService.readSongs(artistId);
		
		model.addAttribute("artist", artist);
		model.addAttribute("songs", list);
	}
	
	@GetMapping("/albums")
	public void albums(@RequestParam(name = "artistId") Integer artistId, Model model) {
		log.debug("artistId={}", artistId);
		
		Artist artist = artistService.readDetail(artistId);
		
		List<ArtistAlbumDto> list = artistService.readAlbums(artistId);
		
		model.addAttribute("artist", artist);
		model.addAttribute("albums", list);
	}

}
