package com.itwill.rest.repository;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class PlayList {
	private Integer id;
	private Integer pListId;
	private String pListName;
	private String albumImage;
}
