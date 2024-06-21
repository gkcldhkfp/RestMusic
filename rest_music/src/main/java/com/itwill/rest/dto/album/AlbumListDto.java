package com.itwill.rest.dto.album;

import java.time.LocalDateTime;

import com.itwill.rest.repository.Album;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AlbumListDto {

	
	private Integer albumId;
	private String albumName;
	private String albumImage;
	private String albumType;
	private LocalDateTime albumReleaseDate;
	
	public static AlbumListDto fromEntity(Album album) {
		return AlbumListDto.builder()
				.albumId(album.getAlbumId())
				.albumName(album.getAlbumName())
				.albumImage(album.getAlbumImage())
				.albumType(album.getAlbumType())
				.albumReleaseDate(album.getAlbumReleaseDate())
				.build();
	}
}
