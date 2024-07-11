package com.itwill.rest.repository;

import java.sql.Date;

import com.itwill.rest.repository.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor @AllArgsConstructor @Builder
public class User {
	private String userName;
	private Integer id;
	private String userId;
	private String password;
	private String email;
	private String nickname;
	private String userProfile;
	private String hintQuestion;
	private String hintAnswer;
	private Integer isActive;
    private Date deactivatedUntil;
	
	
}
