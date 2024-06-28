package com.itwill.rest.dto.song;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class SongSearchDto {
	private String category;
	private String keyword;
	private Integer startRow;
	private Integer endRow;
}
