/**
 * popular.jsp
 */

document.addEventListener("DOMContentLoaded", function() {
    // 좋아요 아이콘 클릭 이벤트 핸들러
    const heartIcons = document.querySelectorAll('.heart-icon');

    heartIcons.forEach(icon => {
        let initialLikes = parseInt(icon.nextElementSibling.textContent); // 초기 좋아요 개수

        // 초기 하트 클래스 설정
        if (icon.classList.contains('liked')) {
            icon.classList.remove('far');
            icon.classList.add('fas');
            icon.style.color = 'red';
        } else {
            icon.classList.remove('fas');
            icon.classList.add('far');
            icon.style.color = 'black';
        }

        icon.addEventListener('click', function() {
            const songId = icon.dataset.songId;
            // const id = icon.dataset.id;
            const id = 4; // 실제 사용자 ID로 대체
            const likesCountElement = icon.nextElementSibling;
            let likesCount = parseInt(likesCountElement.textContent);

            if (icon.classList.contains('liked')) {
                axios.delete(`../api/cancelLike/${songId}`, { params: { id: id } })
                    .then(response => {
                        if (response.status === 200) {
                            icon.classList.remove('liked');
                            icon.classList.remove('fas');
                            icon.classList.add('far');
                            icon.style.color = 'black';
                            likesCount -= 1;
                            likesCountElement.textContent = response.data; // 최신 좋아요 개수로 업데이트
                        }
                    })
                    .catch(error => {
                        console.error('좋아요 제거 중 오류:', error);
                    });
            } else {
                const data = { songId, id };
                axios.post('../api/addLike', data)
                    .then(response => {
                        if (response.status === 200) {
                            icon.classList.add('liked');
                            icon.classList.remove('far');
                            icon.classList.add('fas');
                            icon.style.color = 'red';
                            likesCount += 1;
                            likesCountElement.textContent = response.data; // 최신 좋아요 개수로 업데이트
                        }
                    })
                    .catch(error => {
                        console.error('좋아요 추가 중 오류:', error);
                    });
            }
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
    
     const saveButton = document.getElementById('btnUpdateComment');
    const selectPlayListModal = new bootstrap.Modal(document.getElementById('selectPlayList'));

    // 플레이리스트 추가 버튼 클릭 이벤트 핸들러
    const addToPlaylistButtons = document.querySelectorAll('.add-to-playlist-btn');
    addToPlaylistButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            const songId = this.dataset.songId;

            axios.get('../api/getMyPlayList', { params: { id: 4 } })  // 실제 사용자 ID로 대체
                .then(response => {
                    if (response.status === 200) {
                        const playLists = response.data;
                        const playListsContainer = document.getElementById('playLists');
                        playListsContainer.innerHTML = '';  // 기존 내용을 지움.

                        playLists.forEach(list => {
                            const listElement = document.createElement('div');
                            listElement.classList.add('form-check');
                            listElement.innerHTML = `
                                <input class="form-check-input" type="checkbox" value="${list.pListId}" id="playlist-${list.pListId}" data-playlist-id="${list.pListId}" />
                                <label class="form-check-label" for="playlist-${list.pListId}">${list.pListName}</label>
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

        axios.post('../api/addToPlaylist', {
            pListId: selectedPlaylistIds,
            songId: songId
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
    });
  

});

