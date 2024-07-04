package com.itwill.rest.repository;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AlbumSongs {
	private Integer songId;
	private Integer albumId;
	private String title;
	private String songPath;
	private String lyrics;
	private String videoLink;
	private String genre;

	private String albumName;
	private String albumType;
	private String albumReleaseDate;
	private String albumImage;

	private String singerName;

	private String titleSong;

	private Integer likesCount;


}