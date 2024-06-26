package com.itwill.rest.web;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.rest.dto.comment.CommentCreateDto;
import com.itwill.rest.dto.comment.CommentItemDto;
import com.itwill.rest.dto.comment.CommentUpdateDto;
import com.itwill.rest.service.CommentService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/comment")
public class CommentRestController {

	private final CommentService commentService;
	
	@GetMapping("/all/{songId}")
	public ResponseEntity<List<CommentItemDto>> getAllCommentBySongId(@PathVariable int songId ) {
		log.debug("getAllCommentBySongId(songId={})", songId);
		
		List<CommentItemDto> list = commentService.getAllCommentsBySongId(songId);
		
		return ResponseEntity.ok(list); 
	}
	
	
	@PostMapping
	public ResponseEntity<Integer> registerComment(@RequestBody CommentCreateDto dto) {
		log.debug("registerComment({})", dto);
		
		int result = commentService.create(dto);
		
		return ResponseEntity.ok(result);
	}
	
	@PutMapping("/{cId}")
	public ResponseEntity<Integer> updateComment(@PathVariable int cId, @RequestBody CommentUpdateDto dto) {
		log.debug("updateComment(id={})",cId);
		log.debug("dto={}",dto);
		
		dto.setCId(cId);
		
		int result = commentService.update(dto);
		
		return ResponseEntity.ok(result);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Integer> deleteComment(@PathVariable int id) {
		log.debug("deleteComment(id={})",id);
		
		int result = commentService.deleteById(id);
		
		return ResponseEntity.ok(result);
	}
	
	@DeleteMapping("/all/{id}")
	public ResponseEntity<Integer> deleteBySongId (@PathVariable int id) {
		log.debug("deleteComment(id={})",id);
		
		int result = commentService.deleteById(id);
		
		return ResponseEntity.ok(result);
	}
	
	@GetMapping("/{cId}") //-> /api/comment/{id}
	public ResponseEntity<CommentItemDto> getReplyById(@PathVariable int cId) {
		log.debug("getReplyById(id={})", cId);
		
		CommentItemDto dto = commentService.readById(cId);
		
		return ResponseEntity.ok(dto);
	}
	
	
}
