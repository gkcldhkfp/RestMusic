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
	
	<style>
	   .button_rbox {
		  display: flex;
		  flex-wrap: wrap;
		  gap: 10px;
		}

		.btn-genre {
		  font-size: 14px;
		  color: #333;
		  border: 1px solid #d7d7d7;
		  background-color: #fff;
		  border-radius: 18px;
		  padding: 7px 15px;
		  transition: all 0.2s ease;
		  cursor: pointer;
		}
		
		.btn-genre:hover {
		  background-color: #f0f0f0;
		}
		
		.btn-genre:focus {
		  outline: none;
		}
		
		.btn-genre.active {
		  color: #fff;
		  background-color: #00cd3c;
		  border-color: #00cd3c;
		}
		
		.btn-genre.active:hover {
		  background-color: #00b534; /* 활성화 상태에서 호버 시 약간 더 어두운 녹색 */
		}
	
		#noChartMessage {
		    background-color: #f0f2f5; /* 배경색을 좀 더 부드러운 톤으로 변경 */
		    border-radius: 10px;
		    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		    transition: all 0.3s ease;
		    margin: 20px auto; /* 상하 여백 20px, 좌우 여백 자동으로 설정하여 중앙 정렬 */
		    padding: 60px 30px; /* 내부 여백 증가 */
		    width: 100%; /* 부모 요소의 너비에 맞게 설정 */
		    max-width: 1140px; /* 테이블 컨테이너의 최대 너비와 동일하게 설정 */
		    min-height: 50vh;
		    display: flex;
		    flex-direction: column;
		    justify-content: center;
		    align-items: center;
		    box-sizing: border-box; /* 패딩과 보더를 너비에 포함시킴 */
		}
		
		#noChartMessage:hover {
		    transform: translateY(-5px);
		    box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
		}
		
		#noChartMessage h3 {
		    color: #3a4a5b; /* 더 진한 색상으로 변경 */
		    font-weight: 600;
		    margin-bottom: 20px;
		    font-size: 2em; /* 글자 크기 증가 */
		}
		
		#noChartMessage p {
		    color: #5a6a7b; /* 본문 텍스트 색상 조정 */
		    font-size: 1.3em; /* 글자 크기 증가 */
		}
		
		@media (max-height: 600px) {
		    #noChartMessage {
		        min-height: 300px;
		    }
		}
	</style>
	
	<link
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
		rel="stylesheet" />
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
	       <c:url var="genreSongsUrl" value="/song/genreChart" />
	       <form id="genreForm" method="get" action="${genreSongsUrl}">
	           <%-- 장르 목록 설정 --%>
	           <div class="d-flex justify-content-start mb-3 button_rbox">
	               <c:forEach var="genre" items="${genres}">
	                   <button type="button" class="btn btn-genre me-2 genre-btn"
	                       data-genre-name="${genre}">${genre}</button>
	               </c:forEach>
	           </div>
	       </form>
	   </div>
	   
	   <%-- 차트가 없을 때 표시할 메시지 --%>
	   <div id="noChartMessage" class="text-center py-5 d-none">
	       <h3 class="text-muted">해당 장르에는 차트가 없습니다</h3>
	       <p class="lead">다른 장르를 선택해 주세요.</p>
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
                    <c:forEach var="song" items="${genreSongs}" varStatus="status">
                       <tr>
                           <td><input type="checkbox" class="songCheckbox" data-song-id="${song.songId}" /></td>
                           <td>${status.index + 1}</td>
                           <td class="song-info">
                           <%-- 앨범 디테일 페이지로 이동 --%>
                               <c:url var="albumDetailUrl" value="/album/detail">
                                   <c:param name="albumId" value="${song.albumId}" />
                               </c:url>
                               <a href="${albumDetailUrl}" class="album-link">
                                   <img alt="앨범표지" src="<c:url value='/images/albumcover/${song.albumImage}' />" class="img-fluid" />
                               </a>
                               <%-- 음원 디테일 페이지로 이동 --%>
                               <c:url var="songDetailUrl" value="/song/detail">
                                   <c:param name="songId" value="${song.songId}" />
                               </c:url> 
                               <div>
                                   <a href="${songDetailUrl}" style="font: inherit; color: inherit; text-decoration: none;">
                                       <span>${song.title}</span><br>
                                   </a>
                                   <%-- 아티스트 음원 페이지로 이동 --%>
                                   <c:forEach items="${fn:split(song.artistName, ',')}" var="artistName" varStatus="statusName">
                                        <c:set var="artistId" value="${fn:split(song.artistId, ',')[statusName.index]}" />
                                        <c:url var="artistPage" value="/artist/songs">
                                            <c:param name="artistId" value="${artistId.trim()}" />
                                        </c:url>
                                        <a href="${artistPage}"
                                           style="color: gray; text-decoration: none;"
                                           onmouseover="this.style.color='blue';"
                                           onmouseout="this.style.color='gray';">
                                            ${artistName.trim()}
                                        </a>
                                        <c:if test="${!statusName.last}">, </c:if>
                                    </c:forEach>
                               </div>
                           </td>
                           <td>
                              <c:url var="albumDetailUrl" value="/album/detail">
                                    <c:param name="albumId" value="${song.albumId}" />
                                </c:url>
                                <a href="${albumDetailUrl}" class="album-link">
                                    <span class="album-name">${song.albumName}</span>
                                </a>
                            </td>
                           <td>
                               <i class="fas fa-heart ${song.likes != null && song.likes > 0 ? 'liked' : ''} heart-icon"
                                   data-song-id="${song.songId}"
                                   data-id="${loginUserId}">
                               </i>
                               <span class="likes-count">${song.likes != null ? song.likes : 0}</span>
                           </td>
                           <td>
                                <c:url var="songPath" value="/songs/${song.songPath}" />
                                <c:url var="play" value="/images/icon/play.png" />
                                <button class="btn btn-primary btn-sm play-btn icon-button" 
                                    id="listenBtn"
                                    data-song-path="${songPath}" 
                                    data-song-id="${song.songId}" 
                                    data-id="${song.songId}">
                                    <img alt="듣기" src="${play}" />
                                </button>
                           </td>
                           <td>
                               <c:url var="playList" value="/images/icon/playList.png" />
                                <button type="button" class="icon-button" id="addCPList"
                                    data-id="${song.songId}">
                                <img alt="재생목록" src="${playList}" />
                                </button>
                           </td>
                           <td>
                                <c:url var="myPlayList" value="/images/icon/myPlayList.png" />
                                <button type="button" class="btn btn-secondary btn-sm add-to-playlist-btn icon-button" 
                                    data-song-id="${song.songId}" 
                                    data-id="${loginUserId}">
                                <img alt="담기" src="${myPlayList}" />
                                </button>
                           </td>
                           <td>
                                <a href="${song.videoLink}" target="_blank" class="icon-button video-link">
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
                   <!-- 플레이리스트 체크박스 목록이 여기에 동적으로 추가됩니다 -->
                   <div id="playLists" class="playlist-container"></div>
               </div>
               <div class="modal-footer">
                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                   <button type="button" id="btnAddSong" class="btn btn-primary">곡 추가</button>
               </div>
           </div>
        </div>
    </div>
        
    <!-- 로그인 모달 -->
    <div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="loginModalLabel">로그인 페이지로 이동</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    로그인이 필요합니다. 로그인 하시겠습니까?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="loginCancelButton">취소</button>
                    <button type="button" class="btn btn-primary" id="loginConfirmButton">확인</button>
                </div>
            </div>
        </div>
    </div>
    
    <footer>
        <!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
        <%@ include file="../fragments/footer.jspf" %>
    </footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	
	<!-- Axios JS 라이브러리 (JS 파일보다 위에 있어야 함) -->	
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	
	<script>
        const id = ${loginUserId}; // id
        const refresh = '${refresh}';
        // 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
    </script>
    
	<!-- 우리가 만든 JS 파일 -->
	<c:url var="songsByGenreJS" value="/js/songsByGenre.js" />
	<script src="${songsByGenreJS}"></script>
	
	<c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>

</body>
</html>

