package com.itwill.rest.dto.song;

import lombok.Data;

@Data
public class SongDetailDto {
	private Integer songId;
	private String songTitle;
	private String albumName;
	private String albumImage;
	private String genre;
	private String singerName;
	private String writers;
	private String composers;
	private String arrangers;
	private String lyrics;
	
	private Integer albumId;
	private String singerIds;
	private String writerIds;
	private String composerIds;
	private String arrangerIds;
}
