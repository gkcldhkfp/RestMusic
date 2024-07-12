package com.itwill.rest.dto.album;


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
	private String albumReleaseDate;
	private int likesCount;
	
	public static AlbumListDto fromEntity(Album album) {
		return AlbumListDto.builder()
				.albumId(album.getAlbumId())
				.albumName(album.getAlbumName())
				.albumImage(album.getAlbumImage())
				.albumType(album.getAlbumType())
				.albumReleaseDate(album.getAlbumReleaseDate())
				.likesCount(album.getLikesCount()) // 좋아요 개수 매핑
				.build();
	}
}
