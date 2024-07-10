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
    <title>Playlists</title>
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
                    <c:url var="albumCover" value="${data.albumImage}" ></c:url>
                    <img alt="albumCover" src="${albumCover}" class="rounded " 
                    style="display: inline-block;  vertical-align: middle; left:400px; width: 220px; height: 220px;" >
                    <div class="ms-2" style="display: inline-block;  vertical-align: middle;">
                        <h2 class="mt-4">플레이 리스트 이름</h2>
                        <p class="mt-3">총 ?곡<span class="ms-3">${data.singerName}</span></p>
                        <div class="mt-3">
                            <button id="btnLike" class="btn btn-success" ></button>
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
                
                </div>
            </div>
        </div>            
    </div>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>