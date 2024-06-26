package com.itwill.rest.repository;

import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/application-context.xml" })

public class SongLikesTest {

	@Autowired // 스프링 컨테이너가 생성/관리하는 빈을 주입받음.
	private SongChartDao songLikesDao;

	 @Test
	public void testPopularSongs() {
		List<SongChart> ranking = songLikesDao.topSongs();
		Assertions.assertNotNull(ranking);
		for (SongChart rank : ranking) {
			log.debug(rank.toString());
		}
	}

//	@Test
	public void testInsert() {
		SongChart songLikes = SongChart.builder().songId(1).id(1).build();
		int result = songLikesDao.insertSongLike(songLikes);
		Assertions.assertEquals(1, result);

	}

//	@Test
	public void testDelete() {
		SongChart songLikes = SongChart.builder().songId(1).id(1).build();
		int result = songLikesDao.deleteSongLike(songLikes);
		Assertions.assertEquals(1, result);

	}

//	@Test
	public void testCountSongLikes() {
		int result = songLikesDao.countSongLikes(1);
		Assertions.assertEquals(15, result);
	}

}
