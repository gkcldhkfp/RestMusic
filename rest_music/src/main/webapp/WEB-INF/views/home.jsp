<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>

<head>
<title>지금 당신의 음악, FLO</title>

<c:url var="indexCss" value="/css/index.css" />
<link rel="stylesheet" href="${indexCss}">

<!-- header -->
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
    rel="stylesheet" />
<script src="https://kit.fontawesome.com/a409036899.js"
    crossorigin="anonymous"></script>
<!-- main1 -->
<script src="https://kit.fontawesome.com/b2f264d028.js"
    crossorigin="anonymous"></script>

<!-- main2 -->
<script src="https://kit.fontawesome.com/f04a88374e.js"
    crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/f04a88374e.js"
    crossorigin="anonymous"></script>

<!-- footer -->
<link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>

<body>
    <header>

        <nav>
            <ul>
                <li><a href="#">둘러보기</a></li>
                <li><a href="#">보관함</a></li>
                <li><a href="#">이용권</a></li>
            </ul>
        </nav>
        <div class="header_search">
            <div class="header_search_circle"></div>
            <input class="header_input" type="text"
                placeholder="검색어를 입력하세요."> <img
                src="Images/header/reading_glass.PNG">
        </div>
        <div class="header-right">
            <ul>
                <li><a href="#">크리에이터 스튜디오</a></li>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
        </div>
    </header>





    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>

    <main>
        <!-- main1 -->
        <main1>
        <div class="image-container1 ">
            <div class="header">
                <div class="todaysong" , style="float: left">
                    <p>
                        <a
                            href="https://www.genie.co.kr/chart/top200">
                            차트 <i class="fa-solid fa-chevron-right"></i>
                        </a>
                    </p>

                </div>


                <div class="select" , style="float: right">
                    <ul>
                        <li><a href="#" , style="color: #3f3fff;">종합</a></li>
                        <li><a href="#">국내</a></li>
                        <li><a href="#">해외</a></li>
                        <li><i class="fa-solid fa-chevron-left"></i></li>
                        <li><i class="fa-solid fa-chevron-right"
                            , style="color: lightgray"></i></li>
                    </ul>
                </div>

            </div>
            <div class="mx-5">
                <table id="asd"
                    class="table table-hover">
                    <tbody>
                        <tr>
                            <th class="col-2">숫자</th>
                            <td class="col-7">제목</td>
                            <td class="col-3">가수</td>
                        </tr>

                        <tr>
                            <th class="col-2">숫자</th>
                            <td class="col-7">제목</td>
                            <td class="col-3">가수</td>
                        </tr>

                        <tr>
                            <th class="col-2">숫자</th>
                            <td class="col-7">제목</td>
                            <td class="col-3">가수</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>

        <div class="image-container1 ">
            <div class="header">
                <div class="todaysong" , style="float: left">
                    <p>
                        <a
                            href="https://www.music-flo.com/new/track?sortType=KPOP">
                            최신 음악 <i class="fa-solid fa-chevron-right"></i>
                        </a>
                    </p>

                </div>


                <div class="select" , style="float: right">
                    <ul>
                        <li><a href="#" , style="color: #3f3fff;">종합</a></li>
                        <li><a href="#">국내</a></li>
                        <li><a href="#">해외</a></li>
                        <li><i class="fa-solid fa-chevron-left"></i></li>
                        <li><i class="fa-solid fa-chevron-right"
                            , style="color: lightgray"></i></li>
                    </ul>
                </div>

            </div>

            <br> <br> <br> <br>

            <div class="mainsong">
                <div class="song1">

                    <div class="song">
                        <img class="songim"
                            , src="Images/main1/바람_코요태.jpg">
                        <div>
                            <p>바람</p>
                            <P>코요테</P>
                        </div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>

                    </div>

                    <div class="song">
                        <img class="songim"
                            , src="Images/main1/My Cake for You-마리솔.jpg">
                        <div>
                            <p>My Cake for You</p>
                            <P>마리솔</P>
                        </div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>

                    <div class="song">
                        <img class="songim"
                            , src="Images/main1/A Midsummer NMIXX's Dream - NMIXX.jpg">
                        <div>
                            <p>A NMIXX's Dream</p>
                            <P>NMIXX</P>
                        </div>
                        </a> <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>


                    <div class="song">
                        <img class="songim"
                            , src="Images/main1/캘리포니아 해변 - 몽니.jpg">
                        <div>
                            <p>캘리포니아 해변</p>
                            <P>몽니</P>
                        </div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>

                    <div class="song">
                        <img class="songim"
                            , src="Images/main1/fallen angel - AVOKID.jpg">
                        <div>
                            <p>fallen angel</p>
                            <P>AVOKID</P>
                        </div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>

                </div>



                <div class="song2">

                    <a href="#" class="song"> <img class="songim"
                        , src="Images/main1/Mercedes Girl - TK.jpg">
                        <div>
                            <p>Mercedes Girl</p>
                            <P>TK</P>
                        </div> <i class="fa-solid fa-play fa-2xl"
                        style="color: #ffffff;"></i> <a href="#"
                        class="song"> <img class="songim"
                            , src="Images/main1/퀸덤퍼즐 - Various Artists.jpg">
                            <div>
                                <p>퀸덤퍼즐</p>
                                <P>Various Artists</P>
                            </div> <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i> <a href="#"
                            class="song"> <img class="songim"
                                , src="Images/main1/나 없이도 - 성영주.jpg">
                                <div>
                                    <p>나 없이도</p>
                                    <P>성영주</P>
                                </div> <i class="fa-solid fa-play fa-2xl"
                                style="color: #ffffff;"></i> <a href="#"
                                class="song"> <img class="songim"
                                    , src="Images/main1/Stranger - 정이찬.jpg">
                                    <div>
                                        <p>Stranger</p>
                                        <P>정이찬</P>
                                    </div> <i class="fa-solid fa-play fa-2xl"
                                    style="color: #ffffff;"></i> <a
                                    href="#" class="song"> <img
                                        class="songim"
                                        , src="Images/main1/괜찮기로 해요 - 유니스&정재하.jpg">
                                        <div>
                                            <p>괜찮기로 해요</p>
                                            <P>유니스&정재하</P>
                                        </div> <i
                                        class="fa-solid fa-play fa-2xl"
                                        style="color: #ffffff;"></i>
                                </a>
                </div>

            </div>

        </div>




        <div class="image-container2">


            <div class="header">
                <div class="daily mt-4" , style="float: left">
                    <p>장르별 음악</p>
                </div>

            </div>

            <br> <br> <br> <br>

            <div class="mainchart">


                <div class="subchart">


                    <div class="chart">
                        <img class="chartim"
                            , src="Images/main1/데일리 FLO크리에이터 P!ck 차트.png">
                        <div class="chart-name">발라드</div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>

                    <div class="chart">
                        <img class="chartim"
                            , src="Images/main1/데일리 발매곡 차트.png">
                        <div class="chart-name">팝</div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>

                    <div class="chart">
                        <img class="chartim"
                            , src="Images/main1/위클리 FLO 해외 소셜 차트.png">
                        <div class="chart-name">락</div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>

                    <div class="chart">
                        <img class="chartim"
                            , src="Images/main1/핫데뷰 차트.png">
                        <div class="chart-name">핫데뷰 차트</div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>

                    <div class="chart">
                        <img class="chartim"
                            , src="Images/main1/데일리 SNS 공유하기 차트.png">
                        <div class="chart-name">데일리 SNS 공유하기 차트</div>
                        <i class="fa-solid fa-play fa-2xl"
                            style="color: #ffffff;"></i>
                    </div>


                </div>

            </div>
        </div>

        </main1>

        <!-- main2 -->
        <div class="main2">


            <div class="contentContainer bestThemeContainer">
                <div class="contentHeader">
                    <div class="bestTheme">
                        <p>영상</p>
                    </div>
                </div>

                <div class="mainContainer">
                    <div class="subContainer bestThemeSubContainer">
                        <div class="card">
                            <iframe width="220" height="220"
                                src="https://www.youtube.com/embed/m6pTbEz4w3o?si=-a3hVVRFuSfukUiU"
                                title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                referrerpolicy="strict-origin-when-cross-origin"
                                allowfullscreen></iframe>
                        </div>
                        <div class="card">
                            <iframe width="220" height="220"
                                src="https://www.youtube.com/embed/m6pTbEz4w3o?si=-a3hVVRFuSfukUiU"
                                title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                referrerpolicy="strict-origin-when-cross-origin"
                                allowfullscreen></iframe>
                        </div>
                        <div class="card">
                            <iframe width="220" height="220"
                                src="https://www.youtube.com/embed/m6pTbEz4w3o?si=-a3hVVRFuSfukUiU"
                                title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                referrerpolicy="strict-origin-when-cross-origin"
                                allowfullscreen></iframe>
                        </div>
                        <div class="card">
                            <iframe width="220" height="220"
                                src="https://www.youtube.com/embed/m6pTbEz4w3o?si=-a3hVVRFuSfukUiU"
                                title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                referrerpolicy="strict-origin-when-cross-origin"
                                allowfullscreen></iframe>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <!-- 이미지 클릭 시 로그인 팝업 -->
        <a href="#"><img
            src="Images/footer/img_banner_home_discovery.868f7015.png"
            class="banner"></a>
        <hr>
        <div class="menu">
            <ul class="menu-1">
                <li><a class="title menu-link" href="#">고객센터</a></li>
                <li><a class="title menu-link" href="#">공지사항</a></li>
            </ul>
            <ul class="menu-1">
                <li class="title">FLO 서비스</li>
                <li><a class="link" href="#">서비스 소개</a></li>
                <li><a class="link" href="#">FLO 플레이어 다운로드</a></li>
                <li><a class="link" href="#">FLO 크리에이터 스튜디오</a></li>
            </ul>
            <ul class="menu-1">
                <li class="title">기업 정보</li>
                <li><a class="link" href="#">회사소개</a></li>
                <li><a class="link" href="#">인재 채용</a></li>
            </ul>
            <ul class="menu-1">
                <li class="title">문의</li>
                <li><a class="link" href="#">마케팅 · 광고 · 제휴 문의<span
                        class="material-symbols-outlined"
                        style="font-size: 12px">arrow_outward</span></a></li>
                <li><a class="link" href="#">서비스 이용 문의<span
                        class="material-symbols-outlined"
                        style="font-size: 12px">arrow_outward</span></a></li>
                <li><a class="link" href="#">음원 유통 문의<span
                        class="material-symbols-outlined"
                        style="font-size: 12px">arrow_outward</span></a></li>
            </ul>
            <ul class="menu-2">
                <a href="#"><img
                    src="Images/footer/icon_facebook.png"></a>
                <a href="#"><img
                    src="Images/footer/icon_instagram.png"></a>
                <a href="#"><img
                    src="Images/footer/icon_youtube.png"></a>
                <a href="#"><img
                    src="Images/footer/icon_twitter.png"></a>
            </ul>
        </div>
        <div class="info">
            <div class="info-1">
                <span><a class="link" href="#">이용약관</a></span> <span
                    class="line"> | </span> <span><a
                    class="link bold" href="#">개인정보 처리방침</a></span> <span
                    class="line"> | </span> <span><a class="link"
                    href="#">청소년 보호정책</a></span> <span class="line"> | </span>
                <span><a class="link" href="#">사업자 정보 확인</a></span>
            </div>
            <br>
            <div class="info-2">
                <span>대표이사 : 김영웅</span> <span class="line"> | </span> <span>사업자
                    등록번호 : 123-45-678910</span> <span class="line"> | </span> <span>통신판매업
                    신고번호 : 2008-서울서초-1039</span>
            </div>
            <div class="info-2">
                <span>서울특별시 서초구 강남대로 311 드림플러스 15F</span> <span
                    class="line"> | </span> <span>1599-6034</span> <span
                    class="line"> | </span> <span>flo@music-flo.com</span>
            </div>
            <br>
            <div class="info-3">
                <span>(주)김영웅컴퍼니</span> <span>ALL RIGHTS RESERVED</span>
                <span class="right">본 사이트는 Chrome 및 Microsoft
                    Edge 브라우저에서 사용 가능합니다.</span>
            </div>
        </div>
    </footer>

</body>

</html>