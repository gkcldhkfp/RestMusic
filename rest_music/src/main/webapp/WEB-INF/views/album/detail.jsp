<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
	<%@ taglib prefix="c" uri="jakarta.tags.core" %>
		<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />
				<title>Album Detail</title>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
				<style>
					.intro {
						position: relative;
						/* left: 20px; */
						margin-left: 20px;
					}
					onmouseover="this.style.fontWeight='bold'; this.style.textDecoration='underline'; this.style.color='blue';" 
					onmouseout="this.style.fontWeight='normal'; this.style.textDecoration='none'; this.style.color='black';"
					a,
					p {
						text-decoration-line: none;
						color: black;
					}

					a:hover {
						text-decoration: underline;
						font-weight: bold;
						color: blue;
					}

					table {
						border-collapse: separate;
						border-spacing: 0 5px;
						width: 100%;
					}

					#like {
						position: relative;
						/* top: 20px; */
						/* left: 30px; */
					}

					.submenu {
						width: 8%;
					}

					#content {
						padding: 20px;
					}

					/* 너는 챗지피티를	 믿어?  */
					#songPlayerContainer {
						display: none;
						position: fixed;
						bottom: 0;
						width: 100%;
						background: #f1f1f1;
						padding: 10px;
						box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.2);
						z-index: 1000;
					}

					#songPlayerContainer iframe {
						width: 100%;
						height: 60px;
						border: none;
					}

					/* 너는 챗지피티를 믿어?  */
				</style>
			</head>

			<body>
				<header>
					<%@ include file="../fragments/header.jspf" %>
				</header>
				<main>
					<div class="container mt-2 card">
						<div class="card-header">
							<section>
								<div class="fw-bold">"${album.albumName}" 앨범정보</div>
								<hr />
								<div style="float:left" class="mouseScale-up">
									<a href="/Rest/album/detail?albumId=${album.albumId}"><img
											src="../images/albumcover/${album.albumImage}" alt="앨범 커버" width="250" height="250" /></a>
								</div>
								<div style="float: left">
									<table class="table-borderless intro">
										<tr>
											<td class="m-2">[${album.albumType}]</td>
										</tr>
										<tr>
											<td>앨범 명</td>
											<td class="intro"><a href="/Rest/album/detail?albumId=${album.albumId}">${album.albumName}</a>
											</td>
										</tr>
										<tr>
											<td>아티스트</td>
											<td id="singerNames" class="intro">

											</td>
										</tr>
										<tr>
											<td>발매일</td>
											<td class="intro" id="date">${album.albumReleaseDate}</td>
										</tr>
										<tr>
											<td>장르</td>
											<td id="genre" class="intro"></td>
										</tr>
										<tr style="text-align: left;">
											<td>타이틀 곡</td>
											<td id="titleSong" class="intro"></td>
										</tr>
									</table>
									<div id="like">
										<button id="btnLike" title="앨범 좋아요" class="btn fs-3"">♡</button>
										<button id = "btnListenAlbum" title="앨범 재생" class="btn intro ms-1" style="background-image: url('../images/icon/play.png'); 
                                width: 45px; height: 45px; background-size: cover; background-repeat: no-repeat;"
											data-id="${album.albumId}"></button>
										<button id="btnAddCPListAlbum" title="앨범을 재생목록에 추가" class="btn intro ms-3" style="background-image: url('../images/icon/playList.png'); 
                                width: 60px; height: 60px; background-size: cover; background-repeat: no-repeat;"
											data-id="${album.albumId}"></button>
										<button id="btnAddUPListAlbum" class="d-none intro btn" class="btn mx-4" title="앨범을 내 리스트에 담기" style="background-image: url('../images/icon/myPlayList.png'); 
                                width: 50px; height: 50px; background-size: cover; background-repeat: no-repeat;"
											data-id="${album.albumId}"></button>
									</div>
								</div>
							</section>
						</div>
						<div class="card-body table-responsive">
							<h3>수록곡 (${songsCount})</h3>
							<table class="table table-striped table-hover">
								<thead class="font-size-sm">
									<th class="submenu">#</th>
									<th class="submenu"></th>
									<th style="width: 30%;">음원</th>
									<th style="width: 30%;">아티스트</th>
									<!-- <th class="submenu">좋아요</th> -->
									<th class="submenu">듣기</th>
									<th class="submenu">재생목록</th>
									<th class="submenu">리스트</th>
								</thead>
								<tbody class="table-group-divider font-size-sm">
									<c:forEach var="s" items="${albumSongs}" varStatus="status">
										<tr>
											<td>${status.index + 1}</td>
											<td>
												<c:if test="${fn:contains(album.title, s.title)}">
													<span class="fw-bold">Title</span>
												</c:if>
											</td>
											<td class="fw-bold">
												<a href="/Rest/song/detail?songId=${s.songId}">
													${s.title}</a>
											</td>


											<td>
												<!-- <a id="singerNames">${s.artistName}</a> -->

												<c:set var="singers" value="${fn:split(s.artistName, ',')}" />
												<c:set var="artistId" value="${fn:split(s.artistId, ',')}" />
												<c:forEach var="singer" items="${singers}" varStatus="status">
													<c:url var="artistPage" value="/artist/songs">
														<c:param name="artistId" value="${artistId[status.index]}" />
													</c:url>
													<span class="text-center" style="cursor: pointer;" onclick="location.href='${artistPage}'"
														onmouseover="this.style.fontWeight='bold'; this.style.textDecoration='underline';  this.style.color='blue';"
														onmouseout="this.style.fontWeight='normal'; this.style.textDecoration='none';  this.style.color='black';">${singer}</span>
												</c:forEach>

											</td>



											<!-- <td id="countLike" data-id="${s.songId}">
												<img id="btnLike" height="30px" width="30px" src="../images/icon/likeOn.png" />${s.likesCount}
											</td> -->
											<td>
												<button id="listenBtn" data-id="${s.songId}" title="재생" class="btn"
													style="background-image: url('../images/icon/play.png'); width: 45px; height: 45px; background-size: cover; background-repeat: no-repeat;"></button>
											</td>
											<td>
												<button id="addCPList" class="btn ms-1" data-id="${s.songId}" style="background-image: url('../images/icon/playList.png'); 
                                width: 60px; height: 60px; background-size: cover; background-repeat: no-repeat;">
												</button>
												<!-- <button id="openModalBtn" type="button" class="btn btn-primary openModalBtn"
												data-bs-toggle="modal" data-bs-target="#sessionListModal">
												재생목록
											</button> -->
											</td>
											<td><button id="btnAddUPList" class="btn ms-1" data-id="${s.songId}" title="내 리스트에 담기" style="background-image: url('../images/icon/myPlayList.png'); 
                                width: 50px; height: 50px; background-size: cover; background-repeat: no-repeat;">
												</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</main>
				<!-- 플레이리스트 모달 -->
				<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">추가할 플레이리스트</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div id="playLists" class="modal-body" style="height: 393px;">
							</div>
							<nav aria-label="Playlist navigation">
								<ul id="pagination" class="pagination pagination-sm justify-content-center">
								</ul>
							</nav>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">취소</button>
							</div>
						</div>
					</div>
				</div>
				<footer>
					<!-- 모달 요소들을 footer로 사용. 모든 페이지에 사용되기 때문 -->
					<%@ include file="../fragments/footer.jspf" %>
				</footer>


				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
					integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
					crossorigin="anonymous"></script>

				<script src="https://unpkg.com/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
					integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
					crossorigin="anonymous"></script>
				<!-- Axios JS 라이브러리 -->
				<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
				<script>
					const singerName = '${ album.artistName }';
					const singerId = '${ album.artistId }';

					const genreName = '${album.genreName}';
					const titleSong = '${album.title}';
					const titleSongId = '${album.songId}';

					const albumId = ${ album.albumId };
					const id = '${loginUserId}'; //id
					let refresh = '${refresh}';
					// 리다이렉트 시 재생페이지를 새로고침하기 위한 코드
				</script>
				<c:url var="addCurrentPlayList" value="/js/addCurrentPlayList.js" />
				<script src="${addCurrentPlayList}"></script>
				<c:url var="album_detail" value="/js/album_detail.js" />
				<script src="${album_detail}"></script>


			</body>

			</html>