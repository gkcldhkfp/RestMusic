<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Rest</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
        crossorigin="anonymous" />
    <!-- Bootstrap CSS 파일을 CDN에서 불러옴 -->

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- jQuery 라이브러리 불러옴 -->
    
    <link href="../../css/albumList.css" rel="stylesheet" />
    <!-- css 불러옴 -->
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Font Awesome 불러옴 -->
    <link href="../../css/common.css" rel="stylesheet" /> <!-- 공통 CSS 파일 포함 -->
</head>

<body>
    <header>
        <div class="container-fluid">
            <%@ include file="../fragments/header.jspf"%>
            <!-- header.jspf 파일을 포함시켜 페이지 상단에 헤더 표시 -->
        </div>
    </header>
    
    <main class="container mt-3">
        <div class="container d-flex justify-content-start mb-3 button_rbox" >
            <button type="button" class="btn btn-sort me-2 sort-btn" id="btnPopular">인기앨범</button>
            <button type="button" class="btn btn-sort me-2 sort-btn" id="btnNewest">최신앨범</button>
        </div>



        <!-- 페이지의 주 콘텐츠 영역 시작 -->
        <c:set var="listType" value="${sessionScope.listType}" />

        <!-- 리스트 1 기본 정렬 -->
            <div class="row">
                <c:forEach var="a" items="${albumList}">
                    <div class="col-md-4 mb-4">
                        <div class="card border-0">
                            <div class="row g-0">
                                <!-- 앨범 표지 부분 -->
                                <div class="col-md-6">
                                    <a href="../detail?albumId=${a.albumId}">
                                    <c:url var="albumImage" value="/images/albumcover/${a.albumImage}" />
                                        <img src="${albumImage}" class="img-fluid rounded" alt="${a.albumName}">
                                    </a>
                                </div>
                                <!-- 앨범 정보 부분 -->
                                <div class="col-md-6">
                                    <div class="card-body">
                                        <div style="height: 100px;">
                                            <a href="../detail?albumId=${a.albumId}">
                                                <p class="card-text fw-bold">${a.albumName}</p>
                                            </a>
                                            <c:forEach items="${fn:split(a.artistName, ',')}" var="artistName" varStatus="statusName">
                                                <c:set var="artistId" value="${fn:split(a.artistId  , ',')[statusName.index]}" />
                                                <c:url var="artistPage" value="/artist/songs">
                                                    <c:param name="artistId" value="${artistId.trim()}" />
                                                </c:url>
                                                <a href="${artistPage}">
                                                    <small style="color: gray;">${artistName.trim()}</small>
                                                </a>
                                                <c:if test="${!statusName.last}"><span style="margin-right: 5px;">, </span></c:if>
                                            </c:forEach>
                                        </div>
                                        <div style="color: gray;">
                                        <small class="card-text text-muted fw-bold">${a.albumType}</small>
                                        <small> | </small>
                                        <small id="rDate" class="card-text fw-bold">${a.albumReleaseDate}</small>
                                        <br />
                                            <i class="fas fa-heart ${a.likesCount != null && a.likesCount > 0 ? 'liked' : ''} heart-icon"
                                                data-song-id="${a.songId}"
                                                data-id="${loginUserId}">
                                            </i>
                                            <span class="likes-count">${a.likesCount != null ? a.likesCount : 0}</span>
                                        </div>
                                        <%-- <p class="card-text">좋아요:
                                            ${a.likesCount}</p> --%>
                                            
                                        <div style="vertical-align: middle;">
                                            <%-- <button class="btn btn-primary btn-sm" id="btnLikes" data-id="${a.albumId}">
                                                <i class="fas fa-heart"></i>
                                            </button> --%>
    
                                        <c:url var="songPath" value="/songs/${a.songPath}" />
                                        <c:url var="play" value="/images/icon/play.png" />
                                        <button id = "btnListenAlbum" style="background-image: url('${play}'); 
                                        width: 30px; height: 30px; background-size: cover; background-repeat: no-repeat;"
                                        data-songId="${a.songId}" data-id="${a.albumId}" class="playButton btn"></button>
    
                                        <c:url var="playlistImage" value="/images/icon/playList.png" />
                                        <button id = "btnAddCPListAlbum" data-id="${a.albumId}" title="재생목록에 추가" class="btn mx-2"
                                        style="background-image: url('${playlistImage}'); 
                                        width: 39px; height: 39px; background-size: cover; background-repeat: no-repeat;"></button>
    
                                        <c:url var="myPlayListImage" value="/images/icon/myPlayList.png" />
                                        <button id = "btnListenAlbum" style="background-image: url('${myPlayListImage}'); 
                                        width: 30px; height: 30px; background-size: cover; background-repeat: no-repeat;"
                                        data-songId="${a.songId}" data-id="${a.albumId}" class="addPlayList btn d-none"></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
    </main>

    <footer>
        <!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
        <%@ include file="../fragments/footer.jspf" %>
    </footer>


    <style>
    .popup {
        position: absolute;
        background-color: rgba(0, 0, 0, 0.8);
        color: white;
        padding: 5px;
        border-radius: 5px;
        font-size: 14px;
        display: none; /* 처음에는 숨겨진 상태 */
    }

    a {
        text-decoration: none; /* 밑줄 제거 */
    }

    a:hover {
        color: #0000ff; /* 마우스를 올렸을 때 색상 변경 (진한 검정)*/
    }

    .shadow-box {
        border-radius: 25px;
        /* 요소의 모서리를 둥글게 만듭니다. 반경은 25픽셀입니다. */
        padding: 2.5em;
        /* 요소의 내용 주위에 2.5em(현재 요소의 글꼴 크기의 2.5배)의 내부 여백을 추가합니다. */
        box-shadow: 0 20px 50px -25px rgba(0, 0, 0, 0.7);
        /* 요소에 그림자를 추가합니다. 그림자의 위치와 크기는 다음과 같습니다:
           - X축 오프셋: 0픽셀 (왼쪽 또는 오른쪽으로 이동 없음)
           - Y축 오프셋: 20픽셀 (아래로 20픽셀 이동)
           - 그림자 흐림 반경: 50픽셀 (그림자가 부드럽게 퍼짐)
           - 그림자 확산 반경: -25픽셀 (그림자가 덜 확산됨)
           - 그림자 색상: rgba(0, 0, 0, 0.7) (검정색, 투명도 70%) */
        display: flex;
        /* 요소를 flexbox 컨테이너로 만듭니다. */
        align-items: center;
        /* 컨테이너 내의 자식 요소들을 수직 중앙으로 정렬합니다. */
        justify-content: center;
        /* 컨테이너 내의 자식 요소들을 수평 중앙으로 정렬합니다. */
        background-color: olive;
        /* 요소의 배경색을 올리브색으로 설정합니다. */
    }
    
     p {
        margin: 0;  /* p태그 기본 마진 제거 */
    }
    

    </style>

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
    <c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>
    <script>
	let refresh = '${refresh}';
    // 리다이렉트 할 때 재생페이지를 새로고침하기위한 코드

    $(document).ready(function(){
        // 버튼 클릭 이벤트
        $('#btnNewest').click(function() {
            window.location.href = '/Rest/album/list/newest';
        });

        $('#btnPopular').click(function() {
            window.location.href = '/Rest/album/list/popular';
        });
    });

    </script>

</body>
</html>
