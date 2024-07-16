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
<link href="./css/home.css" rel="stylesheet" />

<!-- css 불러옴 -->
<style>
@font-face {
    font-family: 'MICEGothic Bold';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}
* {
    box-sizing: border-box
}

body {
    font-family: 'MICEGothic Bold', Verdana, sans-serif;
    margin: 0
}

.mySlides {
    display: none
}

img {
    vertical-align: middle;
}

.slideshow-container {
    max-width: 1000px;
    position: relative;
    margin: auto;
}

.prev, .next {
    cursor: pointer;
    position: absolute;
    top: 50%;
    width: auto;
    padding: 16px;
    margin-top: -22px;
    color: white;
    font-weight: bold;
    font-size: 18px;
    transition: 0.6s ease;
    border-radius: 0 3px 3px 0;
    user-select: none;
}

.next {
    right: 0;
    border-radius: 3px 0 0 3px;
}

.prev:hover, .next:hover {
    background-color: rgba(0, 0, 0, 0.8);
}

.numbertext {
    color: #f2f2f2;
    font-size: 12px;
    padding: 8px 12px;
    position: absolute;
    top: 0;
}

.dot {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
}

.active, .dot:hover {
    background-color: #717171;
}

.content-container {
    margin: 0 350px; /* 양쪽 여백 추가 */

}



h3 {
    margin-top: 100px; /* 상단 여백 추가 */
    font-size: 1.5rem !important; /* 글씨 크기*/
}

/* 뮤직비디오*/
.video-container {
    display: flex;
    flex-wrap: wrap;
    gap: 10px; /* 동영상들 사이의 간격 */
    justify-content: center;
    padding: 20px; /* 컨테이너 패딩 */
    margin-top: 0px; /* 상단 간격 추가 */
    margin-bottom: 0px; /* 하단 간격 추가 */
}

.card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem; /* 카드들 사이의 간격 */
}

.card-container .card {
    flex: 1 1 calc(20% - 1rem); /* 한 행에 5개의 카드를 배치 */
    box-sizing: border-box;
}

.card img {
    width: 100%;
    height: auto;
}

.h3-style {
    color: black;
    text-decoration: none;
    
}

.h3-style:hover {
    color: black; /* 호버 시에도 검정색 */
    text-decoration: none; /* 호버 시에도 밑줄 없음 */
}


.hov-anim-box .animated {
  display: none
}

.hov-anim-box:hover .animated {
  display: inline
}

.hov-anim-box:hover .static {
  display: none
}

.mv {
    font-size: 0.7rem;
    color: black; /* 호버 시에도 검정색 */
    text-decoration: none; /* 호버 시에도 밑줄 없음 */
}

.mv:hover {
    color: black; /* 호버 시에도 검정색 */
    text-decoration: none; /* 호버 시에도 밑줄 없음 */
}

</style>
</head>
<body>
    <header>
        
        <div class="container-fluid">
            <c:set var="pageTitle" value="Rest" scope="page" />
            <%@ include file="./fragments/header.jspf"%>
        </div>
    </header>

    <main>
        <!-- 메인 페이지 슬라이드 -->
        <div class="slideshow-container mt-5" style="margin-top: 20px;">
            <div class="mySlides">
                <div class="numbertext"></div>
                <a href="/Rest/playlists/playlist?plistId=3"> <img
                    src="./data/imagee1.gif" style="width: 100%" />
                </a>
            </div>

            <div class="mySlides">
                <div class="numbertext"></div>
                <a href="/Rest/playlists/playlist?plistId=4"> <img
                    src="./data/imagee3.gif" style="width: 100%" />
                </a>
            </div>

            <div class="mySlides">
                <div class="numbertext"></div>
                <a href="/Rest/playlists/playlist?plistId=16"> <img
                    src="./data/imagee2.gif" style="width: 100%" />
                </a>
            </div>  
        </div>
        <br>
        
        <!-- 슬라이드 하단 점 3개 -->
        <div style="text-align: center">
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>
        <br>
        <br>
        
        <!-- 메인컨텐츠 -->
        <div class="content-container"> <!-- content-container : 양쪽 여백 추가 -->
            <a class="h3-style" href="/Rest/song/popularChart">
                <H3>Rest Top 10 차트</H3>
            </a>
            
            <!-- 차트페이지에 있는 리스트를 불러옴 -->
            <div class="card-container"> <!-- 5개씩 끊어서 최대 10개 보여주는 css -->
                <c:forEach var="l" items="${topTenList}" varStatus="status">
                    <div class="card border-0">
                        <p style="display: none;">${status.index + 1}</p>
                        
                        <!-- 앨범 디테일 페이지로 이동 -->
                        <c:url var="albumDetailUrl" value="/album/detail">
                            <c:param name="albumId" value="${l.albumId}" />
                        </c:url>
                        <a href="${albumDetailUrl}" class="album-link">
                            <img src="./images/albumcover/${l.albumImage}" alt="Album cover"> 
                        </a>
                        
                        <!-- 음원 디테일 페이지로 이동 -->
                        <c:url var="songDetailUrl" value="/song/detail">
                            <c:param name="songId" value="${l.songId}" />
                        </c:url>
                        <a href="${songDetailUrl}" style="font: inherit; color: inherit; text-decoration: none;">
                            <small>${l.title}</small>
                        </a>
                        
                        <!-- 아티스트 음원 페이지로 이동 -->
                        <c:url var="artistDetailUrl" value="/artist/songs">
                            <c:param name="artistId" value="${l.artistId}" />
                        </c:url>
                        <a href="${artistDetailUrl}" style="margin-top: -5px; font: inherit; color: gray; text-decoration: none;">
                            <small style="font-size: 0.75rem; ">${l.artistName}</small>
                        </a>
                    </div>
                </c:forEach>
                
            </div>
                <br><br>
                
            <H3>Rest 추천 뮤직 비디오</H3>
            <!-- 뮤직 비디오 -->
            <div class="card-container">
                <div class="card hov-anim-box">
                    <a href="https://youtu.be/ft70sAYrFyY?si=gnVhPHq5naMqW4EX" target='_blank'>
                        <img src="./images/mv/bubbleGum.gif" alt="" class="animated">
                        <img src="./images/mv/bubbleGum.png" alt="" class="static">
                        <div>
                            <a class="mv">NewJeans - Bubble Gum</a>
                        </div>
                    </a>
                </div>
            
                <div class="card hov-anim-box">
                    <a href="https://youtu.be/phuiiNCxRMg?si=dMeMkG3EofAT0rup" target='_blank'>
                        <img src="./images/mv/supernova.gif" alt="" class="animated">
                        <img src="./images/mv/supernova.png" alt="" class="static">
                        <div>
                            <a class="mv">에스파 - Supernova</a>
                        </div>
                    </a>
                </div>
                
                <div class="card hov-anim-box">
                    <a href="https://youtu.be/BS7tz2rAOSA?si=bGPZ4UBjD4vwAEyV" target='_blank'>
                        <img src="./images/mv/day6.gif" alt="" class="animated">
                        <img src="./images/mv/day6.png" alt="" class="static">
                        <div>
                            <a class="mv">DAY6 - 예뻤어</a>
                        </div>
                    </a>
                </div>
                
            </div>
            <br>
            
            <H3>따끈 신상 앨범</H3>

            <div class="card-container">
                <c:forEach var="album" items="${albumList}" varStatus="status">
                    <div class="card border-0">
                        <p style="display: none;">${status.index + 1}</p>
                        <img src="./images/albumcover/${album.albumImage}" alt="Album cover">
                        <c:url var="albumPage" value="/album/detail?albumId=${album.albumId}" />
                        <a href="${albumPage}">
                            <small class="fs-5">${album.albumName}</small>
                        </a>
                        <div class="artist-container" style="margin-top: 5px; display: flex; flex-wrap: wrap;">
                            <c:forEach items="${fn:split(album.artistName, ',')}" var="artistName" varStatus="statusName">
                                <c:set var="artistId" value="${fn:split(album.artistId  , ',')[statusName.index]}" />
                                <c:url var="artistPage" value="/artist/songs">
                                    <c:param name="artistId" value="${artistId.trim()}" />
                                </c:url>
                                <a href="${artistPage}">
                                    <small style="color: gray;">${artistName.trim()}</small>
                                </a>
                                <c:if test="${!statusName.last}"><span style="margin-right: 5px;">, </span></c:if>
                            </c:forEach>
                        </div>
                        <div style="justify-content: space-between; align-items: center; color: gray;">
                            <small>${album.albumType}</small>
                            <small> | </small>
                            <small>${fn:substring(album.albumReleaseDate, 0, 10)}</small>
                        </div>
                        <%-- <c:url var="songPage" value="/song/detail?songId=${album.songId}" />
                        <a href="${songPage}">
                            <small>${album.title}</small>
                        </a> --%>
                    </div>
                </c:forEach>
            </div>
        </div>    
    </main>


    <script>
                    let slideIndex = 0;
                    showSlides();

                    function showSlides() {
                        let i;
                        let slides = document
                                .getElementsByClassName("mySlides");
                        let dots = document.getElementsByClassName("dot");
                        for (i = 0; i < slides.length; i++) {
                            slides[i].style.display = "none";
                        }
                        slideIndex++;
                        if (slideIndex > slides.length) {
                            slideIndex = 1
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(
                                    " active", "");
                        }
                        slides[slideIndex - 1].style.display = "block";
                        dots[slideIndex - 1].className += " active";
                        setTimeout(showSlides, 2000); // Change image every 2 seconds
                    }
                    
                
                </script>
            <script>
                const refresh = '${refresh}';
                // 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
            </script>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <c:url var="home_js" value="/js/home.js" />
    <script src="${home_js}"></script>
    <c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
    <script src="${addCurrentPlayList}"></script>
</body>
</html>
