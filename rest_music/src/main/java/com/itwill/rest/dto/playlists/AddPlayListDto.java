package com.itwill.rest.dto.playlists;

import com.itwill.rest.repository.PlayList;

import lombok.Data;

@Data
public class AddPlayListDto {
	private Integer id;
	private String pListName;

	public PlayList toEntity() {
		return PlayList.builder()
				.id(id)
				.pListName(pListName)
				.build();
	}
}

