<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Spring Legacy 2</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
        crossorigin="anonymous" />
</head>
<body>
    <header>
        <div class="container-fluid">
            <%@ include file="../fragments/header.jspf"%>
        </div>
    </header>
    <div class="container-fluid">
        <main>
            <div class="my-2 card">
                <div class="card-header text-center">
                    <h2>로그인 페이지</h2>
                </div>
                <div class="card-body">
                    <form method="post">
                        <c:if test="${not empty param.result and param.result eq 'f'}">
                            <div class="text-danger">아이디와 비밀번호를 확인하세요.</div>
                        </c:if>
                        <div class="my-2">
                            <input class="form-control" 
                                type="text" name="userId" id="userId" placeholder="아이디" required />
                        </div>
                        <div class="my-2">
                            <input class="form-control" 
                                type="password" name="password" placeholder="비밀번호" required />
                        </div>
                        <div class="form-check my-2">
                            <input class="form-check-input" type="checkbox" name="saveIdYn" id="saveIdYn" />
                            <label class="form-check-label" for="saveIdYn">
                                아이디 저장
                            </label>
                        </div>
                        <input type="hidden" value="${param.target}"/>
                        <div class="my-2">
                            <input class="form-control btn btn-outline-success" 
                                type="submit" value="로그인" />
                        </div>
                        <div class="my-2">
                            <input class="form-control btn btn-outline-success"
                                   type="button" value="회원가입" onClick="location.href='/Rest/user/signup'"/>
                        </div>
                        <div class="my-2">
                            <input class="form-control btn btn-outline-success"
                                   type="button" value="아이디 찾기" onClick="location.href='/Rest/user/findUserId'"/>
                        </div>
                        <div class="my-2">
                            <input class="form-control btn btn-outline-success"
                                   type="button" value="비밀번호 찾기" onClick="location.href='/Rest/user/findPassword'"/>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>

    <c:url var="sign_in_js" value="/js/signin.js" />
    <script src="${sign_in_js}"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
        crossorigin="anonymous"></script>
</body>
</html>
