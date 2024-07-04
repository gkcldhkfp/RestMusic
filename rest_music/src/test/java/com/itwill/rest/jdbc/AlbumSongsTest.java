package com.itwill.rest.jdbc;

import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.itwill.rest.repository.AlbumSongs;
import com.itwill.rest.repository.AlbumSongsDao;

import lombok.extern.slf4j.Slf4j;

@ExtendWith(SpringExtension.class)
@Slf4j
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/application-context.xml" })
public class AlbumSongsTest {
	@Autowired
	private AlbumSongsDao albumSongsDao;

	@Test
	public void testSelectAllByAlbumId() {
		log.debug("albumSongsDao = {}",albumSongsDao);
		Assertions.assertNotNull(albumSongsDao);
		List<AlbumSongs> list = albumSongsDao.selectByAlbumId(1);
		for (AlbumSongs l: list) {
			System.out.println(l);
		}
	}
	@Test
	public void testSelectAlbumByAlbumId() {
		AlbumSongs album = albumSongsDao.selectAlbumByAlbumId(1);
		log.debug("album={}",album);
		System.out.println(album);
	}

	@Test
	public void testSelectSongBySongId() {
		AlbumSongs song = albumSongsDao.selectSongBySongId(1);
		log.debug("album={}", song);
		System.out.println(song);
	}
}
