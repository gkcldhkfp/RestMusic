package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.user.UserLikeDto;

public interface UserDao {
	
	User selectByUserid(String userid);
	List<UserLikeDto> selectLikesByUserid(String userId);

}
