<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>회원가입</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <style>
        .form-signup {
            max-width: 500px;
            padding: 15px;
            margin: 0 auto;
        }
        .form-signup .form-signup-heading, .form-signup .checkbox {
            margin-bottom: 10px;
        }
        .form-signup .checkbox {
            font-weight: 400;
        }
        .form-signup .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }
        .form-signup .form-control:focus {
            z-index: 2;
        }
        .form-signup input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
        .form-signup input[type="email"], .form-signup input[type="text"], .form-signup input[type="password"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        .form-signup input[type="text"]:not(:first-child) {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="container-fluid">
<%--            <c:set var="pageTitle" value="Rest" scope="page" />--%>
            <%@ include file="../fragments/header.jspf"%>
        </div>
    </header>


    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/user/signin">로그인</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/user/signup">회원가입</a>
            </li>
        </ul>
    </div>

    <div class="container">
        <form class="form-signup" method="post" action="${pageContext.request.contextPath}/user/signup">
            <h2 class="form-signup-heading">회원가입</h2>
            <label for="userid" class="sr-only">아이디</label>
            <div class="input-group">
                <input type="text" id="userid" name="userId" class="form-control" placeholder="아이디" required autofocus>
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button" id="checkIdBtn">중복 확인</button>
                </div>
            </div>
            <div id="checkUseridResult" class="text-danger"></div>

            <label for="username" class="sr-only">이름</label>
            <input type="text" id="username" name="userName" class="form-control" placeholder="이름" required>

            <label for="password" class="sr-only">비밀번호</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="비밀번호" required>

            <label for="confirmPassword" class="sr-only">비밀번호 확인</label>
            <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="비밀번호 확인" required>
            <div id="checkPasswordResult" class="text-danger"></div>

            <label for="email" class="sr-only">이메일</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="이메일" required>
            <div id="checkEmailResult" class="text-danger"></div>

            <label for="nickname" class="sr-only">닉네임</label>
            <input type="text" id="nickname" name="nickname" class="form-control" placeholder="닉네임" required>

            <label for="userProfile" class="form-label">Default file input example</label>
            <input class="form-control" type="file" id="userProfile" name="userProfile">

            <input type="hidden" id="hintQuestion" name="hintQuestion" value="">
            <label for="hintQuestionSelect" class="sr-only" style="color: #495057 !important;">힌트 질문</label>
            <select class="form-control" id="hintQuestionSelect" name="hintQuestionSelect" required="required" style="height: 50px; border-radius: 0 !important; ">
                <option value="" selected>힌트 질문</option>
                <option value="1">좋아하는 색깔은?</option>
                <option value="2">핸드폰번호 뒷자리는?</option>
                <option value="3">내 성별은?</option>
            </select>

            <label for="hintAnswer" class="sr-only">힌트 답변</label>
            <input type="text" id="hintAnswer" name="hintAnswer" class="form-control" placeholder="힌트 답변" required>

            <button class="btn btn-lg btn-primary btn-block disabled" type="submit" id="btnSignUp">가입 완료</button>
        </form>
    </div>
    <c:url var="sign_up_js" value="/js/signup.js" />
    <script src="${sign_up_js}"></script>
</body>
</html>