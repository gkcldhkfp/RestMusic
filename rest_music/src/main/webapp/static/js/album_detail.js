/**
 * detail.jsp에 포함
 */
document.addEventListener('DOMContentLoaded', () => {

	// 앨범 커버 hover 애니메이션등록
	const albumImage = document.querySelector(".mouseScale-up");
	albumImage.addEventListener('mouseenter', scaleUp);
	albumImage.addEventListener('mouseleave', scaleDown);

	// 앨범 좋아요 버튼 호버 애니메이션 등록
	const btnLike = document.querySelector('button#btnLike');
	btnLike.addEventListener('mouseenter', scaleUp);
	btnLike.addEventListener('mouseleave', scaleDown);

	// 앨범 재생 버튼 호버 애니메이션 등록
	const btnListenAlbum = document.querySelector('#btnListenAlbum');
	btnListenAlbum.addEventListener('mouseenter', scaleUp);
	btnListenAlbum.addEventListener('mouseleave', scaleDown);

	// 앨범 재생목록 추가 버튼 호버 애니메이션 등록
	const btnAddCPListAlbum = document.querySelector('#btnAddCPListAlbum');
	btnAddCPListAlbum.addEventListener('mouseenter', scaleUp);
	btnAddCPListAlbum.addEventListener('mouseleave', scaleDown);

	// 앨범 플리 추가 버튼 호버 애니메이션 등록
	const btnAddUPListAlbum = document.querySelector('#btnAddUPListAlbum');
	btnAddUPListAlbum.addEventListener('mouseenter', scaleUp);
	btnAddUPListAlbum.addEventListener('mouseleave', scaleDown);

	// 음원 재생 버튼 호버 애니메이션 등록
	const listenBtn = document.querySelectorAll('#listenBtn');
	for (let a of listenBtn) {
		a.addEventListener('mouseenter', scaleUp);
		a.addEventListener('mouseleave', scaleDown);
	}
	// 음원 재생목록 추가 버튼 호버 애니메이션 등록
	const addCPList = document.querySelectorAll('#addCPList');
	for (let a of addCPList) {
		a.addEventListener('mouseenter', scaleUp);
		a.addEventListener('mouseleave', scaleDown);
	}
	// 음원 플리 추가 버튼 호버 애니메이션 등록
	const btnAddUPList = document.querySelectorAll('#btnAddUPList');
	for (let a of btnAddUPList) {
		a.addEventListener('mouseenter', scaleUp);
		a.addEventListener('mouseleave', scaleDown);
	}

	function scaleUp(event) {
		target = event.target;
		target.style.transform = "scale(1.1)";
		target.style.transition = "all 0.5s";
	}

	function scaleDown(event) {
		target = event.target;
		target.style.transform = "scale(1)";
		target.style.transition = "all 0.5s";
	}

	const originDate = document.querySelector('#date');
	console.log(originDate.innerHTML);
	const date = originDate.innerHTML.slice(2, 10).replaceAll('-', '.');
	console.log(date);
	originDate.innerHTML = date;

	// 좋아요 버튼 찾기

	// jsp에서 전달한 변수로 객체 생성
	const data = { albumId, id };
	if (id != '') {
		axios
			// postmapping controller 호출.
			//  로그인한 사용자가 이 음원에 눌렀는 지 검사하고 그에 따른 표현 문자열을 다르게 해줌
			// 생성한 객체 전달
			.post('./like', data)
			.then((response) => {
				if (response.data) {
					btnLike.textContent = '♡';
				} else {
					btnLike.textContent = '♥';
				}
			}
			)
			.catch((error) => {
				console.log(error);
			});
	} else {
		btnLike.textContent = '♡';
	}

	// 버튼 클릭 이벤트 리스너 등록
	btnLike.addEventListener('click', () => {
		// putmapping controller 호출. => 좋아요버튼 토글 기능임.
		if (id == '') {
			// alert('로그인이 필요합니다.');
			// return
			// 생성한 객체 전달
			if (confirm("로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까?")) {
				redirectToLogin();
				return;
			}
		}
		axios
			.put('./like', data)
			.then((response) => {
				if (response.data) {
					btnLike.textContent = '♥';
				} else {
					btnLike.textContent = '♡';
				}
			}
			)
			.catch((error) => {
				console.log(error);
			});

	});

	function redirectToLogin() {
		const currentUrl = window.location.href;
		window.location.href = `/Rest/user/signin?target=${encodeURIComponent(currentUrl)}`;
	}

	const singerNameSpace = document.querySelector('#singerNames');
	const splitsingerName = singerName.split(',');
	const splitsingerIds = singerIds.split(',');
	artistPageLinked(singerNameSpace, splitsingerName, splitsingerIds);

	/* 
		const btnLike = document.querySelectorAll('#btnLike');
		for (let l of btnLike) {
			songId = l.getAttribute('data-id');
			const data = { songId, id };
			axios
				.post('../song/like', data)
				.then((response) => {
					if (response.data) {
						// l.textContent = '♡';
						l.src = '../imgs/likeOff.png'
					} else {
						// l.textContent = '♥';
						l.src = '../imgs/likeOn.png';
					}
				}
				)
				.catch((error) => {
					console.log(error);
				});
			l.addEventListener('click', () => {
				axios
					.put('../song/like', data)
					.then((response) => {
						if (response.data) {
							// l.textContent = '♥';
							l.innerHTML = l.value + 1;
							l.src = '../imgs/likeOn.png';
						} else {
							// l.textContent = '♡';
							l.innerHTML = l.value - 1;
	
							l.src = '../imgs/likeOff.png'
						}
					}
					)
					.catch((error) => {
						console.log(error);
					});
	
			}
			);
		} */
});



