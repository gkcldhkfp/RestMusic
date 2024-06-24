package com.itwill.rest.dto.comment;

import java.sql.Timestamp;

import com.itwill.rest.repository.Comment;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class CommentItemDto {
	
	private int cId;
	private String nickname;
	private String cText;
	private Timestamp modifiedTime;

	
	public static CommentItemDto fromEntity(Comment comment) {
		return CommentItemDto.builder()
				.cId(comment.getCId()).cText(comment.getCText())
				.nickname(comment.getNickname())
				.modifiedTime(Timestamp.valueOf(comment.getModifiedTime())).build();
	}
}
