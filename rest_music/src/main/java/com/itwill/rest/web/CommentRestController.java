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
		// 1. @PathVariable(name = "songId") 처럼 패스 변수의 이름을 명시하거나,
        // 2. 패스 변수의 이름을 명시하지 않고 메서드의 파라미터 이름으로 패스 변수를 찾으려면
        // (Eclipse) 프로젝트 이름 오른쪽 클릭 -> Properties -> Java Compiler ->
        // "Store information about method parameters (usable via reflection)" 항목을 체크.
		log.debug("getAllCommentBySongId(songId={})", songId);
		
		// 서비스 컴포넌트의 메서드를 호출해서 해당 포스트의 댓글 목록을 가져온다
		List<CommentItemDto> list = commentService.getAllCommentsBySongId(songId);
		
		return ResponseEntity.ok(list); //-> 200 OK 응답 코드와 함께 리스트를 전송.
	}
	
	
	@PostMapping
	public ResponseEntity<Integer> registerComment(@RequestBody CommentCreateDto dto) {
		// @RequestBody: Ajax 요청의 요청 패킷 몸통(body)에 포함된 데이터를 읽어서 자바 객체로 변환.
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
