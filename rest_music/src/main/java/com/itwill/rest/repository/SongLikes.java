package com.itwill.rest.repository;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

// 차트 페이지의 좋아요를 위한 위한 클래스
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SongLikes {
	private Integer songId; // 음악 번호
	private Integer id; // 회원 번호

}
