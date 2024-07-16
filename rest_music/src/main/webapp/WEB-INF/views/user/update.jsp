<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>회원 정보 변경</title>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous" />
<link href="<c:url value='/css/common.css' />" rel="stylesheet"> <!-- 공통 CSS 파일 포함 -->
<style>
    body {
        background-color: #f8f9fa; /* 부드러운 회색 배경 */
    }
    .container {
        background: #ffffff; /* 흰색 배경 */
        padding: 2rem;
        border-radius: .5rem;
        box-shadow: 0 0 .5rem rgba(0, 0, 0, .1); /* 가벼운 그림자 */
        max-width: 600px;
        margin: 2rem auto; /* 가운데 정렬 */
    }
    h2 {
        margin-bottom: 1.5rem;
        text-align: center; /* 텍스트 중앙 정렬 */
    }
    .form-label {
        color: #495057; /* 텍스트 색상 */
    }
    .btn-primary {
        background-color: #007bff; /* 기본 파란색 버튼 */
        border: none; /* 테두리 없음 */
    }
    .btn-secondary {
        background-color: #6c757d; /* 기본 회색 버튼 */
        border: none; /* 테두리 없음 */
    }
    .btn-danger {
        background-color: #dc3545; /* 기본 빨간색 버튼 */
        border: none; /* 테두리 없음 */
    }
    .modal-content {
        border-radius: .5rem; /* 모달 테두리 둥글게 */
    }
    .modal-header {
        border-bottom: 1px solid #dee2e6; /* 모달 헤더 하단에 구분선 */
    }
    .modal-footer {
        border-top: 1px solid #dee2e6; /* 모달 푸터 상단에 구분선 */
    }
    .btn-close {
        filter: brightness(0.4); /* 버튼의 기본 밝기 조정 */
    }
    .text-center {
        text-align: center; /* 텍스트 중앙 정렬 */
    }
    .w-100 {
        width: 100%; /* 버튼이 가로폭 100% */
    }
    .form-group {
        margin-bottom: 1rem; /* 폼 요소 간의 여백 */
    }
    .profile-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 1.5rem; /* 프로필 이미지와 버튼 사이의 여백 */
    }
    .profile-img {
        width: 200px;
        height: 200px;
        border-radius: 50%;
        object-fit: cover; /* 이미지 비율 유지 및 잘림 방지 */
        margin-bottom: 1rem; /* 프로필 이미지와 버튼 사이의 여백 */
    }
    .btn-group {
        width: 100%;
        display: flex;
        justify-content: center;
        margin-top: 1rem;
    }
    .btn-change-profile, .btn-delete-profile !important {
        flex: 1;
        max-width: 260px; /* 최대 너비 설정 */
    }
    .btn-delete-profile !important{
        margin-left: 0.5rem; /* 버튼 사이 간격 */
    }
    .btn-submit, .btn-deactivate, .btn-cancel {
        width: 100%; /* 버튼이 가로폭 100% */
    }
    .btn-submit {
        margin-top: 1rem; /* 저장 버튼과 입력 폼 사이의 여백 */
    }
    .btn-deactivate {
        margin-top: 2rem; /* 탈퇴 버튼과 입력 폼 사이의 여백 */
    }
    .btn-cancel {
        margin-top: 1rem; /* 취소 버튼과 저장 버튼 사이의 여백 */
    }
    .input-group-append {
        margin-left: 0.5rem; /* 인증번호 받기 버튼과 이메일 입력 폼 사이의 여백 */
    }
    .form-row {
        display: flex;
        gap: 0.5rem; /* 버튼 사이 간격 */
    }
</style>
</head>
<body>
    <header>
        <div class="container-fluid">
            <c:set var="pageTitle" value="Rest" scope="page" />
            <%@ include file="../fragments/header.jspf"%>
        </div>
    </header>

    <div class="container my-5">
        <h2>회원 정보</h2>
        
        <c:url var="userUpdatePage" value="/user/update" />
        <form method="post" action="${userUpdatePage}" id="updateUserForm" enctype="multipart/form-data">
        
            <!-- 프로필 이미지와 버튼 -->
            <div class="profile-container">
                <c:url var="profileImg" value="../images/profileimage/profile.jpg" />
                <c:url var="userProfile2" value="/images/profileimage/${user.userProfile}" />
                <img id="profileImagePreview" alt="profileImg" src="${user.userProfile == null ? profileImg : userProfile2}"
                    class="profile-img" />
                
                            <!-- <c:url var="userProfile" value="file:///C:/Users/gusdn/git/REST_Music-Streaming_Website/rest_music${user.userProfile}" /> -->
                             <!-- <img id="profileImagePreview" src="${user.userProfile == null ? 'file:///C:/Users/gusdn/git/REST_Music-Streaming_Website/rest_music/images/profileimage/default-profile.jpg' : userProfile}" alt="Profile Image" class="profile-img" />  -->
                    
                    
                    
                <!-- 프로필 변경 및 삭제 버튼 -->
                <div class="btn-group" role="group" aria-label="Profile image actions">
                    <button type="button" class="btn btn-secondary btn-change-profile" data-bs-toggle="modal" data-bs-target="#changeProfileModal">프로필 변경</button>
                    <button type="button" class="btn btn-danger" id="btnDeleteProfile">삭제</button>
                </div>
            </div>
            
            <div class="mb-3">
                <label for="userName" class="form-label">이름</label>
                <input type="text" class="form-control" id="userName" name="userName" value="${user.userName}" readonly autofocus>
            </div>
            <div class="mb-3">
                <label for="userId" class="form-label">아이디</label>
                <input type="text" class="form-control" id="userId" name="userId" value="${user.userId}" readonly>
            </div>
            <div class="mb-3">
                <label for="nickname" class="form-label">닉네임</label>
                <div class="input-group">
                    <input type="text" class="form-control" id="nickname" name="nickname" value="${user.nickname}" required>
                </div>
                <div id="checkNicknameResult" class="form-text"></div>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">이메일</label>
                <div class="input-group">
                    <input type="email" class="form-control" id="email" name="email" value="${user.email}" required>
                    <div class="input-group-append">
                        <button type="button" class="btn btn-primary" id="mailCheckBtn">인증번호 받기</button>
                    </div>
                </div>
                <div id="checkEmailResult" class="form-text text-danger"></div>
            </div>
            <div class="input-group mb-3">
                <input type="text" id="emailVerificationCode" name="emailAuthNumber" class="form-control"
                       placeholder="인증번호를 입력해주세요" maxlength="6" disabled>
                <div class="input-group-append">
                    <button type="button" class="btn btn-primary" id="verifyCodeBtn">인증번호 확인</button>
                </div>
            </div>
            <div id="emailVerificationResult" class="form-text text-danger"></div>
            <div class="mb-3">
                <label for="password" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="새 비밀번호 ">
            </div>
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">비밀번호 확인</label>
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="비밀번호 확인">
                <div id="checkPasswordResult"></div>
            </div>
            <div class="mb-3">
                <label for="hintQuestion" class="form-label">힌트 질문</label>
                <select class="form-control" id="hintQuestionSelect" name="hintQuestionSelect">
                    <option value="" selected>힌트 질문 선택</option>
                    <option value="좋아하는 색깔은?">좋아하는 색깔은?</option>
                    <option value="핸드폰번호 뒷자리는?">핸드폰번호 뒷자리는?</option>
                    <option value="내 성별은?">내 성별은?</option>
                </select>
                <input type="text" class="form-control mt-2 d-none" id="hintQuestion" name="hintQuestion" value="${user.hintQuestion}" readonly>
            </div>
            <div class="mb-3">
                <label for="hintAnswer" class="form-label">힌트 답변</label>
                <input type="text" class="form-control" id="hintAnswer" name="hintAnswer" value="${user.hintAnswer}">
                <div id="checkHintAnswerResult" class="form-text"></div>
            </div>
            <div class="form-row">
                <button type="submit" class="btn btn-primary btn-submit" id="btnModify">회원 정보 변경</button>
                <button type="button" class="btn btn-secondary btn-cancel" id="cancelButton">취소</button>
            </div>
        </form>
        
        <hr>
        <button class="btn btn-danger btn-deactivate" data-bs-toggle="modal" data-bs-target="#deleteAccountModal">회원 탈퇴</button>
    </div>
    
    <!-- 프로필 변경 모달 -->
    <div class="modal fade" id="changeProfileModal" tabindex="-1" aria-labelledby="changeProfileModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="changeProfileModalLabel">프로필 이미지 변경</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                
                <div class="modal-body">
                    <!-- 프로필 이미지 파일 업로드 폼 -->
                    <form id="changeProfileForm" enctype="multipart/form-data">
                        <input type="hidden" id="hiddenUserId" name="userId" value="${user.userId}">
                        <div class="mb-3">
                            <label for="profileImage" class="form-label">새 프로필 이미지 선택</label>
                            <input type="file" class="form-control" id="profileImageInput" name="profileImage" accept="image/*" required>
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-primary" id="btnChangeProfile">변경</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 회원 탈퇴 모달 -->
    <div class="modal fade" id="deleteAccountModal" tabindex="-1" aria-labelledby="deleteAccountModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteAccountModalLabel">회원 탈퇴</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>정말로 회원 탈퇴 페이지로 이동하시겠습니까?</p>
                    <p>회원 탈퇴 시 같은 계정으로 30일 동안 재가입이 불가능합니다.</p>
                </div>
                <div class="modal-footer">
                    <!-- 탈퇴 버튼을 링크로 변경 -->
                    <c:url var="userDeactivate" value="/user/deactivateUser" />
                    <a href="${userDeactivate}" class="btn btn-danger">회원 탈퇴 페이지로 이동</a>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
        <%@ include file="../fragments/footer.jspf" %>
    </footer>

    <script>
        let refresh = '${refresh}';
        // 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
    </script>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        
    <!-- JS 파일 지정 -->
    <c:url var="updateJS" value="/js/update.js" />
    <script src="${updateJS}"></script> 
    <c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>
</body>
</html>
