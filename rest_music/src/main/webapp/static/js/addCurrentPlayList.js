/**
 * currentPlayList.jsp에 포함
 * detail.jsp에 포함
 */
document.addEventListener('DOMContentLoaded', () => {
	const addCPList = document.querySelectorAll('#addCPList');
	for (let a of addCPList) {
		a.addEventListener('click', addToCPList);
	}

	const listenBtn = document.querySelectorAll('#listenBtn');
	for (let l of listenBtn) {
		l.addEventListener('click', clickListenBtn)
	}

	function addToCPList(event) {
		const id = event.target.getAttribute('data-id');
		const url = `../song/addCurrentPlayList?songId=${id}`
		console.log(url);
		axios.
			get(url).
			then((response) => {
				console.log(response);
			}).
			catch((error) => { console.log(error); });
	}

	function clickListenBtn(event) {
		const id = event.target.getAttribute('data-id');
		const url = `../song/listen?songId=${id}`
		console.log(url);
		axios
			.get(url)
			.then((response) => {
				console.log("성공");
				alert('듣기 버튼 성공');
				parent.songFrame.location.reload();
			})
			.catch((error) => { });
	}

	function showModal() {
		console.log('mainFrame showModal 호출성공');
		let myModal = document.querySelector('#sessionListModal');
		console.log(myModal);
		let modal = new bootstrap.Modal(myModal);
		console.log(modal);
		getCPList();
		// Ajax요청을 보내고 모달에 태그를 작성하는 album_detail.js의 함수를 호출
		modal.show();
	}
	// 다른 프레임에서 호출할 수 있도록 함수 노출
	window.showModal = showModal;
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
		let modalCloseBtn = document.querySelectorAll('#modalCloseBtn');

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
			if (modal.style.display !== 'block') {
				modal.style.display = 'block'; // 모달창 활성화
			}
			for (let m of modalCloseBtn) {
				// 닫기 버튼 활성화
				m.addEventListener('click', () => {
					modal.style.display = "none";
					// 포커스를 메인 프레임의 body로 이동하여 이벤트 리스너가 정상적으로 작동하도록 함
				});
			}

			window.onclick = function (event) {
				if (event.target == modal) {
					modal.style.display = "none";
					// 포커스를 메인 프레임의 body로 이동하여 이벤트 리스너가 정상적으로 작동하도록 함
				}
			}

		} else {
			let li = document.createElement('li');
			li.textContent = '현재 재생목록이 없습니다.';
		}
	}


});
