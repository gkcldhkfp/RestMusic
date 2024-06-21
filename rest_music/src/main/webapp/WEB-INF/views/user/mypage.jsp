<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>MyPage</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
        crossorigin="anonymous" />
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
            <h2 style="font-weight: bold;">마이페이지</h2><hr>
            <div class="d-flex align-items-center">
                <div class="p-3">
                    <c:url var="profileImg" value="/Images/profile.jpg"></c:url>
                    <img alt="profileImg" src="${profileImg}"
                        width="200px" height="200px">
                </div>
                <div class="p-3">
                    <h3 style="font-weight: bold; font-size: 1.2rem;">닉네임: 사용자닉네임</h3>
                    <button class="btn btn-outline-primary">ID/PW 변경 (내정보 관리)</button>
                </div>
            </div>
            <br>
            <h2 style="font-size: 1.2rem; text-align : center;">플레이리스트</h2><hr>
            <!-- 추가할 박스 (카드) -->
            <div class="card">
                <div class="card-body">
                    <p class="card-text">플리추가예정2</p>
                </div>
            </div>
            <div class="my-2">
                <button class="btn btn-primary"
                    style="background-color: gray; color: white;"
                    data-bs-toggle="modal"
                    data-bs-target="#addPlaylistModal">플레이리스트 추가</button>
            </div>
            <br>
            <h2 style="font-size: 1.2rem; text-align : center;">좋아요 누른 곡</h2><hr>
            <!-- 추가할 박스 (카드) -->
            <div class="card">
                <div class="card-body">
                    <p class="card-text">좋아요2</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" tabindex="-1" id="test">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modal title</h5>
                    <button type="button" class="btn-close"
                        data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Modal body text goes here.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save
                        changes</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 플레이 리스트 추가 모달 -->
    <div class="modal fade" id="addPlaylistModal" tabindex="-1" aria-labelledby="addPlaylistModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addPlaylistModalLabel">플레이 리스트 추가</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="playlistForm">
                        <div class="mb-3">
                            <label for="playlistName" class="form-label">플레이 리스트 제목</label>
                            <input type="text" class="form-control" id="playlistName" name="playlistName" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" onclick="addPlaylist()">확인</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>
    
    <script>
        function addPlaylist() {
            var playlistName = document.getElementById('playlistName').value;
            console.log('추가할 플레이 리스트 제목:', playlistName);
            var modal = document.getElementById('addPlaylistModal');
            var bootstrapModal = new bootstrap.Modal(modal);
            bootstrapModal.hide();
        }

        var cancelButton = document.querySelector('#addPlaylistModal .btn-secondary');
        cancelButton.addEventListener('click', function() {
            var modal = document.getElementById('addPlaylistModal');
            var bootstrapModal = new bootstrap.Modal(modal);
            bootstrapModal.hide();
        });
    </script>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>