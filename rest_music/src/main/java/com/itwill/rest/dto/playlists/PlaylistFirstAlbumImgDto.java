package com.itwill.rest.dto.playlists;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class PlaylistFirstAlbumImgDto {
	
		private Integer pListId;
		private String pListName;
		private String albumImage;

}
