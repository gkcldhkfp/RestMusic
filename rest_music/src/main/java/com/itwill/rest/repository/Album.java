package com.itwill.rest.repository;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Album {
	private Integer albumId;
	private String albumName;
	private String albumImage;
	private String albumType;
	private LocalDateTime albumReleaseDate;
}
