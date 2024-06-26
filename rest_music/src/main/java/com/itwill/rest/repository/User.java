package com.itwill.rest.repository;

import com.itwill.rest.repository.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor @AllArgsConstructor @Builder
public class User {
	private Integer id;
	private String userId;
	private String password;
	private String email;
	private String nickName;
	private String userProfile;
	private String hintQuestion;
	private String hintAnswer;

}