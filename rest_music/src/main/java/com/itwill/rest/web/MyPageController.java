package com.itwill.rest.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class MyPageController {
	@GetMapping("/mypage")
	public void myPage() {
		log.debug("myPage()");
	}

}
