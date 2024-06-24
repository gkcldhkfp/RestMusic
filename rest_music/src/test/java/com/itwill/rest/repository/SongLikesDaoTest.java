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

public class SongLikesDaoTest {

	@Autowired
	private SongLikesDao songLikesDao;

//	@Test
	public void testInsertSongLikes() {
		SongLikes songLikes = SongLikes.builder().songId(1).id(1).build();
		int result = songLikesDao.insertSongLikes(songLikes);
		Assertions.assertEquals(1, result);

	}

//	@Test
	public void testDeleteSongLikes() {
		int result = songLikesDao.deleteSongLikes(2);
		Assertions.assertEquals(5, result);

	}

//	@Test
	public void testCountSongLikes() {
		Integer result1 = songLikesDao.countSongLikes(1);
		Assertions.assertEquals(15, result1);
		
		Integer result2 = songLikesDao.countSongLikes(2);
		Assertions.assertNotEquals(0, result2);

	}
	
	@Test
    public void testPopularSongs() {
        List<SongLikes> ranking = songLikesDao.popularSongs();
        Assertions.assertNotNull(ranking);
        for (SongLikes rank : ranking) {
			log.debug(rank.toString());
		}
    }

}
