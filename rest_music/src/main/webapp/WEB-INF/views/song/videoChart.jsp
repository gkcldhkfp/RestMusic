<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Top 30</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
        crossorigin="anonymous" />
    
    <link rel="stylesheet" href="<c:url value='/css/popular.css' />"> <!-- 외부 CSS 파일 링크 -->

    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        rel="stylesheet" />
    <link href="./css/common.css" rel="stylesheet" /> <!-- 공통 CSS 파일 포함 -->
</head>
<body>
    <header>
        <div class="container-fluid">
            <c:set var="pageTitle" value="Rest" scope="page" />
            <%@ include file="../fragments/header.jspf"%>
        </div>
    </header>

    <div class="container my-3">
        <div class="d-flex justify-content-start mb-3 d-none">
            <button type="button" class="btn btn-outline-primary me-2 active">TOP 30</button>
            <button type="button" class="btn btn-outline-primary me-2">OST</button>
            <button type="button" class="btn btn-outline-primary me-2">댄스</button>
            <button type="button" class="btn btn-outline-primary me-2">발라드</button>
            <button type="button" class="btn btn-outline-primary me-2">팝</button>
            <button type="button" class="btn btn-outline-primary">힙합</button>
        </div>
    </div>

    <div class="container">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th><input type="checkbox" id="selectAllCheckbox" /></th>
                    <th>순위</th>
                    <th>곡 정보</th>
                    <th>앨범</th>
                    <th>좋아요</th>
                    <th>듣기</th>
                    <th>담기</th>
                    <th>뮤비</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="top" items="${topSongs}" varStatus="status">
                    <tr>
                        <td><input type="checkbox" class="songCheckbox" /></td>
                        <td>${status.index + 1}</td>
                        <td class="song-info">
                            <c:url var="albumImageUrl" value="/data/${top.albumImage}" />
                            <img alt="앨범표지" src="${albumImageUrl}" class="img-fluid" />
                            <div>
                                <div>${top.title}</div>
                                <div>${top.singerName}</div>
                            </div>
                        </td>
                        <td>${top.albumName}</td>
                        <td>
                            <i class="fas fa-heart ${top.likes != null && top.likes > 0 ? 'liked' : ''}" data-song-id="${top.songId}"></i> 
                            <span class="likes-count">${top.likes != null ? top.likes : 0}</span>
                        </td>
                        <td>
                            <c:url var="songPath" value="/data/${top.songPath}" />
						   <!--  <a href="#" class="btn btn-primary btn-sm play-btn" data-song-path="../${top.songPath}"> -->
						    <a href="#" class="btn btn-primary btn-sm play-btn" data-song-path="${songPath}">
						        <i class="fas fa-play"></i>
						    </a>
						</td>
                        <td>
                            <button type="button" class="btn btn-secondary btn-sm">
                                <i class="fas fa-plus"></i>
                            </button>
                        </td>
                        <td>
                            <a href="${top.videoLink}" target="_blank" class="btn btn-secondary btn-sm">
                                <i class="fas fa-video"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <footer>
        <!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
        <%@ include file="../fragments/footer.jspf" %>
    </footer>
    
    <!-- 재생할 MP3 오디오 태그 -->
    <audio id="audioPlayer" controls>
        <!-- MP3 파일 경로를 동적으로 설정할 수 있도록 스크립트로 처리 -->
        <source id="audioSource" src="" type="audio/mpeg">
        Your browser does not support the audio element.
    </audio>

    <script>
        const singerName = '${ album.artistName }';
        const albumId = ${ album.albumId };
        const id = '${loginUserId}'; //id
        const refresh = '${refresh}';
        // 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
    </script>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
    <!-- Axios JS 라이브러리 (JS 파일보다 위에 있어야 함) -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    
    <!-- 우리가 만든 JS 파일 -->
    <c:url var="songLikesJS" value="/js/songLikes.js" />
    <script src="${songLikesJS}"></script>
    <c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>
    
</body>
</html>
