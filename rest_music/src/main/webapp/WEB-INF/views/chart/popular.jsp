<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>REST Chart</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
        body {
            padding-top: 70px; 
        }
        .category-menu {
            background-color: #f8f9fa;
            padding: 10px 0;
        }
        .category-menu .btn {
            margin-right: 10px;
        }
    </style>
</head>
<body>
        <%@ include file="../fragments/header.jspf" %>

<!-- 카테고리 메뉴 -->
<div class="category-menu text-left">
    <div class="container">
        <c:url var="category1" value="/category/1" />
        <a href="${category1}" class="btn btn-outline-primary">top30 차트</a>
        <c:url var="category2" value="/category/2" />
        <a href="${category2}" class="btn btn-outline-primary">발라드 차트</a>
        <c:url var="category3" value="/category/3" />
        <a href="${category3}" class="btn btn-outline-primary">댄스 차트</a>
        <c:url var="category4" value="/category/4" />
        <a href="${category4}" class="btn btn-outline-primary">pop 차트</a>
    </div>
</div>

<div class="container">
    <h3>TOP 30 음원 좋아요 순위</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>순위</th>
            <th>제목</th>
            <th>아티스트</th>
            <th>좋아요 수</th>
            <th>좋아요</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="song" items="${likeRank}">
            <tr>
                <td>${song.rank}</td>
                <td>${song.title}</td>
                <td>${song.artist}</td>
                <td>${song.likesCount}</td>
                <td>
                    <button class="btn btn-primary like-btn" data-songid="${song.songId}" data-userid="현재_로그인된_사용자_ID">
                        좋아요
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script>
// gpt코드
    $(document).ready(function () {
        $('.like-btn').click(function () {
            const songId = $(this).data('songid');
            const userId = $(this).data('userid');
            const contextPath = '${pageContext.request.contextPath}';

            $.ajax({
                url: contextPath + '/likes/check',
                method: 'GET',
                data: { songId: songId, userId: userId },
                success: function (isLiked) {
                    if (isLiked) {
                        $.ajax({
                            url: contextPath + '/likes/unlike',
                            method: 'DELETE',
                            data: { songId: songId, userId: userId },
                            success: function () {
                                alert('좋아요를 취소했습니다.');
                                location.reload(); // 페이지 새로고침
                            }
                        });
                    } else {
                        $.ajax({
                            url: contextPath + '/likes/like',
                            method: 'POST',
                            data: { songId: songId, userId: userId },
                            success: function () {
                                alert('좋아요를 눌렀습니다.');
                                location.reload(); // 페이지 새로고침
                            }
                        });
                    }
                }
            });
        });
    });
</script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
