<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.IOException"%>
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

<link href="./css/common.css" rel="stylesheet" /> <!-- 공통 CSS 파일 포함 -->

    
    <style>
    img:hover {
        filter: brightness(80%);
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

    <div class="container" style="padding: 30px;">
        <div class="m-3 ">
            <div class="p-3">
                <!-- 아티스트 이미지 주소 지정 -->
                <c:url var="artistCover"
                    value="/artist/image/${artist.artistImage}" />
                <!-- 기본값 이미지 주소 지정 -->
                <c:url var="defaultCover"
                    value="/images/profileimage/profile.jpg" />
                <!-- 아티스트의 앨범 페이지 이동 주소 지정 -->
                <c:url var="artistAlbumPage"
                    value="/artist/albums?artistId=${artist.artistId}" />
                <img alt="artistCover" src="${artist.artistImage == null ? defaultCover : artistCover}"
                    class="rounded-circle"
                    style="display: inline-block; vertical-align: middle; left: 400px; width: 240px; height: 240px; object-fit: cover;">
                <div class="ms-3"
                    style="display: inline-block; vertical-align: middle;">
                    <h2 class="mt-2" style="font-weight: bold;">${artist.artistName}</h2>
                    <div class="mt-3">
                        <button data-id="${data.songId}" id="songButton"
                            class="btn ms-1"
                            style="border-radius: 5px; background-color: #007bff; color: white;">곡</button>
                        <button id="albumButton" class="btn ms-1"
                            onclick="window.location.href = '${artistAlbumPage}';"
                            onmouseover="this.style.color='#0056b3'"
                            onmouseout="this.style.color='black'">앨범</button>
                    </div>
                </div>
            </div>
            <div class="mt-4">
                <h4 style="font-weight: bold;">상세 정보</h4>
            </div>

            <div class="mt-3 p-2">
                <p id="artistDescription">
                    <c:catch var="error">
                        <%-- 파일 읽기를 시도하고 에러가 발생할 경우 처리 --%>
                        <c:set var="filePath"
                            value="/static/artist/description/${artist.artistDescription}" />
                        <%
                        ServletContext context = request.getServletContext();
                        String realPath = context.getRealPath((String) pageContext.getAttribute("filePath"));
                        File file = new File(realPath);
                        BufferedReader reader = null;
                        try {
                        	reader = new BufferedReader(new FileReader(file));
                        	String line;
                        	while ((line = reader.readLine()) != null) {
                        		out.println(line + "<br>");
                        	}
                        } catch (FileNotFoundException e) {
                        	out.println("등록된 정보가 없습니다.");
                        } catch (IOException e) {
                        	out.println("파일을 읽을 수 없습니다.");
                        } finally {
                        	if (reader != null) {
                        		try {
                        	reader.close();
                        		} catch (IOException e) {
                        	out.println("파일 리더를 닫는 도중 오류가 발생했습니다.");
                        		}
                        	}
                        }
                        %>
                    </c:catch>
                    <c:if test="${error ne null}">
                        <p>파일을 읽는 도중 오류가 발생했습니다.</p>
                    </c:if>
                </p>
            </div>
            <!-- Artist가 참여한 곡 출력 -->
            <div class="card-body">
                <table class="table table-striped"
                    style="border: 1px solid #ddd;">
                    <thead>
                        <tr>
                            <!-- 전체 선택 체크박스 추가 -->
                            <!--    <th style="text-align: center; vertical-align: middle;">
                                <input type="checkbox" id="selectAllCheckbox">
                            </th>  -->
                            <th style="text-align: left; vertical-align: middle;">커버</th>
                            <th style="text-align: left; vertical-align: middle; width: 55%">노래 제목</th>
                            <th style="text-align: left; vertical-align: middle;">아티스트</th>
                            <th style="text-align: center; vertical-align: middle; white-space: nowrap;">듣기</th>
                            <th style="text-align: center; vertical-align: middle; white-space: nowrap;">재생목록</th>
                            <th style="text-align: center; vertical-align: middle; white-space: nowrap;">내 리스트</th>
                        </tr>
                    </thead>
                    <tbody id="resultTable">
                        <c:forEach items="${ songs }" var="s">
                            <c:url var="albumImage"
                                value="/images/albumcover/${s.albumImage}" />
                            <c:url var="playImage"
                                value="/images/icon/play.png" />
                            <c:url var="myPlayListImage"
                                value="/images/icon/myPlayList.png" />
                            <c:url var="songPage"
                                value="/song/detail?songId=${s.songId}" />
                            <c:url var="artistPage"
                                value="/artist/songs?artistId=${s.artistId}" />
                            <tr>
                                <!--    <td style="text-align: center; vertical-align: middle;">
                                    <input type="checkbox" class="songCheckbox" data-songId="${s.songId}">
                                </td>   -->
                                <td style="text-align: left; vertical-align: middle; font-size: 14px;">
                                    <c:url var="albumPage" value="/album/detail?albumId=${s.albumId}" />
                                    <a href="${albumPage}">
                                    <img src="${albumImage}" width="80px" height="80px">
                                    </a>
                                </td>
                                <td style="text-align: left; vertical-align: middle; font-size: 14px;" class="fs-6">
                                    <a href="${songPage}"
                                    style="color: black; text-decoration: none;"
                                    onmouseover="this.style.color='blue';"
                                    onmouseout="this.style.color='black';">${s.title}</a><br>
                                    <span style="display: inline-block; margin-top: 5px;"> <!-- 여기서 margin-top 값을 조정하여 간격을 조절 -->
                                    <a href="${albumPage}"
                                    style="color: gray; text-decoration: none;"
                                    onmouseover="this.style.color='blue';"
                                    onmouseout="this.style.color='gray';">${s.albumName}</a>
                                    </span>
                                </td>
                                <td style="text-align:left; vertical-align: middle; font-size: 14px;" class="fs-6">
                                    <c:forEach items="${fn:split(s.artistName, ',')}" var="artistName" varStatus="statusName">
                                        <c:set var="artistId" value="${fn:split(s.artistIds, ',')[statusName.index]}" />
                                        <c:url var="artistPage" value="/artist/songs">
                                            <c:param name="artistId" value="${artistId.trim()}" />
                                        </c:url>
                                        <a href="${artistPage}"
                                           style="color: black; text-decoration: none;"
                                           onmouseover="this.style.color='blue';"
                                           onmouseout="this.style.color='black';">
                                            ${artistName.trim()}
                                        </a>
                                        <c:if test="${!statusName.last}">, </c:if>
                                    </c:forEach>
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
                                    <button
                                        style="background-image: url('${playImage}'); 
                                        width: 40px; height: 40px; background-size: cover; background-repeat: no-repeat;"
                                        data-songId="${s.songId}"
                                        data-id="${s.songId}"
                                        class="playButton btn"
                                        id="listenBtn"></button>
                                </td>
                                <td style="text-align: center;">
                                    <c:url var="playlistImage" value="/images/icon/playList.png" />
                                    <button
                                        data-id="${s.songId}"
                                        id="addCPList" title="재생목록에 추가"
                                        class="btn mt-3"
                                        style="background-image: url('${playlistImage}'); 
                        width: 40px; height: 40px; background-size: cover; background-repeat: no-repeat;"></button>
                                </td>
                                <td
                                    style="text-align: center; vertical-align: middle;">
                                    <button
                                        style="background-image: url('${myPlayListImage}'); 
                                        width: 40px; height: 40px; background-size: cover; background-repeat: no-repeat;"
                                        data-songId="${s.songId}"
                                        class="addPlayList btn"></button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <h5 id="defaultList" class="mt-4"
                    style="text-align: center; color: gray;"></h5>
            </div>
        </div>

        <div class="modal fade" id="staticBackdrop3"
            data-bs-backdrop="static" data-bs-keyboard="false"
            tabindex="-1" aria-labelledby="staticBackdropLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">추가할 플레이리스트</h5>
                        <button type="button" class="btn-close"
                            data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div id="playLists" class="modal-body"
                        style="height: 393px;">
                        <!--  플리가 추가 될 부분 -->
                    </div>
                    <nav aria-label="Playlist navigation">
                        <ul id="pagination"
                            class="pagination pagination-sm justify-content-center">
                            <!-- 페이징이 추가될 부분 -->
                        </ul>
                    </nav>
                    <div class="modal-footer">
                        <button type="button"
                            class="btn btn-outline-secondary"
                            data-bs-dismiss="modal">취소</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
        <%@ include file="../fragments/footer.jspf"%>
    </footer>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <script>
					let loginUserId = '${loginUserId}';
                    let refresh = '${refresh}';
					// 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
				</script>

    <c:url var="artistSongsJS" value="/js/artist_songs.js" />
    <script src="${artistSongsJS}"></script>
    <c:url var="addCPList" value="/js/addCurrentPlayList.js" />
    <script src="${addCPList}"></script>
</body>

</html>