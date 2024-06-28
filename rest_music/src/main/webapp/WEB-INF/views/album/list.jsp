<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Rest</title> <!-- 타이틀 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
        crossorigin="anonymous" />
    <!-- Bootstrap CSS 파일을 CDN에서 불러옴 -->
        
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- jQuery 라이브러리 불러옴 -->
    
    <link href="../css/albumList.css" rel="stylesheet" />
    <!-- css 불러옴 -->
</head>

<body>
    <div class="container-fluid">
        <%@ include file="../fragments/header.jspf"%>
        <!-- header.jspf 파일을 포함시켜 페이지 상단에 헤더 표시 -->
    </div>

    <main class="container mt-3">


        <div class="btn-group btn-group-lg" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-primary" id="btnBrandnew" >최신앨범</button>
            
            <button type="button" class="btn btn-primary" id="btnPopular" >인기앨범</button>
        </div>


        <h2>앨범</h2>
        
        <!-- 페이지의 주 콘텐츠 영역 시작: "앨범" 제목 표시 -->
        
        <div class="row">
            <c:set var="counter" value="0" />
            <!-- 반복문을 위한 변수 초기화 -->
            
            <!-- albumList의 각 항목에 대해 반복문 실행 -->
            <c:forEach var="a" items="${albumList}">
                    <div class="col-md-4 mb-4">
                        <div class="card border-0">
                            <div class="row g-0">
                                <!-- 앨범 표지 부분 -->
                                <div class="col-md-6">
                                    <a href="details?=${a.albumId}">
                                        <img src="../data/${a.albumImage}.png" class="img-fluid rounded" alt="${a.albumName}">
                                    </a>
                                </div>
                                <!-- 앨범 정보 부분 -->
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <a href="details?=${a.albumId}">
                                            <p class="card-text fw-bold">${a.albumName}</p>
                                        </a>
                                        <p class="card-text">Album ID: ${a.albumId}</p>
                                        <small class="card-text text-muted fw-bold">${a.albumType}</small>
                                        <small class="card-text fw-bold">${a.albumReleaseDate}</small>
                                        <p class="card-text">좋아요: ${a.likes}</p>
                                        
                                        <button class="btn btn-primary btn-sm" id="btnLikes"
                                            data-id="${id}">좋아요
                                        </button>
                                        
                                        <button class="btn btn-primary btn-sm" id="btnListenAlbum" >
                                            듣기
                                        </button>
                                        
                                        <button class="btn btn-primary btn-sm" id="btnAdd" >
                                            담기
                                        </button>
                                        
                                        <button class="btn btn-primary btn-sm" id="btnAddPl" >
                                            플리담기
                                        </button>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </c:forEach>
        </div>
    </main>


    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-6">
                <img src="../data/image1.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-6">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">This is a wider card with
                        supporting text below as a natural lead-in to
                        additional content. This content is a little bit
                        longer</p>
                    <p class="card-text">
                        <small class="text-muted">Last updated 3
                            mins ago</small>
                    </p>
                </div>
            </div>
        </div>
    </div>




    <div class="shadow-box">
        <p>css 실험해볼 용도로 만들어봄</p>
    </div>
    
    
    <!-- 로그인 안 한 유저에게 로그인 하라고 모달 -->
    <div id="loginModal" class="modal" tabindex="-1" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">로그인이 되지 않았습니다</h3>
                    <button type="button" class="btn-close"
                            data-bs-dismiss="modal" aria-label="Close" >
                    </button>
                </div>
                <div class="modal-body">
                    <input class="" id="modalLoginId" />
                    
                    <textarea class="form-control" id="modalCommentText"></textarea>
                </div>
                <div class="modal-footer" >
                    <button type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary" 
                        id="">확인</button>
                </div>
            </div>
        </div>
    </div>


    
    <!-- bootstrap js 라이브러리 -->
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
    <!-- Axio js 라이브러리 -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    
    <!-- 내가 만드는 js 라이브러리 -->
    <c:url var="list_js" value="/js/list.js" />
    <script src="${list_js}"></script>
    
</body>
</html>
