package com.itwill.rest.dto.playlists;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class PlayListSongInfoDto {
	private Integer plistId; // playList id(playlists 테이블)
	private String plistName; // playList 이름
	private Integer songId; // playList 음원 id(playlist_songs 테이블)
	private LocalDateTime createdTime; // playlist에 song 추가날짜
	private String title; // song 제목(songs 테이블)
	private String singerName; // 가수 이름(singers 테이블)
	private String albumImage; // album 커버(album 테이블)

}
