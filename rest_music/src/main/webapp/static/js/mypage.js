/**
 * /user/mypage.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {

    const id = document.querySelector('h3#id').textContent;
    const userId = document.querySelector('h3#userId').textContent;

    const itemsPerPage = 5; // 페이지당 표시할 아이템 수
    let currentPage = 1; // 현재 페이지

    getPlayLists();
    getUserLike();

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
            const albumImageSrc = playlist.albumImage ? `../images/${playlist.albumImage}` : defaultImage;

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
    
    function getUserLike() {
        const uri = `../user/getUserLike/${userId}`;

        axios
            .get(uri)
            .then((response) => {
                console.log(response.data);
                const { data } = response;
                const totalPages = Math.ceil(data.length / itemsPerPage);
                makeUserLikeElements(data.slice((currentPage - 1) * itemsPerPage, currentPage * itemsPerPage));
                setupPagination(totalPages);
            })
            .catch((error) => {
                console.log(error);
            });
    }

    function makeUserLikeElements(data) {
        // 좋아요 목록 HTML이 삽입될 tbody
        const likeTableBody = document.querySelector('tbody#likeTableBody');

        if (!likeTableBody) {
            console.error('songsTableBody를 찾을 수 없습니다.');
            return;
        }

        // 좋아요 목록 HTML 코드
        let htmlStr = '';
        for (let like of data) {
            // 기본 이미지 URL 정의
            const defaultImage = '../images/default.png';
            // 좋아요 이미지 URL 정의
            /*const deleteImage = '../images/delete.png';*/

            const songPage = `/Rest/song/detail?songId=${like.songId}`;
            // ${like.albumImage}가 null이면 기본 이미지 사용
            const albumImageSrc = like.albumImage ? `../images/${like.albumImage}` : defaultImage;

            console.log(like);
            htmlStr += `
            <tr>
                <td style="text-align: left; vertical-align: middle;">
                    <img alt="songImg" src="${albumImageSrc}" width="80px" height="80px">
                </td>
                <td style="text-align: left; vertical-align: middle; font-size: 14px;">
                    <a href=${songPage}>${like.title}</a>
                </td>
                <td style="text-align: left; vertical-align: middle; font-size: 14px;">${like.singerName}</td>
            </tr>
            `;
        }

        // 작성된 HTML 코드를 div 영역에 삽입.
        likeTableBody.innerHTML = htmlStr;
    }

    function setupPagination(totalPages) {
        const pagination = document.querySelector('#pagination');
        if (!pagination) {
            console.error('pagination을 찾을 수 없습니다.');
            return;
        }

        pagination.innerHTML = '';

        // 이전 페이지 버튼 추가
        let htmlStr = `<li class="page-item ${currentPage === 1 ? 'disabled' : ''}">
                        <a class="page-link" href="#" onclick="changePage(${currentPage - 1})">이전</a>
                      </li>`;

        // 페이지 번호 버튼 추가
        for (let i = 1; i <= totalPages; i++) {
            htmlStr += `<li class="page-item ${currentPage === i ? 'active' : ''}">
                            <a class="page-link" href="#" onclick="changePage(${i})">${i}</a>
                        </li>`;
        }

        // 다음 페이지 버튼 추가
        htmlStr += `<li class="page-item ${currentPage === totalPages ? 'disabled' : ''}">
                        <a class="page-link" href="#" onclick="changePage(${currentPage + 1})">다음</a>
                    </li>`;

        pagination.innerHTML = htmlStr;
    }

    window.changePage = function(page) {
        currentPage = page;
        getUserLike();
        scrollToUserLikes();
    };

    function scrollToUserLikes() {
        const userLikesSection = document.getElementById('userLikesSection');
        if (userLikesSection) {
            userLikesSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
        }
    }

    // ID/PW 변경 버튼과 모달 창 관련 요소들을 가져옵니다.
    const updateInfoBtn = document.getElementById('updateInfoBtn');
    const passwordConfirmModalElement = document.getElementById('passwordConfirmModal');
    const passwordConfirmModal = new bootstrap.Modal(passwordConfirmModalElement);
    const confirmPasswordBtn = document.getElementById('confirmPasswordBtn');
    const passwordInput = document.getElementById('password');
    const userPassword = document.getElementById('userPassword').value; // userPassword 값 가져오기

    // ID/PW 변경 버튼 클릭 시 비밀번호 확인 모달을 보여줍니다.
    updateInfoBtn.addEventListener('click', function(e) {
        e.preventDefault();
        passwordConfirmModal.show();
    });

    // 확인 버튼 클릭 시 비밀번호 검증을 수행합니다.
    confirmPasswordBtn.addEventListener('click', function() {
        const password = passwordInput.value;

        // 클라이언트 측에서 비밀번호 비교
        if (password === userPassword) {
            passwordConfirmModal.hide();
            location.href = '../user/update?userId=' + userId;
        } else {
            alert('비밀번호가 올바르지 않습니다.');
        }
    });

});