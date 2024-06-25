package com.itwill.rest.dto.playlists;

import lombok.Data;

@Data 
public class AddSongToPlayListDto {
	
	private Integer pListId;
	private Integer songId;

}
