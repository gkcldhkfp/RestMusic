package com.itwill.rest.dto.user;

import com.itwill.rest.repository.User;
import lombok.Data;

//회원 가입 요청에서 요청 파라미터들을 저장하기 위한 DTO
@Data
public class UserCreateDto {
    private String userId;
    private String userName;
    private String password;
    private String email;
    private String nickname;
    private String userProfile;
    private String hintQuestion;
    private String hintAnswer;

    public User toEntity() {
        return User.builder()
                .userId(userId)
                .userName(userName)
                .password(password)
                .email(email)
                .nickName(nickname)
                .userProfile(userProfile)
                .hintQuestion(hintQuestion)
                .hintAnswer(hintAnswer)
                .build();
    }
}