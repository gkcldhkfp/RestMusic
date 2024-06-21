<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%> <%@ taglib prefix="c"
uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>Album Detail</title>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
			rel="stylesheet"
			integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
			crossorigin="anonymous"
		/>
	</head>
	<body>
		<header><%@ include file="../fragments/header.jspf" %></header>
		<main>
			<div class="mt-2 card">
				<div class="card-header">
					<section>
						<div class="fw-bold">"${album.albumName}" 앨범정보</div>
						<hr />
						<div style="float:left">
							<img src="../data/${album.albumImage}.jpg" alt="앨범 커버" />
						</div>
						<div style="float: left">
							<div>[${album.albumType}]</div>
							<div>앨범 명: ${album.albumName}</div>
							<div>아티스트: ${album.singerName}</div>
							<div>발매일: ${album.albumReleaseDate}</div>
							<div>장르: ${album.genre}</div>
							<div>타이틀 곡: ${album.title}</div>
						</div>
					</section>
				</div>
				<div class="card-body table-responsive">
					<table class="table table-striped table-hover">
						<thead class="font-size-sm">
							<th>#</th>
							<th>음원</th>
							<th>타이틀 곡</th>
							<th>아티스트</th>
							<th>좋아요</th>
							<th>듣기</th>
							<th>재생목록</th>
							<th>플레이리스트에 추가</th>
							<th>더보기</th>
						</thead>
						<tbody class="table-group-divider font-size-sm">
							<c:forEach var="s" items="${albumSongs}" varStatus="status">
								<tr>
									<td>${status.index + 1}</td>
									<td class="fw-bold">${s.title}</td>
									<td>	
										<c:if test="${s.titleSong != null}">
											<span class="fw-bold">Title</span>
										</c:if>
									</td>
									<td>${s.singerName}</td>
									<td>좋아요 개수</td>
									<td>듣기버튼</td>
									<td>재생목록</td>
									<td>플리추가</td>
									<td>더보기</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</main>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
			integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
			crossorigin="anonymous"
		></script>
	</body>
</html>
