<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                crossorigin="anonymous" />
            <link href="./css/common.css" rel="stylesheet" /> <!-- 공통 CSS 파일 포함 -->
            <title>Playlist</title>
            
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
                    <%@ include file="../fragments/header.jspf" %>
                </div>
            </header>

            <div class="container">
                <div class="m-5">
                    <h2 style="font-weight: bold;">플레이리스트</h2>
                    <hr>
                    <div class="p-3">
                        <c:url var="albumCover" value=""></c:url>
                        <img alt="albumCover" src="" class="rounded"
                            style="display: inline-block;  vertical-align: middle; left:400px; width: 220px; height: 220px;">
                        <div class="ms-2" style="display: inline-block; vertical-align: middle;">
                            <h2 id="pListId" class="d-none">${playList.pListId}</h2>
                            <h2 id="pListName" class="mt-4 d-inline-block" style="display: inline-block;">
                                ${playList.pListName}</h2>
                            <c:url var="editImage" value="/images/icon/edit.png" />
                            <button id="editButton"
                                style="position: relative; width: 20px; height: 20px; overflow: hidden; border:none; background-color:transparent !important;">
                                <img src="${editImage}" alt="edit"
                                    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                            </button>
                            <p class="mt-3" id="songCount" style="color:gray;">총 <span id="totalSongs">0</span>곡</p>
                            <!-- 자바스크립트를 사용하여 총 ?곡인지 출력되는 부분 -->
                            <p class="d-none">플리 생성날짜</p>
                            <div class="mt-4">
                                <button id="addCPListFromUPList" class="btn btn-success" data-id="${playList.pListId}" >플레이리스트
                                    재생</button>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end mb-2">
                        <button class="btn btn-primary ms-2 mt-2" id="deleteButton"
                            style="position: relative; width: 40px; height: 40px; overflow: hidden; background-color:white; border:none; background-color:transparent;">
                            <c:url var="deleteImage" value="/images/icon/delete.png" />
                            <div class="flex-grow-1 ms-3">
                                <img src="${deleteImage}"
                                    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                            </div>
                        </button>
                    </div>
                    <!-- 추가할 박스 (카드) -->
                    <div class="card">
                        <div class="card-body" id="resultTable">
                            <table class="table table-striped" style="border: 1px solid #ddd;" id="resultTable">
                                <thead>
                                    <tr>
                                        <!-- 전체 선택 체크박스 추가 -->
                                        <th style="text-align: center; vertical-align: middle;">
                                            <input type="checkbox" id="selectAllCheckbox">
                                        </th>
                                        <th style="text-align: left; vertical-align: middle;">커버</th>
                                        <th style="text-align: left; vertical-align: middle; width: 55%">노래 제목</th>
                                        <th style="text-align: left; vertical-align: middle;">아티스트</th>
                                        <th style="text-align: center; vertical-align: middle;">듣기</th>
                                        <th style="text-align: center; vertical-align: middle;">재생목록</th>
                                    </tr>
                                </thead>
                                <tbody id="songsTableBody"> <!-- playlist.js를 통해 플리의 음원 리스트가 삽입될 부분 -->
                                </tbody>
                            </table>
                            <h5 id="defaultList" class="mt-4" style="text-align: center; color:gray;"></h5>
                        </div>
                    </div>
                </div>
            </div>

            <footer>
                <!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
                <%@ include file="../fragments/footer.jspf" %>
            </footer>

            <script>
                let refresh = '${refresh}';
                // 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
            </script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>

            <script src="https://unpkg.com/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

            <!-- JS 파일 지정 -->
            <c:url var="playlistJS" value="/js/playlist.js"/>
            <script src="${playlistJS}"></script>
            <c:url var="addCPList" value="/js/addCurrentPlayList.js" />
            <script src="${addCPList}"></script>
        </body>

        </html>