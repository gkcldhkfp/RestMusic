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

	const btnLike = document.querySelector('button#btnLike');

	const data = { albumId, id };
	axios
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
	btnLike.addEventListener('click', () => {

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



