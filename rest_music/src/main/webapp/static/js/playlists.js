/**
 * /user/mypage.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    const btnAddPlaylist = document.querySelector('button#btnAddPlaylist');
    btnAddPlaylist.addEventListener('click', addPlaylist);

    function addPlaylist() {
        const userId = document.querySelector('h3#userId').textContent;
        console.log(userId);
        
        const listName = document.querySelector('input#playlistName').value;
        console.log(listName);
        
        if (listName === '') {
            alert('플레이리스트 이름을 입력하세요.');
            return;
        }
        
        const data = {userId, listName};
        console.log(data);
        
        // POST 방식의 Ajax 요청을 보냄. 응답 성공/실패 콜백을 등록.
        axios
            .post('../api/playlist', data)
            .then((response) => {
                // console.log(response);
                console.log(response.data); // RestController에서 보낸 응답 데이터
                if (response.data === 1) {
                    alert('플레이리스트 등록 성공!');
                    var modal = document.getElementById('addPlaylistModal');
                    var bootstrapModal = bootstrap.Modal.getInstance(modal); // 이미 열린 모달 인스턴스 가져오기
                    bootstrapModal.hide();
                }
            })
            .catch((error) => {
                console.log(error);
            });
/*        var playlistName = document.getElementById('playlistName').value;
        console.log('추가할 플레이 리스트 제목:', playlistName); // 플레이리스트 이름 콘솔 입력
        var modal = document.getElementById('addPlaylistModal');
        var bootstrapModal = bootstrap.Modal.getInstance(modal); // 이미 열린 모달 인스턴스 가져오기
        bootstrapModal.hide();*/
    }

    var cancelButton = document.querySelector('#addPlaylistModal .btn-secondary');
    cancelButton.addEventListener('click', function() {
        var modal = document.getElementById('addPlaylistModal');
        var bootstrapModal = new bootstrap.Modal(modal);
        bootstrapModal.hide();
    });
});