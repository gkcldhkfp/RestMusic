/**
 * /playlists/playlist.jsp 포함
 */
document.addEventListener('DOMContentLoaded', () => {

    const pListId = document.querySelector('h2#pListId').textContent;

    getPlayListSong();

    function getPlayListSong() {
        const uri = `../getPlayListSong/${pListId}`;

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

    function makePlayListElements(data) {
        // 플리 목록 HTML이 삽입될 tbody
        const tbodySongsTableBody = document.querySelector('tbody#songsTableBody');
        const songCountElement = document.getElementById('totalSongs'); // 음원 갯수를 출력할 span 요소
        const playLists = document.querySelector('div#playLists'); // 플리에 음원이 없을 경우 출력될 요소

        if (!tbodySongsTableBody) {
            console.error('songsTableBody를 찾을 수 없습니다.');
            return;
        }

        // 플리 목록 HTML 코드
        let htmlStr = '';
        // 플리 음원 갯수 count
        let songCount = 0;

        // 가장 최근에 추가된 곡을 저장할 변수
        let recentSong = null;

        // 기본 이미지 URL 정의
        const defaultImage = '../images/default.png';
        // 삭제 이미지 URL 정의
        const deleteImage = '../images/delete.png';

        for (let playlistSong of data) {

            // ${playlist.albumImage}가 null이면 기본 이미지 사용
            const albumImageSrc = playlistSong.albumImage ? `..${playlistSong.albumImage}` : defaultImage;

            // 가장 최근에 추가된 곡을 설정
            if (!recentSong || playlistSong.createdTime > recentSong.createdTime) {
                recentSong = playlistSong;
            }

            console.log(playlistSong);
            htmlStr += `
            <tr>
                <td style="text-align: left; vertical-align: middle;"><img alt="songImg" src="${albumImageSrc}"
                    width="80px" height="80px"></td>
                <td style="text-align: left; vertical-align: middle; font-size: 14px;">
                    <a>${playlistSong.title}</a>
                </td>
                <td style="text-align: left; vertical-align: middle; font-size: 14px">${playlistSong.singerName}</td>
                <td style="text-align: center; vertical-align: middle; font-size: 14px;">
                    <button class="deleteButton btn btn-primary ms-2 mt-2" data-songId="${playlistSong.songId}" data-createdTime="${playlistSong.createdTime}"
                    style="position: relative; width: 40px; height: 40px; overflow: hidden; background-color:white; border:none; background-color:transparent;">
                        <c:url var="deleteImage" value="/images/delete.png" />
                            <div class="flex-grow-1 ms-3">
                                <img src="${deleteImage}" 
                                style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                            </div>
                    </button>
                </td>    
            </tr>
            `;

            songCount++; // 음원의 갯수를 카운트


        }

        // 작성된 HTML 코드를 tbody 영역에 삽입.
        tbodySongsTableBody.innerHTML = htmlStr;
        songCountElement.textContent = songCount; // 곡 수 업데이트

        // 추가된 곡이 없으면(플리가 비어있으면) 리스트를 출력하는 부분에 해당 텍스트, defaultListImage 출력.
        const defaultListImage = '../images/defaultList.png';
        const albumCoverImg = document.querySelector('img[alt="albumCover"]'); // 플레이리스트 커버(이미지) 태그 지정

        if (songCount == 0) {
            htmlStr += `
                <div class='container' style="text-align: center;">
                    <img src="${defaultListImage}" width="80px" height="80px">
                    <h5 id="defaultList" class="mt-4" style="text-align: center; color:gray;">
                        추가된 곡이 없습니다..!
                    </h5>
                </div>
                `
            albumCoverImg.src = defaultImage; // 플레이리스트에 곡이 없다면(count가 0) 플레이리스트 커버(이미지)를 defaultImage로 설정
            playLists.innerHTML = htmlStr;
        }

        // 가장 최근에 추가된 곡의 앨범 커버 이미지 설정
        if (recentSong) {
            const recentAlbumImageSrc = recentSong.albumImage ? `..${recentSong.albumImage}` : defaultImage;
            albumCoverImg.src = recentAlbumImageSrc;
        }

        const deleteList = document.querySelectorAll('button.deleteButton'); // htmlStr로 추가된 html 영역의 button 태그의 클래스 이름을 지정
        for (let button of deleteList) {
            button.addEventListener('click', deletePlayListSong);
        }

        const aPlayLists = document.querySelectorAll('a.playList');
        for (let a of aPlayLists) {
            a.addEventListener('click', () => {
                const plistId = a.getAttribute('data-songId');
                console.log('클릭한 플레이리스트의 plistId:', plistId);
                window.location.href = `../playlists/playlist?plistId=${plistId}`;
            });
        }
    }

    function deletePlayListSong(event) {
        const songId = event.currentTarget.getAttribute('data-songId');
        const createdTime = event.currentTarget.getAttribute('data-createdTime');

        // 문자열로 받은 timestamp 값을 숫자 타입으로 변환
        const timestamp = Number(createdTime);

        // 숫자 타입의 timestamp 값을 Date 객체로 변환
        const date = new Date(timestamp).getTime();

        console.log('plistId = ' + pListId);
        console.log('songId = ' + songId);
        console.log('createdTime = ' + date);

        // 삭제 여부 확인
        const result = confirm('해당 플레이리스트를 정말 삭제할까요?');
        if (!result) { // 사용자가 [취소]를 선택했을 때
            return; // 함수 종료
        }

        // Ajax 요청을 보낼 URI
        const uri = `../deletePlayListSong/${pListId}/${songId}/${date}`;
        console.log(uri);
        axios
            .delete(uri)
            .then((response) => {
                console.log(response.data);
                alert(`플레이 리스트를 삭제하였습니다.`);
                getPlayListSong();
            })
            .catch((error) => {
                console.log(error);
            });
    }

    document.getElementById('editButton').addEventListener('click', function() {
        var pListNameElement = document.getElementById('pListName');
        var currentName = pListNameElement.innerText;

        // 이미 입력 필드가 있는지 확인
        if (document.getElementById('pListNameInput')) {
            return; // 이미 있다면 함수 종료
        }

        var input = document.createElement('input');
        input.type = 'text';
        input.value = currentName;
        input.className = 'form-control';
        input.id = 'pListNameInput';
        input.style.position = 'absolute';
        input.style.zIndex = '10';
        input.style.width = '700px'; // pListName 요소의 너비와 동일하게 설정
        input.maxLength = '20'; // input 내의 글자수 제한 설정

        console.log('create input');

        // 입력 필드를 pListName 요소 위에 배치
        pListNameElement.style.position = 'relative';
        pListNameElement.insertBefore(input, pListNameElement.firstChild);
        console.log('set input');
        
        // pListName 텍스트를 숨김
        pListNameElement.style.display = 'none';

        // input 바깥으로 포커스 아웃시키면 작업 취소
        input.addEventListener('blur', function() {
            cancelUpdatePlaylistName();
        });

        // ESC 키 다운 이벤트 발생 시 작업 취소
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape') {
                cancelUpdatePlaylistName();
            }
        });
        
        // input에서 Enter 키다운 이벤트가 발생하면 input에 입력된 값을 받아 업데이트 작업(updatePlayListName 함수) 실행  
        input.addEventListener('keydown', function(event) {
            if (event.key === 'Enter') {
                updatePlayListName(input.value);
                pListNameElement.innerText = input.value; // 텍스트 업데이트
                pListNameElement.style.display = 'block'; // 원래 텍스트 보이기
                input.remove(); // 입력 필드 제거
            }
        });

        input.focus();
    });

    function cancelUpdatePlaylistName() {
        var pListNameElement = document.getElementById('pListName');
        pListNameElement.style.display = 'block'; // 원래 텍스트 보이기
        var input = document.getElementById('pListNameInput');
        // 입력 필드가 존재하고, 이를 pListName 요소의 자식 요소로서 제거
        if (input && input.parentNode === pListNameElement) {
            // setTimeout을 사용하여 비동기적으로 입력 필드를 제거
            setTimeout(function() {
                if (input.parentNode === pListNameElement) {
                    pListNameElement.removeChild(input); // 입력 필드 제거
                }
            }, 0);
        }
    }

    function updatePlayListName(pListName) {
        console.log(pListId);
        console.log(pListName);

        const uri = `../updatePlayListName/${pListId}`;
        axios
            .put(uri, { plistName: pListName })
            .then((response) => {
                console.log(response);
                alert(`플레이리스트 이름이 업데이트되었습니다.`);
            })
            .catch((error) => {
                console.log(error);
            });
    }
});