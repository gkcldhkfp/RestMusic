package com.itwill.rest.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.rest.dto.user.UserCreateDto;
import com.itwill.rest.dto.user.UserLikeDto;
import com.itwill.rest.dto.user.UserSignInDto;
import com.itwill.rest.dto.user.UserUpdateDto;
import com.itwill.rest.repository.User;
import com.itwill.rest.repository.UserDao;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class UserService {
	
	private final UserDao userDao;
	
    // 아이디 중복 체크: true - 중복되지 않은 아이디(사용 가능한 아이디), false - 중복된 아이디.
    public boolean checkUserId(String userId) {
        log.debug("checkUserId(userId={})", userId);
        
        User user = userDao.selectByUserId(userId);
        return user == null;
    }
    
    // 이메일 중복 체크: true - 중복되지 않은 이메일(사용 가능한 이메일), false - 중복된 이메일.
    public boolean checkEmail(String email) {
        log.debug("checkEmail(email={})", email);
        
        User user = userDao.selectByEmail(email);
        return user == null;
    }

    // 회원 가입 서비스
    public int create(UserCreateDto dto) {
        log.debug("create({})", dto);
        return userDao.insert(dto.toEntity());
    }
    
    // 로그인 서비스
    public User read(UserSignInDto dto) {
        log.debug("read({})", dto);
        return userDao.selectByUserIdAndPassword(dto);
    }
    
	public User readInfo(String userId) {
        return userDao.selectByUserid(userId);
	}
	
	public List<UserLikeDto> selectLikesByUserid(String userId) {
		List<UserLikeDto> list = userDao.selectLikesByUserid(userId);
		
		return list;
	}
	
	// 프로필 변경
	public boolean updateProfileImage(String userId, MultipartFile profileImage, HttpServletRequest request) {
	    try {
	        // userId로 User 객체를 조회합니다. 만약 User가 존재하지 않으면 예외를 발생시킵니다.
	        User user = userDao.selectByUserId(userId);
	        if (user == null) {
	            throw new RuntimeException("User with ID " + userId + " not found");
	        }

	        // 파일 타입 검증
	        if (!profileImage.getContentType().startsWith("image/")) {
	            throw new RuntimeException("Uploaded file is not an image");
	        }

	        // 파일 사이즈 제한
	        final long MAX_FILE_SIZE = 10 * 1024 * 1024;  // 예: 10MB
	        if (profileImage.getSize() > MAX_FILE_SIZE) {
	            throw new RuntimeException("Uploaded file is too large");
	        }
	        
	        // 변경된 파일 이름을 얻습니다.
	        String originalFilename = profileImage.getOriginalFilename();
	        if (originalFilename == null || originalFilename.isEmpty()) {
	            throw new RuntimeException("Uploaded file has no name");
	        }

	        // 상대 경로를 사용하여 이미지 파일을 저장할 경로를 설정합니다.
	        String uploadDir = request.getServletContext().getRealPath("/images/profileimage");
	        File uploadDirFile = new File(uploadDir);
	        
	        // 만약 이미지 저장 디렉토리가 존재하지 않으면, 디렉토리를 생성합니다.
	        if (!uploadDirFile.exists()) {
	            uploadDirFile.mkdirs();
	        }

	        // 새로운 이미지 파일의 저장 경로를 지정합니다. 기존 파일의 이름 충돌 방지를 위해 userId를 사용합니다.
	        String filename = originalFilename;  // 사용자 ID로 파일명을 생성
	        String filePath = uploadDir + File.separator + filename;
	        File file = new File(filePath);
	        
	        if (profileImage.isEmpty()) {
	            throw new RuntimeException("Uploaded file is empty");
	        }
	        
	        // 이미지 파일을 지정된 경로에 저장합니다.
	        profileImage.transferTo(file);

	        // 저장된 파일 경로를 사용자 프로필에 업데이트합니다.
	        // 웹에서 접근할 수 있는 경로를 설정합니다.
	        String webPath = filename;
	        user.setUserProfile(webPath);

	        // 업데이트된 User 객체를 DAO를 통해 DB에 반영합니다.
	        userDao.updateUserProfile(userId, webPath);

	        return true;
	    } catch (IOException e) {
	        // IOException 발생 시 에러를 출력하고 false를 반환합니다.
	        e.printStackTrace();
	        return false;
	    }
	}
	
	// 정보 수정
		public int update(UserUpdateDto dto) {
			log.debug("update({})", dto);
			
			if(dto.getUserProfile() == null ) {
				dto.setUserProfile("");
			}
			
			if(dto.getHintQuestion() == null) {
				dto.setHintQuestion("");
			}
			
			if(dto.getHintAnswer() == null) {
				dto.setHintAnswer("");
			}
			
			int result = userDao.updateUser(dto.toEntity());
			return result;
		}

}

