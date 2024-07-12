package com.itwill.rest.repository;

import java.util.List;

import com.itwill.rest.dto.user.UserLikeDto;
import com.itwill.rest.dto.user.UserSignInDto;
import com.itwill.rest.dto.user.UserUpdateDto;

public interface UserDao {
    User selectByUserId(String userId);
    User selectByEmail(String email);
    User selectByNickname(String nickname);
    int insert(User user);
    User selectByUserIdAndPassword(UserSignInDto dto);
	User selectByUserid(String userid);
	List<UserLikeDto> selectLikesByUserid(Integer id);
	User findUserId(User user);
    User findpassword(User user);
    void setpassword(User user);
	int updateUser(User user);
	int updateUserProfile(String userId, String userProfile); // 프로필 변경
	int deleteUserProfile(String userId); // 프로필 삭제
	Integer checkPassword(Integer id, String password); // 비밀번호 확인
	int deactivateUser(Integer id); // 회원 비활성화
    int insertDeletedUser(Integer id); // 탈퇴 회원 정보 저장
    User selectUserById(Integer id); // 사용자 ID로 사용자 정보 조회    
    Integer checkUserIsActive(String userId); // 회원 활성 확인 여부
    Integer checkDeactivationPeriod(String userId); // 비활성화 기간 확인
    
    

}
