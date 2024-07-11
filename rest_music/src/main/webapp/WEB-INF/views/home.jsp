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
<link href="./css/home.css" rel="stylesheet" />
<!-- css 불러옴 -->
<style>
* {
    box-sizing: border-box
}

body {
    font-family: Verdana, sans-serif;
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
}


/* 뮤직비디오 css */
.video-container {
    display: flex;
    flex-wrap: wrap;
    gap: 10px; /* 동영상들 사이의 간격 */
    justify-content: center;
    padding: 20px; /* 컨테이너 패딩 */
}

.music-video-item {
    flex: 0 0 20%;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    overflow: hidden;
}

iframe {
    width: 100%;
    height: 200px;
}

h3 {
    margin-top: 30px;
    padding: 15px;
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

            <a class="prev" onclick="plusSlides(-1)">❮</a> <a
                class="next" onclick="plusSlides(1)">❯</a>
        </div>
        <br>

        <div style="text-align: center">
            <span class="dot" onclick="currentSlide(1)"></span> <span
                class="dot" onclick="currentSlide(2)"></span> <span
                class="dot" onclick="currentSlide(3)"></span>
        </div>
        <div class="content-container">
            <H3>Rest Top 5 차트</H3>
            
            <c:forEach var="l" items="${list}" varStatus="status" >
            
            <div>
                <div>${status.index + 1}</div>
                <div>${l.albumImage}</div>
                <div>${l.artistName}</div>
                <div>${l.title}</div>
            </div>
            
            </c:forEach> 
            
            <H3>Rest 추천 뮤직 비디오</H3>
            <!-- 뮤직 비디오 -->
            <div class="video-container">
                <!-- 동적으로 로드될 내용 -->
                <div class="music-video-item" style="flex: 0 0 19%;">
                    <iframe width="100%" height="200"
                        src="https://www.youtube.com/embed/A4S8zl50AdM?si=Nc7iF09hFPY5nd_G"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        referrerpolicy="strict-origin-when-cross-origin"
                        allowfullscreen></iframe>
                </div>
                <div class="music-video-item" style="flex: 0 0 19%;">
                    <iframe width="100%" height="200"
                        src="https://www.youtube.com/embed/vnS_jn2uibs?si=oFTTqTsRplOwnqeg"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        referrerpolicy="strict-origin-when-cross-origin"
                        allowfullscreen></iframe>
                </div>
                <div class="music-video-item" style="flex: 0 0 19%;">
                    <iframe width="100%" height="200"
                        src="https://www.youtube.com/embed/lSD_L-xic9o?si=Pml36hgvZTYR-tgL"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        referrerpolicy="strict-origin-when-cross-origin"
                        allowfullscreen></iframe>
                </div>
                <div class="music-video-item" style="flex: 0 0 19%;">
                    <iframe width="100%" height="200"
                        src="https://www.youtube.com/embed/DpKI0zDPqRQ?si=mC74Z8MKaaZSFF2W"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        referrerpolicy="strict-origin-when-cross-origin"
                        allowfullscreen></iframe>
                </div>
                <div class="music-video-item" style="flex: 0 0 19%;">
                    <iframe width="100%" height="200"
                        src="https://www.youtube.com/embed/ic8j13piAhQ?si=l7WymyJhXhinfOWF"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        referrerpolicy="strict-origin-when-cross-origin"
                        allowfullscreen></iframe>
                </div>
                <br>
            </div>
            <H3>따끈 신상 앨범</H3>

            <div class="album-container">
                <c:forEach var="album" items="${albumList}">
                    <div class="album-card">
                        <img src="../data/${a.albumImage}.png" class="img-fluid rounded"
                            alt="${album.albumName}">
                        <div class="album-info">
                            <p class="album-name">${album.albumId}</p>
                            <p class="artist-name">${album.artist}</p>
                        </div>
                    </div>
                </c:forEach>
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

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <c:url var="home_js" value="/js/home.js" />
    <script src="${home_js}"></script>
</body>
</html>
