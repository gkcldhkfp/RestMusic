/**
 * currentPlayList.jsp에 포함
 * detail.jsp에 포함
 */
document.addEventListener('DOMContentLoaded', () => {
	const addCPList = document.querySelectorAll('#addCPList');
	for (let a of addCPList) {
		a.addEventListener('click', addToCPList);
	}

	const listenBtn= document.querySelectorAll('#listenBtn');
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
		.catch((error) => {});
	}

});
