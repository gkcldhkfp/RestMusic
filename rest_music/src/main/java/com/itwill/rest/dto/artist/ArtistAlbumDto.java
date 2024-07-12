package com.itwill.rest.dto.artist;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ArtistAlbumDto {
	private Integer albumId;
	private String albumName;
	private String albumImage;
	private String albumType;
	private Timestamp albumReleaseDate;
	private String artistName;
	private String artistId;

}
