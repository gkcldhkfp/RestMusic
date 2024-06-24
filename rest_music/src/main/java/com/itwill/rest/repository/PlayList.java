package com.itwill.rest.repository;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class PlayList {
	private Integer pListId;
	private Integer id;
	private String pListName;
}
