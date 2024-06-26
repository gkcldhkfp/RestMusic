<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!-- JSP 페이지 지시자: 언어는 Java, 콘텐츠 타입은 text/h t m l, 
페이지 인코딩은 UTF-8, 공백을 제거 -->

<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!-- JSTL 코어 라이브러리 선언 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- 문서의 문자 인코딩을 UTF-8로 설정하고, 뷰포트를 설정하여 반응형 디자인을 지원 -->
    
    <title>Rest</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
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
        
        <h2>앨범</h2>
        
        <!-- 페이지의 주 콘텐츠 영역 시작: "앨범" 제목 표시 -->
        
        <div class="row">
            <c:set var="counter" value="0" />
            <!-- 반복문을 위한 변수 초기화 -->
            
            <c:forEach var="a" items="${albumList}">
            <!-- albumList의 각 항목에 대해 반복문 실행 -->
                <c:if test="${counter % 3 == 0 && counter != 0}">
                    </div><div class="row mt-1">
                </c:if>
                <!-- 세 번째 앨범마다 새로운 행(row) 시작 -->
                
                    <div class="col-md-4 mb-4">
                        <div class="card border-0">
                            <div class="row g-0">
                                <div class="col-md-6">
                                    <a href="albumDetail.jsp?albumId=${a.albumId}">
                                        <img src="../data/${a.albumImage}.png" class="img-fluid rounded-start" alt="${a.albumName}">
                                    </a>
                                    <!-- 앨범 이미지를 앨범 상세 페이지 링크로 설정 -->
                                </div>
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <a href="albumDetail.jsp?albumId=${a.albumId}">
                                            <h5 class="card-title mb-1">${a.albumName}</h5>
                                        </a>
                                        <p class="card-text mb-1">Album ID: ${a.albumId}</p>
                                        <p class="card-text mb-1">${a.albumType}</p>
                                        <p class="card-text mb-1">${a.albumReleaseDate}</p>
                                        <p class="card-text mb-1">Likes: ${a.likes}</p>
                                        
                                        <!-- 좋아요 버튼 추가 -->
                                        <button class="btn btn-primary" id="btnLikes" >
                                            좋아
                                        </button>
                                        
                                        <!-- 듣기 버튼 추가 -->
                                        <button class="btn btn-primary" id="btnListenAlbum">
                                            듣기
                                        </button>
                                        
                                        <img src="../data/addToPlayList.png" class="btn-img" alt="재생 목록 담기"
                                            onmouseover="showPopup(this, '재생 목록 담기')"
                                            onmouseout="hidePopup()"
                                            onclick="addToPlaylist(${a.albumId})">
                                        
                                        <img src="../data/addToMyList.png" class="btn-img" alt="내 리스트 담기"
                                            onmouseover="showPopup(this, '내 리스트 담기')"
                                            onmouseout="hidePopup()"
                                            onclick="addToMyList(${a.albumId})">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <c:set var="counter" value="${counter + 1}" />
            </c:forEach>
        </div>
    </main>
    
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

    <div id="popup" class="popup"></div>
    <!-- 팝업 표시를 위한 div -->

    
    

    
    <script>
        

        function addToPlaylist(albumId) {
            alert('앨범 ' + albumId + '이(가) 재생 목록에 추가되었습니다.');
        }

        function addToMyList(albumId) {
            alert('앨범 ' + albumId + '이(가) 내 리스트에 추가되었습니다.');
        }

        function showPopup(element, text) {
            const popup = document.getElementById('popup');
            const rect = element.getBoundingClientRect(); // 이미지 위치 가져오기
            const xOffset = 10; // 팝업의 X 축 오프셋
            const yOffset = -30; // 팝업의 Y 축 오프셋

            popup.innerHTML = text;
            popup.style.display = 'block';
            popup.style.left = rect.left + xOffset + 'px';
            popup.style.top = rect.top + window.scrollY + yOffset + 'px';
        }

        function hidePopup() {
            const popup = document.getElementById('popup');
            popup.style.display = 'none';
        }
    </script>
    
    
    
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
