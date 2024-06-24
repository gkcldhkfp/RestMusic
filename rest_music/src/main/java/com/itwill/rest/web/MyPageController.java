package com.itwill.rest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.rest.dto.user.UserLikeDto;
import com.itwill.rest.repository.User;
import com.itwill.rest.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/user")
public class MyPageController {
	
	private final UserService userService;
	
	@GetMapping("/mypage")
	public void myPage(@RequestParam(name = "userId") String userId, Model model) {
		log.debug("userId={}", userId);
		
		User user = userService.readInfo(userId); // 유저 정보 불러오기(프로필 사진, 닉네임 출력)
		List<UserLikeDto> list = userService.selectLikesByUserid(userId); // 유저가 좋아요 누른 곡 출력
		
		model.addAttribute("user", user);
		model.addAttribute("like", list);
	}

}
