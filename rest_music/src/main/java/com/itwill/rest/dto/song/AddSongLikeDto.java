package com.itwill.rest.dto.song;

import com.itwill.rest.repository.SongChart;

import lombok.Data;

@Data
public class AddSongLikeDto {
	private Integer songId;
	private Integer id;
	
	public SongChart toEntity() {
		return SongChart.builder().songId(songId).id(id).build();
	}

}
