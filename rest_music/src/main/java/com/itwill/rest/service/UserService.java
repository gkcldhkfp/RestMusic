package com.itwill.rest.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.itwill.rest.dto.user.UserLikeDto;
import com.itwill.rest.repository.User;
import com.itwill.rest.repository.UserDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class UserService {
	
	private final UserDao userDao;
	
	public User readInfo(String userId) {
        return userDao.selectByUserid(userId);
	}
	
	public List<UserLikeDto> selectLikesByUserid(String userId) {
		List<UserLikeDto> list = userDao.selectLikesByUserid(userId);
		
		return list;
	}

}
