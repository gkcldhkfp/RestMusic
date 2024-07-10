package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.comment.CommentItemDto;


public interface CommentDao {
	
	// 해당 노래에 댓글 모두 불러오기
	List<CommentItemDto> selectBysongId(Integer songId);

	// 포스트에 새로운 댓글 추가
	int insert(Comment comment);
	
	// 댓글 내용, 수정 시간을 업데이트
	int update(Comment comment);
	
	// 댓글 아이디로 삭제
	int deleteById(Integer id);
	
	// 포스트에 달려 있는 모든 댓글 삭제
	int deleteBySongId(Integer songId);
	
	// 포스트에 달려 있는 댓글 개수를 검색.
	Integer selectCommentCount(Integer songId); 
	
	// 댓글 아이디(PK)로 검색
	Comment selectById(Integer cid);
	
	
}
