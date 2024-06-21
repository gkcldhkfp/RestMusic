package com.itwill.rest.dto.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor @AllArgsConstructor @Builder
public class UserLikeDto {
	private Integer id;
	private Integer songId;
	private String songPath;
	private String title;

}
