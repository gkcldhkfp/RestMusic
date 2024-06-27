<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
    crossorigin="anonymous" />
    <title>Playlist</title>
</head>
<body>
    <header>
        <div class="container-fluid">
            <c:set var="pageTitle" value="Rest" scope="page" />
            <%@ include file="../fragments/header.jspf"%>
        </div>
    </header>
    
    <div class="container-fluid">
        <div class="m-5">
            <h2 style="font-weight: bold;">플레이리스트</h2><hr>
             <div class="p-3">
                <div class="" >
                    <c:url var="albumCover" value="" ></c:url>
                    <img alt="albumCover" src="" class="rounded" 
                    style="display: inline-block;  vertical-align: middle; left:400px; width: 220px; height: 220px;" >
                    <div class="ms-2" style="display: inline-block; vertical-align: middle;">
                        <h2 class="mt-4">${playList.pListName}</h2>
                        <p class="mt-3" id="songCount" style="color:gray;"/> <!-- 자바스크립트를 사용하여 총 ?곡인지 출력되는 부분 -->
                        <p class="d-none">플리 생성날짜</p>
                        <div class="mt-4">
                            <button class="btn btn-success" >재생목록추가</button>
                        </div>
                    </div>
                </div>            
            </div>
            <br>
            <h2 style="font-size: 1.2rem; text-align : center;">플레이리스트</h2><hr>
            <!-- 추가할 박스 (카드) -->
            <div class="card">
                <div class="card-body" id="playLists">
                    <table class="table table-striped" style="border: 1px solid #ddd;">
                        <thead>
                            <tr>
                                <th style="text-align: left; vertical-align: middle;">커버</th>
                                <th style="text-align: left; vertical-align: middle;">노래 제목</th>
                                <th style="text-align: left; vertical-align: middle;">아티스트</th>
                            </tr>
                        </thead>
                        <tbody id="songsTableBody">
                            <c:forEach items="${songs}" var="s">
                                <tr>
                                <c:url var="albumImage" value="${s.albumImage}"></c:url>
                                    <td style="text-align: left; vertical-align: middle;"><img alt="songImg" src="${albumImage}"
                                        width="80px" height="80px"></td>
                                    <td style="text-align: left; vertical-align: middle; font-size: 14px;">
                                        <c:url var="songDetailPage" value="/song/detail">
                                            <c:param name="songId" value="${s.songId}"></c:param>
                                        </c:url>
                                        <a href="${songDetailPage}">${s.title}</a>
                                    </td>
                                    <td style="text-align: left; vertical-align: middle; font-size: 14px">${s.singerName}</td>
                                    <td style="text-align: center; vertical-align: middle; font-size: 14px;">
                                        <button class="deleteButton btn btn-primary ms-2 mt-2" data-id="${s.songId}"
                                        style="position: relative; width: 40px; height: 40px; overflow: hidden; background-color:white; border:none; background-color:transparent;">
                                            <c:url var="deleteImage" value="/images/delete.png" />
                                                <div class="flex-grow-1 ms-3">
                                                    <img src="${deleteImage}" 
                                                    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                                                </div>
                                        </button>
                                    </td>    
                                    <%-- <td style="display:none;" id="plistName">${s.plistName}</td> --%>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <h5 id="defaultList" class="mt-4" style="text-align: center; color:gray;"></h5>
                </div>
            </div>
        </div>            
    </div>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        
    <!-- JS 파일 지정 -->
    <c:url var="playlistJS" value="/js/playlist.js" />
    <script src="${playlistJS}"></script>
</body>
</html>