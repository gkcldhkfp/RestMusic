package com.itwill.rest.dto.song;

import lombok.Data;

@Data
public class SearchResultDto {
	
	private int albumId;
	private int songId;
	private String artistIds;
	private String albumName;
	private String albumImage;
	private String title; // 노래제목
	private String singerName;
	
	
}
