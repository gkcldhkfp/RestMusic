package com.itwill.rest.dto.artist;

import lombok.Data;

@Data
public class ArtistSongDto {
	private Integer artistId;
	private Integer songId;
	private Integer albumId;
	private String albumImage;
	private String songTitle;
	private String artistName;

}
