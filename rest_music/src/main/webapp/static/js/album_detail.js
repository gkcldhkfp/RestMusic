/**
 * detail.jsp에 포함
 */
document.addEventListener('DOMContentLoaded', () => {
	const albumImage = document.querySelector(".mouseScale-up");
	albumImage.addEventListener('mouseenter', () => {
		albumImage.style.transform = "scale(1.1)";
		albumImage.style.transition = "all 0.5s";
	});

	albumImage.addEventListener('mouseleave', () => {
		albumImage.style.transform = "scale(1)";
		albumImage.style.transition = "all 0.5s";
	});

	const originDate = document.querySelector('#date');
	console.log(originDate.innerHTML);
	const date = originDate.innerHTML.slice(2, 10).replaceAll('-', '.');
	console.log(date);
	originDate.innerHTML = date;

	// 좋아요 버튼 찾기
	const btnLike = document.querySelector('button#btnLike');

	// jsp에서 전달한 변수로 객체 생성
	const data = { albumId, id };
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

	// 버튼 클릭 이벤트 리스너 등록
	btnLike.addEventListener('click', () => {
	// putmapping controller 호출. => 좋아요버튼 토글 기능임.
	// 생성한 객체 전달
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



