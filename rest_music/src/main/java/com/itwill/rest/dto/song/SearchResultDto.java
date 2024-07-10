package com.itwill.rest.dto.song;

import lombok.Data;

@Data
public class SearchResultDto {
	
	private int albumId;
	private int artistId;
	private int songId;
	private String albumName;
	private String albumImage;
	private String title; // 노래제목
	private String singerName;
	
	
}
