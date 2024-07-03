/**
 * popular.jsp
 */

document.addEventListener("DOMContentLoaded", function() {
    // 좋아요 아이콘 클릭 이벤트 핸들러
    const heartIcons = document.querySelectorAll(".heart-icon");
    const id = 22; // 실제 사용자 ID로 대체, 로그인되지 않은 경우 null 또는 0으로 설정

    heartIcons.forEach(icon => {
        const songId = icon.dataset.songId;
        let likesCountElement = icon.nextElementSibling; // 좋아요 개수를 표시하는 요소를 가져옴

        // 특정 사용자가 특정 노래를 좋아요 했는지 여부를 서버에 요청
        const data = { songId, id };
        axios.post(`../api/isLiked`, data)
            .then(response => {
                // 서버 응답에 따라 좋아요 상태를 설정
                if (response.data) {
                    icon.classList.add("liked"); // liked 클래스를 추가
                    icon.classList.remove('far'); // 비어있는 하트 아이콘 클래스를 제거
                    icon.classList.add('fas'); // 채워진 하트 아이콘 클래스를 추가
                    icon.style.color = 'red'; // 아이콘 색상을 빨간색으로 설정
                } else {
                    icon.classList.remove('liked'); // liked 클래스를 제거
                    icon.classList.remove('fas'); // 채워진 하트 아이콘 클래스를 제거
                    icon.classList.add('far'); // 비어있는 하트 아이콘 클래스를 추가
                    icon.style.color = 'black'; // 아이콘 색상을 검은색으로 설정
                }

                // 아이콘 클릭 이벤트 리스너 추가
                icon.addEventListener('click', function() {
                    if (id === 0) { // 로그인하지 않은 경우
                        alert('로그인 후 이용하세요.');
                        return;
                    }

                    let likesCount = parseInt(likesCountElement.textContent); // 현재 좋아요 개수를 가져옴

                    if (icon.classList.contains('liked')) { // 이미 좋아요 상태인 경우
                        // 좋아요 취소 요청을 서버로 보냄
                        axios.delete(`../api/cancelLike/${songId}/${id}`)
                            .then(response => {
                                if (response.status === 200) { // 서버 응답이 성공적인 경우
                                    icon.classList.remove('liked'); // liked 클래스를 제거
                                    icon.classList.remove('fas'); // 채워진 하트 아이콘 클래스를 제거
                                    icon.classList.add('far'); // 비어있는 하트 아이콘 클래스를 추가
                                    icon.style.color = 'black'; // 아이콘 색상을 검은색으로 설정
                                    likesCount -= 1; // 좋아요 개수를 1 감소
                                    likesCountElement.textContent = response.data; // 최신 좋아요 개수로 업데이트
                                }
                            })
                            .catch(error => {
                                console.error('좋아요 제거 중 오류:', error); // 오류 처리
                            });
                    } else { // 좋아요 상태가 아닌 경우
                        const data = { songId, id }; // 서버로 보낼 데이터 생성
                        // 좋아요 추가 요청을 서버로 보냄
                        axios.post(`../api/addLike`, data)
                            .then(response => {
                                if (response.status === 200) { // 서버 응답이 성공적인 경우
                                    icon.classList.add('liked'); // liked 클래스를 추가
                                    icon.classList.remove('far'); // 비어있는 하트 아이콘 클래스를 제거
                                    icon.classList.add('fas'); // 채워진 하트 아이콘 클래스를 추가
                                    icon.style.color = 'red'; // 아이콘 색상을 빨간색으로 설정
                                    likesCount += 1; // 좋아요 개수를 1 증가
                                    likesCountElement.textContent = response.data; // 최신 좋아요 개수로 업데이트
                                }
                            })
                            .catch(error => {
                                console.error('좋아요 추가 중 오류:', error); // 오류 처리
                            });
                    }
                });
            })
            .catch(error => {
                console.error('좋아요 상태 가져오는 중 오류:', error); // 오류 처리
                icon.classList.remove('liked'); // 오류 발생 시 기본 상태 설정
                icon.classList.remove('fas');
                icon.classList.add('far');
                icon.style.color = 'black';
            });
    });

    // 전체 선택 체크박스 이벤트 핸들러
    const selectAllCheckbox = document.getElementById('selectAllCheckbox');
    const songCheckboxes = document.querySelectorAll('.songCheckbox');
    const selectAllModal = new bootstrap.Modal(document.getElementById('selectAllModal'), {});

    // 전체 선택 체크박스 이벤트 핸들러
    selectAllCheckbox.addEventListener('change', function() {
        const isChecked = selectAllCheckbox.checked;
        songCheckboxes.forEach(checkbox => {
            checkbox.checked = isChecked;
        });
        if (isChecked) {
            selectAllModal.show();
        }
    });

    // 각 곡 체크박스 이벤트 핸들러
    songCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            if (!this.checked) {
                selectAllCheckbox.checked = false;
            }
        });
    });

    // "전체 듣기" 버튼 클릭 이벤트 핸들러
    document.getElementById('addAllToPlaylist').addEventListener('click', function() {
        // 전체 듣기 기능 구현
        alert('전체 듣기 버튼 클릭');
        selectAllModal.hide();
    });

    // "전체 담기" 버튼 클릭 이벤트 핸들러
    document.getElementById('addAllToCollection').addEventListener('click', function() {
        // 전체 담기 기능 구현
        alert('전체 담기 버튼 클릭');
        selectAllModal.hide();
    });

    // 모달 창이 나와도 다른 버튼들을 클릭할 수 있게 설정
    document.querySelectorAll('.modal-backdrop').forEach(backdrop => {
        backdrop.style.pointerEvents = 'none';
    });

    // 곡 재생 버튼 클릭 이벤트 핸들러
    const playButtons = document.querySelectorAll('.play-btn');
    const audioPlayer = document.getElementById('audioPlayer');
    const audioSource = document.getElementById('audioSource');

    playButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            const songPath = button.dataset.songPath;
            audioSource.src = songPath;
            audioPlayer.load();
            audioPlayer.play();
        });
    });

    const saveButton = document.getElementById('btnAddSong');
    const selectPlayListModal = new bootstrap.Modal(document.getElementById('selectPlayList'));

    // 플레이리스트 추가 버튼 클릭 이벤트 핸들러
    const addToPlaylistButtons = document.querySelectorAll('.add-to-playlist-btn');
    addToPlaylistButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            const songId = this.dataset.songId;

            axios.get(`../getPlayList/${id}`)  // 실제 사용자 ID로 대체
                .then(response => {
                    if (response.status === 200) {
                        const playLists = response.data;
                        const playListsContainer = document.getElementById('playLists');
                        playListsContainer.innerHTML = '';  // 기존 내용을 지움.

                        playLists.forEach(list => {
                            const listElement = document.createElement('div');
                            listElement.classList.add('form-check');
                            listElement.innerHTML = `
                                <input class="form-check-input songCheckbox" type="checkbox" value="${list.plistId}" id="playlist-${list.plistId}" data-playlist-id="${list.plistId}" />
                                <label class="form-check-label" for="playlist-${list.plistId}">${list.plistName}</label>
                            `;
                            playListsContainer.appendChild(listElement);
                        });

                        selectPlayListModal.show();
                    }
                })
                .catch(error => {
                    console.error('Error fetching playlists:', error);
                });
        });
    });

    // 플레이리스트에 곡 추가 버튼 클릭 이벤트 핸들러
    saveButton.addEventListener('click', function() {
        const selectedPlaylists = document.querySelectorAll('#playLists .form-check-input:checked');
        const selectedPlaylistIds = Array.from(selectedPlaylists).map(checkbox => checkbox.dataset.playlistId);
        const songIdElement = document.querySelector('.add-to-playlist-btn[data-song-id]');
        const songId = songIdElement ? songIdElement.dataset.songId : null; // 현재 선택된 곡의 songId로 변경

        if (selectedPlaylistIds.length === 0) {
            alert('플레이리스트를 선택하세요.');
            return;
        }

        if (!songId) {
            alert('곡을 선택하세요.');
            return;
        }

        console.log(selectedPlaylistIds);
        console.log(songId);

        for (let list of selectedPlaylistIds) {
            axios.post(`../addSongToPlayList`, {
                "plistId": list,
                "songId": songId
            })
                .then(response => {
                    if (response.status === 200) {
                        alert('플레이리스트에 곡이 추가되었습니다.');
                        selectPlayListModal.hide();
                    }
                })
                .catch(error => {
                    console.error('Error adding songs to playlists:', error);
                    alert('플레이리스트에 곡을 추가하는 중 오류가 발생했습니다.');
                });
        }


    });
});


