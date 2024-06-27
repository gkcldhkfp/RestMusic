/**
 * /user/mypage.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    
    const id = document.querySelector('h3#userId').textContent;
    
    getPlayLists();
    
    function getPlayLists() {
        const uri = `../getPlayList/${id}`;

        axios
            .get(uri)
            .then((response) => {
                console.log(response.data);
                makePlayListElements(response.data);
            })
            .catch((error) => {
                console.log(error);
            });
    }
    
    const btnAddPlaylist = document.querySelector('button#btnAddPlaylist');
    btnAddPlaylist.addEventListener('click', addPlaylist);

    var modal = document.getElementById('addPlaylistModal');
    const bootstrapModal = new bootstrap.Modal(modal);

    function addPlaylist() {
        
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
                    alert('플레이리스트를 등록하였습니다!');
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
    
    function makePlayListElements(data) {
        // 플리 목록 HTML이 삽입될 div
        const divPlayLists = document.querySelector('div#playLists');

        // 플리 목록 HTML 코드
        let htmlStr = '';
        for (let playlist of data) {
            // 기본 이미지 URL 정의
            const defaultImage = '../images/default.png';
            // 삭제 이미지 URL 정의
            const deleteImage = '../images/delete.png';

            // ${playlist.albumImage}가 null이면 기본 이미지 사용
            const albumImageSrc = playlist.albumImage ? `..${playlist.albumImage}` : defaultImage;

            console.log(playlist);
            htmlStr += `
            <div class="d-flex align-items-center">
            <a class="playList btn btn-outline-success form-control mt-2" data-id="${playlist.plistId}">
                <div class="d-flex align-items-center">
                    <div class="flex-shrink-0">
                        <img src="${albumImageSrc}" alt="..." width="50px" height="50px">
                    </div>
                    <div class="flex-grow-1 ms-3">
                        ${playlist.plistName}
                    </div>
                </div>
            </a>
                <button class="deleteButton btn btn-primary ms-2 mt-2" data-id="${playlist.plistId}"
                style="position: relative; width: 40px; height: 40px; overflow: hidden; background-color:white; border:none;">
                    <img alt="deleteImage" src="${deleteImage}" 
                    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                </button>
            </div>`;
        }
        
        // 작성된 HTML 코드를 div 영역에 삽입.
        divPlayLists.innerHTML = htmlStr;
        
        const deleteList = document.querySelectorAll('button.deleteButton'); // htmlStr로 추가된 html 영역의 button 태그의 클래스 이름을 지정
        for (let button of deleteList) {
            button.addEventListener('click', deletePlayList);
        }
        
        const aPlayLists = document.querySelectorAll('a.playList');
        for (let a of aPlayLists) {
            a.addEventListener('click', () => {
                const plistId = a.getAttribute('data-id');
                console.log('클릭한 플레이리스트의 plistId:', plistId);
                window.location.href = `../playlists/playlist?plistId=${plistId}`;
            });
        }
    }
    
    function deletePlayList(event) {

        const plistId = event.currentTarget.getAttribute('data-id');
        console.log('userid = ' + id);
        console.log('plistId = ' + plistId);

        // 삭제 여부 확인
        const result = confirm('해당 플레이리스트를 정말 삭제할까요?');
        if (!result) { // 사용자가 [취소]를 선택했을 때
            return; // 함수 종료
        }
        
        // Ajax 요청을 보낼 URI
        const uri = `../deletePlayList/${plistId}`;

        axios
            .delete(uri)
            .then((response) => {
                console.log(response.data);
                alert(`플레이 리스트를 삭제하였습니다.`);
                getPlayLists();
            })
            .catch((error) => {
                console.log(error);
            });

    }
    
});