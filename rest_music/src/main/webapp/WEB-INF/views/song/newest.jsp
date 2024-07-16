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
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
        crossorigin="anonymous" />
    
    <link rel="stylesheet" href="<c:url value='/css/chart.css' />"> <!-- 외부 CSS 파일 링크 -->

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
    
    <main>
        <div class="container my-3">
            <div class="d-flex justify-content-start mb-3 d-none"></div>
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
                        <th>재생목록</th>
                        <th>담기</th>
                        <th>뮤비</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="newSong" items="${newSongs}" varStatus="status">
                        <tr>
                            <td><input type="checkbox" class="songCheckbox" data-song-id="${newSong.songId}" /></td>
                            <td>${status.index + 1}</td>
                            <td class="song-info">
                            <%-- 앨범 디테일 페이지로 이동 --%>
                                <c:url var="albumDetailUrl" value="/album/detail">
                                    <c:param name="albumId" value="${newSong.albumId}" />
                                </c:url>
                                <a href="${albumDetailUrl}" class="album-link">
                                    <img alt="앨범표지" src="<c:url value='/images/albumcover/${newSong.albumImage}' />" class="img-fluid" />
                                </a>
                                <%-- 음원 디테일 페이지로 이동 --%>
                                <c:url var="songDetailUrl" value="/song/detail">
                                    <c:param name="songId" value="${newSong.songId}" />
                                </c:url> 
                                <div>
                                    <a href="${songDetailUrl}" style="font: inherit; color: inherit; text-decoration: none;">
                                        <span>${newSong.title}</span><br>
                                    </a>
                                    <%-- 아티스트 음원 페이지로 이동 --%>
                                    <c:forEach items="${fn:split(newSong.artistName, ',')}" var="artistName" varStatus="statusName">
                                        <c:set var="artistId" value="${fn:split(newSong.artistId, ',')[statusName.index]}" />
                                        <c:url var="artistPage" value="/artist/songs">
                                            <c:param name="artistId" value="${artistId.trim()}" />
                                        </c:url>
                                        <a href="${artistPage}"
                                            style="color: gray; text-decoration: none;"
                                            onmouseover="this.style.color='#007bff';"
                                            onmouseout="this.style.color='gray';">
                                            ${artistName.trim()}
                                        </a> 
                                        <c:if test="${!statusName.last}">, </c:if>
                                    </c:forEach>
                                </div>
                            </td>
                            <td>
                                <c:url var="albumDetailUrl" value="/album/detail">
                                    <c:param name="albumId" value="${newSong.albumId}" />
                                </c:url>  
                                <a href="${albumDetailUrl}" style="color: gray; text-decoration: none;"
                                            onmouseover="this.style.color='#007bff';"
                                            onmouseout="this.style.color='gray';" class="album-link">
                                <span class="album-name">${newSong.albumName}</span>
                                </a>
                            </td>
                            <td>
                                <i class="fas fa-heart ${newSong.likes != null && newSong.likes > 0 ? 'liked' : ''} heart-icon"
                                    data-song-id="${newSong.songId}"
                                    data-id="${loginUserId}">
                                </i>
                                <span class="likes-count">${newSong.likes != null ? newSong.likes : 0}</span>
                            </td>
                            <td>
                                <c:url var="songPath" value="/songs/${newSong.songPath}" />
								<c:url var="play" value="/images/icon/play.png" />
								<button class="btn btn-primary btn-sm play-btn icon-button" 
								    id="listenBtn"
								    data-song-path="${songPath}" 
								    data-song-id="${newSong.songId}" 
								    data-id="${newSong.songId}">
								    <img alt="듣기" src="${play}" />
								</button>
                            </td>
							<td>
                                <c:url var="playList" value="/images/icon/playList.png" />
                                <button type="button" class="icon-button" id="addCPList"
                                    data-id="${newSong.songId}">
								<img alt="재생목록" src="${playList}" />
								</button>
                            </td>
                            <td>
                                <c:url var="myPlayList" value="/images/icon/myPlayList.png" />
                                <button type="button" class="btn btn-secondary btn-sm add-to-playlist-btn icon-button" 
                                    data-song-id="${newSong.songId}" 
                                    data-id="${loginUserId}">
                                <img alt="담기" src="${myPlayList}" />
                                </button>
                            </td>
                            <td>
                                <a href="${newSong.videoLink}" target="_blank" class="icon-button video-link">
                                <i class="fas fa-video"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>
    
    <!-- 플로팅 버튼 그룹 -->
	<div id="floatingButtonGroup" class="floating-button-group d-none">
	    <div class="selected-count mb-2">0개 선택됨</div>
	    <div class="btn-group" role="group">
	        <button type="button" class="btn btn-primary btn-sm play-selected">
	            <c:url var="play" value="/images/icon/play.png" />
	            <img src="${play}" alt="듣기" class="btn-icon"> 듣기
	        </button>
	        <button type="button" class="btn btn-primary btn-sm add-to-playlist">
	            <c:url var="playList" value="/images/icon/playList.png" />
	            <img src="${playList}" alt="재생목록" class="btn-icon"> 재생목록
	        </button>
	        <button type="button" class="btn btn-primary btn-sm add-to-my-list">
	            <c:url var="myPlayList" value="/images/icon/myPlayList.png" />                       
	            <img src="${myPlayList}" alt="담기" class="btn-icon"> 담기
	        </button>
	    </div>
	    <button type="button" class="btn btn-secondary btn-sm deselect-all mt-2">선택 해제</button>
	</div>
	
    <!-- 플레이리스트 모달 -->
    <div class="modal fade" id="selectPlayList" tabindex="-1" aria-labelledby="selectPlayListLabel" aria-hidden="true">
	   <div class="modal-dialog modal-lg">
	       <div class="modal-content">
	           <div class="modal-header">
	               <h5 class="modal-title" id="selectPlayListLabel">플레이리스트 선택</h5>
	               <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	           </div>
	           <div class="modal-body">
	               <div id="playLists" class="playlist-container"></div>
	           </div>
	           <div class="modal-footer">
	               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
	               <button type="button" id="btnAddSong" class="btn btn-primary">곡 추가</button>
	           </div>
	       </div>
	   </div>
	</div>
    
    <footer>
        <div class="container">
            <%@ include file="../fragments/footer.jspf" %>
        </div>
    </footer>
     
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
    <!-- Axios JS 라이브러리 (JS 파일보다 위에 있어야 함) -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    
    <script>
        const id = ${loginUserId}; // id
        let refresh = '${refresh}';
        // 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
    </script>
    
    <!-- 우리가 만든 JS 파일 -->
    <c:url var="songsNewJS" value="/js/songsNewest.js" />
    <script src="${songsNewJS}"></script>
    
    <c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>
    
</body>
</html>
