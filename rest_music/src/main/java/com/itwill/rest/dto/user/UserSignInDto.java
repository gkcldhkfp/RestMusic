package com.itwill.rest.dto.user;

import com.itwill.rest.repository.User;
import lombok.Data;

@Data
public class UserSignInDto {
    private String userId;
    private String password;

    public User toEntity() {
        return User.builder()
                .userId(userId)
                .password(password)
                .build();
    }
}
