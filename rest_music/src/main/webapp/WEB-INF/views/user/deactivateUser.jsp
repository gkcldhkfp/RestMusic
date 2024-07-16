<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>회원 탈퇴</title>
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
        .btn-danger {
            background-color: #dc3545; /* 기본 빨간색 버튼 */
            border: none; /* 테두리 없음 */
            width: 100%; /* 버튼 가로폭 100% */
        }
        .modal-content {
            border-radius: .5rem; /* 모달 테두리 둥글게 */
        }
        .modal-header {
            border-bottom: 1px solid #dee2e6; /* 모달 헤더 하단에 구분선 */
        }
        .btn-close {
            filter: brightness(0.4); /* 버튼의 기본 밝기 조정 */
        }
        .form-label {
            color: #495057; /* 텍스트 색상 */
        }
        .modal-footer {
	        border-top: 1px solid #dee2e6; /* 모달 푸터 상단에 구분선 */
	        display: flex;
	        justify-content: space-between;
	        padding: 1rem;
	    }
	    .modal-footer .btn {
	        flex: 1;
	        margin: 0 0.5rem;
	    }
	    .btn-order-left {
	        order: -1;
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

    <div class="container mt-5">
        <h2>회원 정보</h2>
        <!-- 회원 정보 표시 -->
        <p>이름: ${user.userName}</p>
        <p>아이디: ${user.userId}</p>
        <p>닉네임: ${user.nickname}</p>
        <p>이메일: ${user.email}</p>
        
        <!-- 회원 탈퇴 버튼 -->
        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteAccountModal">
            회원 탈퇴
        </button>
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
                    <p class="text-danger">경고: 회원 탈퇴 시 30일 동안 같은 계정으로 재가입이 불가능합니다.</p>
                    <form id="deactivateForm">
                        <!-- hidden input 필드로 사용자 ID 전달 -->
                        <input type="hidden" id="id" name="id" value="${loginUserId}">
                        <div class="mb-3">
                            <label for="password" class="form-label">비밀번호</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <div class="mb-3">
                            <label for="confirmPassword" class="form-label">비밀번호 확인</label>
                            <input type="password" class="form-control" id="confirmPassword" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="deactivateButton" class="btn btn-danger">탈퇴</button>
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
    <c:url var="deactivateJS" value="/js/deactivateUser.js" />
    <script src="${deactivateJS}"></script>
    <c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>

</body>
</html>
