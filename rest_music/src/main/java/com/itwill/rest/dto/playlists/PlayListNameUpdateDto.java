package com.itwill.rest.dto.playlists;

import com.itwill.rest.repository.PlayList;

import lombok.Data;

@Data
public class PlayListNameUpdateDto {
	private Integer pListId;
	private String pListName;
	
	public PlayList toEntity() {
		return PlayList.builder().pListId(pListId).pListName(pListName).build();
	}

}
