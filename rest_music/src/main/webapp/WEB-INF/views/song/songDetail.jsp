<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
    crossorigin="anonymous">
    <title>Rest</title>

</head>
<body>
    <%@ include file="../fragments/header.jspf"%>
    
    <div class="container-fluid">
    
        <div class="m-5" >
            <div class="p-3">
                <div class="" >
                    <c:url var="songimg" value="/images/test.jpg" ></c:url>
                    <img alt="songImg" src="${songimg}" class="rounded " style="display: inline-block;  vertical-align: middle; left:400px" >
                    <div class="ms-2" style="display: inline-block;  vertical-align: middle;">
                        <h2 class="mt-2">제목</h2>
                        <p class="mt-4">가수</p>
                        <p class="mt-2">앨범</p>
                        <div class="mt-3">
                            <button class="btn btn-success" value="ww">www</button>
                            <button class="btn btn-success" value="ww">www</button>
                            <button class="btn btn-success" value="ww">www</button>
                        </div>
                    </div>
                </div>            
            </div>
            <div class="mt-4">
                <h4>상세 정보</h4>
                <p> <span class="mt-3 fw-bold">곡명</span><span class="ms-3">TODO</span></p>
                <p> <span class="mt-3 fw-bold">작사</span><span class="ms-3">TODO</span></p>
                <p> <span class="mt-3 fw-bold">작곡</span><span class="ms-3">TODO</span></p>
                <p> <span class="mt-3 fw-bold">편곡</span><span class="ms-3">TODO</span></p>
            </div>
            
            <div class="mt-3">
                
            </div>
            
            <section class="mt-3">
                <!-- 댓글 -->
                <c:url var="createComment" value="/"></c:url>
                <form class="row" action="${createComment}" method="get">
                     <div class="col-10">
                         <!-- 댓글 입력 -->
                         <textarea class="form-control" rows="3" id="ctext" placeholder="댓글 내용"></textarea>
                         <input class="form-control" id="username" type="text" />
                     </div>
                     <div class="col-2">
                         <button class="btn btn-outline-success"  id="btnRegisterComment">등록</button>
                    </div>
                </form>
                <div>
                    <!-- 댓글 목록 -->
                </div>
            </section>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
    crossorigin="anonymous"></script>
</body>
</html>