package com.itwill.rest.web;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.rest.repository.PurchaseDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/purchase")
@RequiredArgsConstructor
public class PurUsersController {
	
	private final PurchaseDao service;
	
	@GetMapping("/success/{loginUserId}")
	public ResponseEntity<Integer> PurchaseSuccess (@PathVariable Integer loginUserId) {
		log.debug("controller ({})",loginUserId);
		int result = service.PurchaseSuccess(loginUserId);
		
		return ResponseEntity.ok(result);
	}
	
}
