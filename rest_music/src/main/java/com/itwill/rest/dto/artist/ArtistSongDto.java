package com.itwill.rest.dto.artist;

import lombok.Data;

@Data
public class ArtistSongDto {
	private Integer artistId;
	private String artistIds;
	private Integer songId;
	private Integer albumId;
	private String albumName;
	private String albumImage;
	private String title;
	private String artistName;

}
