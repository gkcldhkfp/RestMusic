package com.itwill.rest.repository;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

// DB 테이블 comments
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Comment {
	private Integer cId; // Primary Key.
	private Integer songId; // Foreign Key: songs 테이블의 id 컬럼을 참조.
	private Integer id; // Foreign Key : users 테이블의 id 컬럼 참조.
	private String cText; // 댓글 내용.
	private String nickname; // 댓글 내용.
	private LocalDateTime createdTime; // 댓글 최초 작성 시간.
	private LocalDateTime modifiedTime; // 댓글 최종 수정 시간.
	
}
