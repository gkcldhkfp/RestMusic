<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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
</style>
</head>
<body>
    <div class="container-fluid">
        <%@ include file="../fragments/header.jspf"%>
    </div>

    <main class="container mt-3">
        <h2>앨범></h2>
        
        
        <div class="row">
            <c:set var="counter" value="0" />
            <c:forEach var="a" items="${albumList}">
                <c:if test="${counter % 3 == 0 && counter != 0}">
                    </div><div class="row mt-1">
                </c:if>
                <div class="col-md-4 mb-4">
                    <div class="card border-0">
                        <div class="row g-0">
                            <div class="col-md-6">
                                <img src="../data/${a.albumImage}.png" class="img-fluid rounded-start" alt="${a.albumName}">
                            </div>
                            <div class="col-md-6">
                                <div class="card-body">
                                    <h5 class="card-title mb-1" >${a.albumName}</h5>
                                    <p class="card-text mb-1" >${a.albumId}</p>
                                    <p class="card-text mb-1" >${a.albumType}</p>
                                    <p class="card-text" >${a.albumReleaseDate}</p>
                                    
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

    <div id="popup" class="popup"></div>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
    </script>
    
    <script>
        function addToPlaylist(albumId) {
            // 앨범을 재생 목록에 추가하는 로직을 구현
            alert('앨범 ' + albumId + '이(가) 재생 목록에 추가되었습니다');
        }

        function addToMyList(albumId) {
            // 앨범을 "내 리스트"에 추가하는 로직을 구현
            alert('앨범 ' + albumId + '이(가) 내 리스트에 추가되었습니다');
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
</body>
</html>
