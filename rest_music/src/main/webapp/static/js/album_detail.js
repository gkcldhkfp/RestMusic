/**
 * detail.jsp에 포함
 */

const albumImage = document.querySelector(".mouseScale-up");
albumImage.addEventListener('mouseenter', () => {
	albumImage.style.transform = "scale(1.1)";
	albumImage.style.trasition = "all 0.5s";
});

albumImage.addEventListener('mouseleave', () => {
	albumImage.style.transform = "scale(1)";
	albumImage.style.trasition = "all 0.5s";
});

const originDate = document.querySelector('#date');
console.log(originDate.innerHTML);
const date = originDate.innerHTML.slice(2, 10).replaceAll('-', '.');
console.log(date);
originDate.innerHTML = date;

const likebtn = document.querySelectorAll('#likebtn');
for (let l of likebtn) {
	l.addEventListener('click', () => {
		if (l.getAttribute('src') === '../imgs/likeOff.png') {
			l.src = '../imgs/likeOn.png';
		} else {
			l.src = '../imgs/likeOff.png'
		}
	}
	);
}
// 챗지피티코드
// 모달 버튼 클릭 시
let openModalBtn = document.querySelectorAll('.openModalBtn');
/* 				for (let mo of openModalBtn) {
					console.log(mo);
					mo.addEventListener('click', getCPList());
				} */
openModalBtn.forEach((mo) => {
	mo.addEventListener('click', getCPList);

});

function getCPList() {
	const url = "../api/playList/cPList";
	// Ajax 요청을 보냄.
	axios
		.get(url)
		.then((response) => {
			console.log(response.data);
			// 재생 목록을 HTML로 작성 -> div#comments 영역에 출력.
			makeCPListElements(response.data);
		})
		.catch((error) => {
			console.log(error);
		});
}

function makeCPListElements(data) {
	// 모달 창에 리스트 출력하기
	let modalBody = document.getElementById('sessionListBody');
	let modal = document.querySelector('.modal');
	modalBody.innerHTML = ''; // 모달 바디 초기화

	// 재생목록 관리를 위한 인덱스 선언
	if (!sessionStorage.getItem('index')) {
		sessionStorage.setItem('index', 0);
	}
	index = parseInt(sessionStorage.getItem('index'));
	console.log(index);
	if (data && data.length > 0) {
		// 리스트가 있을 경우 출력
		let ul = document.createElement('ul');
		ul.className = 'list-group';
		console.log(ul);

		for (let i = 0; i < data.length; i++) {
			let li = document.createElement('li');
			li.className = 'list-group-item';
			li.textContent = data[i].title;
			if (i == index) { // 현재 재생중인 곡인 지 검사
				// 볼드체로 변경
				li.classList.add('fw-bold');
			}
			ul.appendChild(li);
			console.log(li);
		}
		modalBody.appendChild(ul); // 모달에 작성.
		modal.style.display = 'block';
	} else {
		let li = document.createElement('li');
		li.textContent = '현재 재생목록이 없습니다.';
	}
}


