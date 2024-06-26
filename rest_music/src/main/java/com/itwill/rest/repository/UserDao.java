package com.itwill.rest.repository;

import com.itwill.rest.dto.user.UserSignInDto;

public interface UserDao {
    User selectByUserId(String userId);
    User selectByEmail(String email);
    int insert(User user);
    User selectByUserIdAndPassword(UserSignInDto dto);
}
