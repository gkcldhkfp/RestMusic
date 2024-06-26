package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.comment.CommentCreateDto;
import com.itwill.rest.dto.comment.CommentItemDto;
import com.itwill.rest.dto.comment.CommentUpdateDto;
import com.itwill.rest.repository.Comment;
import com.itwill.rest.repository.CommentDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class CommentService {
	
	private final CommentDao commentDao;	
	
	public List<CommentItemDto> getAllCommentsBySongId(int songId) {
		log.debug("getAllCommentsBySongId({})",songId);
		
		return commentDao.selectBysongId(songId);
	}
	
	public int create(CommentCreateDto dto) {
		log.debug("create({})", dto);
		
		// 리포지토리 계층의 메서드를 호출해서 comments 테이블에 insert.
		int result = commentDao.insert(dto.toEntity());
		
		return result;
	}
	
	public int update(CommentUpdateDto dto) {
		log.debug("update({})", dto);
		
		// 리포지토리 컴포넌트의 메서드를 호출해서 comments 테이블을 업데이트.
		int result = commentDao.update(dto.toEntity());
		
		return result;
	}
	
	public int deleteById(Integer id) {
		log.debug("deleteById(id={})",id);
		
		// 리포지토리 컴포넌트의 메서드를 호출해서 comments에서 댓글 1개를 삭제.
		int result = commentDao.deleteById(id);
		
		return result;
	}
	
	public int deleteBySongId(Integer id) {
		log.debug("deleteByPostId(id={})",id);
		
		// 리포지토리 컴포넌트의 메서드를 호출해서 comments에서 댓글 1개를 삭제.
		int result = commentDao.deleteBySongId(id);
		
		return result;
	}

	public CommentItemDto readById(int cid) {
		log.debug("readById(id={})", cid);
		
		// 리포지토리 컴포넌트의 메서드를 호출해서 해당 아이디의 댓글 1개를 검색.
		Comment comment = commentDao.selectById(cid);
		
		// Comment 타입을 CommentItemDto 타입으로 변환해서 리턴
		return CommentItemDto.fromEntity(comment);
	}

}
