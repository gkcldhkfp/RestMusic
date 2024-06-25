/**
 * /user/mypage.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    getPlayLists();
    const btnAddPlaylist = document.querySelector('button#btnAddPlaylist');
    btnAddPlaylist.addEventListener('click', addPlaylist);

    var modal = document.getElementById('addPlaylistModal');
    const bootstrapModal = new bootstrap.Modal(modal);

    function addPlaylist() {
        const id = document.querySelector('h3#userId').textContent;
        console.log(id);

        const plistName = document.querySelector('input#playlistName').value;
        console.log(plistName);

        if (plistName === '') {
            alert('플레이리스트 이름을 입력하세요.');
            return;
        }

        const data = { id, plistName };
        console.log(data);

        // POST 방식의 Ajax 요청을 보냄. 응답 성공/실패 콜백을 등록.
        axios
            .post('../addPlayList', data)
            .then((response) => {
                // console.log(response);
                console.log(response.data); // RestController에서 보낸 응답 데이터
                if (response.data === 1) {
                    alert('플레이리스트 등록 성공!');
                    document.querySelector('input#playlistName').value = '';
                    getPlayLists();
                    bootstrapModal.hide();
                }
            })
            .catch((error) => {
                console.log(error);
            });
        /*        var playlistName = document.getElementById('playlistName').value;
                console.log('추가할 플레이 리스트 제목:', playlistName); // 플레이리스트 이름 콘솔 입력*/
    }

    var cancelButton = document.querySelector('#addPlaylistModal .btn-secondary');
    cancelButton.addEventListener('click', function() {
        bootstrapModal.hide();
    });
    
    function getPlayLists() {
        const uri = `../getPlayList/${id}`;
        axios
            .get(uri)
            .then((response) => {
                console.log(response.data);
                makePlayListElements(response.data);

                playListModal.show();
            })
            .catch((error) => {
                console.log(error);
            });

    }
    
    function makePlayListElements(data) {
        // 플리 목록 HTML이 삽입될 div
        const divComments = document.querySelector('div#playLists');

        // 플리 목록 HTML 코드
        let htmlStr = '';
        for (let playlist of data) {
            console.log(playlist);
            htmlStr += `
            <button class="playList btn btn-outline-success form-control" data-id="${playlist.plistId}">${playlist.plistName}</button>
           `;
        }

        // 작성된 HTML 코드를 div 영역에 삽입.
        divComments.innerHTML = htmlStr;
    }
});