package com.itwill.rest.repository;

import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.itwill.rest.dto.song.SongChartDto;
import com.itwill.rest.dto.song.SongLikeDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/application-context.xml" })

public class SongLikesTest {

	@Autowired // 스프링 컨테이너가 생성/관리하는 빈을 주입받음.
	private SongDao songDao;

	@Test
	public void testPopularSongs() {
		List<SongChartDto> list = songDao.getAllSongs();
		Assertions.assertNotNull(list);
		for (SongChartDto top : list) {
			log.debug(top.toString());
		}
	}
	
	@Test
	public void testSongsByGenre() {
		List<SongChartDto> list = songDao.getSongsByGenre("팝");
		Assertions.assertNotNull(list);
		for (SongChartDto genre : list) {
			log.debug(genre.toString());
		}
	}

//	@Test
	public void testAddLike() {
		SongLikeDto dto = new SongLikeDto(1, 1);
		int result = songDao.addLike(dto);
		Assertions.assertEquals(1, result);
		
		Integer isLiked = songDao.isLikes(dto);
	    Assertions.assertNotNull(isLiked);
	    Assertions.assertEquals(1, isLiked);

	}

//	@Test
	public void testRemoveLike() {
		SongLikeDto dto = new SongLikeDto(1, 1);
		songDao.addLike(dto);
		
		int result = songDao.removeLike(dto);
		
	    Assertions.assertEquals(1, result);
	    
	    Integer isLiked = songDao.isLikes(dto);
        Assertions.assertNotNull(isLiked);
        Assertions.assertEquals(0, isLiked);

	}

//	@Test
	public void testCountSongLikes() {
		int result = songDao.countSongLikes(1);
		Assertions.assertEquals(15, result);
	}

}
