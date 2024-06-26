package com.itwill.rest.dto.comment;


import com.itwill.rest.repository.Comment;

import lombok.Data;

// 댓글 업데이트 요청의 요청 파라미터들을 저장하기 위한 DTO
@Data
public class CommentUpdateDto {
	private Integer cId;
	private String ctext;
	
	// CommentUpdateDto 타입을 Comment 타입으로 변환해서 리턴.
	public Comment toEntity() {
		return Comment.builder().cId(cId).cText(ctext).build();
	}
}
