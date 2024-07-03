package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.user.UserLikeDto;
import com.itwill.rest.dto.user.UserSignInDto;
import com.itwill.rest.dto.user.UserUpdateDto;

public interface UserDao {
    User selectByUserId(String userId);
    User selectByEmail(String email);
    int insert(User user);
    User selectByUserIdAndPassword(UserSignInDto dto);
	User selectByUserid(String userid);
	List<UserLikeDto> selectLikesByUserid(String userId);
	int updateUser(User user);
	int updateUserProfile(String userId, String userProfile);

}
