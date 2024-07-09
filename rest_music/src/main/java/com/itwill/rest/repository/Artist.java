package com.itwill.rest.repository;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor @AllArgsConstructor @Builder
public class Artist {
	private Integer artistId;
	private String artistName;
	private String artistImage;
	private String artistDescription;

}
