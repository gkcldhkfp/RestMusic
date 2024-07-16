/**
 * /song/genreChart.jsp에 포함
 */

document.addEventListener("DOMContentLoaded", function() {
    // 각 장르 버튼 클릭 시 URL로 이동하는 함수 추가
    const genreButtons = document.querySelectorAll('.genre-btn');
    const noChartMessage = document.getElementById('noChartMessage');
    const chartTable = document.querySelector('.container .table');
    const tableBody = chartTable.querySelector('tbody');
    const rows = tableBody.querySelectorAll('tr');

    genreButtons.forEach(button => {
        button.addEventListener('click', function() {
            const genreName = this.dataset.genreName;
            if (genreName === '전체') {
                location.href = '../song/genreChart'; // '전체' 버튼 클릭 시 해당 URL로 이동
            } else {
                location.href = `../song/genreChart?genreName=${genreName}`; // 다른 장르 버튼 클릭 시 해당 URL로 이동
            }
            
            // 모든 버튼에서 'active' 클래스 제거
            genreButtons.forEach(btn => btn.classList.remove('active'));
    
            // 클릭된 버튼에 'active' 클래스 추가
            this.classList.add('active');
        });
    });
    
    // 페이지 로드 시 현재 선택된 장르에 해당하는 버튼 활성화
    const urlParams = new URLSearchParams(location.search);
    const currentGenre = urlParams.get('genreName') || '전체';
    const activeButton = document.querySelector(`.genre-btn[data-genre-name="${currentGenre}"]`);
    if (activeButton) {
        activeButton.classList.add('active');
    }
    
    if (rows.length === 0) {
        // 테이블에 데이터가 없는 경우
        noChartMessage.classList.remove('d-none');
        chartTable.classList.add('d-none');
    } else {
        // 테이블에 데이터가 있는 경우
        noChartMessage.classList.add('d-none');
        chartTable.classList.remove('d-none');
    }
    

    // 좋아요 아이콘 클릭 이벤트 핸들러
    const heartIcons = document.querySelectorAll('.heart-icon');
    
    heartIcons.forEach(icon => {
        const songId = icon.dataset.songId;
        const loginUserId = parseInt(icon.dataset.id);
        let likesCountElement = icon.nextElementSibling; // 좋아요 개수를 표시하는 요소를 가져옴
        
        // 특정 사용자가 특정 노래를 좋아요 했는지 여부를 서버에 요청
        const data = { songId, loginUserId };
        axios.post('../api/isLiked', data)
            .then(response => {
                // 서버 응답에 따라 좋아요 상태를 설정
                if (response.data) {
                    icon.classList.add('liked'); // liked 클래스를 추가
                    icon.classList.remove('far'); // 비어있는 하트 아이콘 클래스를 제거
                    icon.classList.add('fas'); // 채워진 하트 아이콘을 추가
                    icon.style.color = 'red'; // 아이콘 색상을 빨간색으로 설정
                } else {
                    icon.classList.remove('liked'); // liked 클래스를 제거
                    icon.classList.remove('fas'); // 채워진 하트 아이콘을 제거
                    icon.classList.add('far'); // 비어있는 하트 아이콘을 추가
                    icon.style.color = 'black'; // 아이콘 색상을 검은색으로 설정
                }

                // 아이콘 클릭 이벤트 리스너 추가
                icon.addEventListener('click', function() {
                    if (loginUserId === 0) { // 로그인하지 않은 경우
                        // 로그인 모달창 대신 컨펌창 사용
                        if (confirm('로그인이 필요합니다. 로그인 하시겠습니까?')) {
                            const currentPath = location.pathname.replace('/Rest', '');
                            location.href = '../user/signin?target=' + encodeURIComponent(currentPath);
                        }
                        return;
                    }

                    let likesCount = parseInt(likesCountElement.textContent); // 현재 좋아요 개수를 가져옴

                    if (icon.classList.contains('liked')) { // 이미 좋아요 상태인 경우
                        // 좋아요 취소 요청을 서버로 보냄
                        axios.delete(`../api/cancelLike/${songId}/${loginUserId}`)
                            .then(response => {
                                if (response.status === 200) { // 서버 응답이 성공적인 경우
                                    icon.classList.remove('liked'); // liked 클래스를 제거
                                    icon.classList.remove('fas'); // 채워진 하트 아이콘을 제거
                                    icon.classList.add('far'); // 비어있는 하트 아이콘을 추가
                                    icon.style.color = 'black'; // 아이콘 색상을 검은색으로 설정
                                    likesCount -= 1; // 좋아요 개수를 1 감소
                                    likesCountElement.textContent = response.data; // 최신 좋아요 개수로 업데이트
                                }
                            })
                            .catch(error => {
                                console.error('좋아요 제거 중 오류:', error); // 오류 처리
                            });
                    } else { // 좋아요 상태가 아닌 경우
                        const data = { songId, loginUserId }; // 서버로 보낼 데이터 생성
                        // 좋아요 추가 요청을 서버로 보냄
                        axios.post('../api/addLike', data)
                            .then(response => {
                                if (response.status === 200) { // 서버 응답이 성공적인 경우
                                    icon.classList.add('liked'); // liked 클래스를 추가
                                    icon.classList.remove('far'); // 비어있는 하트 아이콘을 제거
                                    icon.classList.add('fas'); // 채워진 하트 아이콘을 추가
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
    
    // 플로팅 버튼 그룹 요소 선택
    const songCheckboxes = document.querySelectorAll('.songCheckbox');
    const floatingButtonGroup = document.getElementById('floatingButtonGroup');
    const selectedCountDisplay = floatingButtonGroup.querySelector('.selected-count');
    const deselectAllButton = floatingButtonGroup.querySelector('.deselect-all');
    const selectAllCheckbox = document.getElementById('selectAllCheckbox');

    // 버튼 그룹 업데이트 함수
    function updateButtonGroup() {
        const checkedBoxes = document.querySelectorAll('.songCheckbox:checked');
        const checkedCount = checkedBoxes.length;
        
        if (checkedCount > 0) {
            floatingButtonGroup.classList.remove('d-none');
            selectedCountDisplay.textContent = `${checkedCount}개 선택됨`;
        } else {
            floatingButtonGroup.classList.add('d-none');
        }
    }

    // 개별 체크박스 이벤트 리스너
    songCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', updateButtonGroup);
    });

    // 선택 해제 버튼 이벤트 리스너
    deselectAllButton.addEventListener('click', function() {
        songCheckboxes.forEach(checkbox => {
            checkbox.checked = false;
        });
        selectAllCheckbox.checked = false; // 전체 선택 체크박스 해제
        updateButtonGroup();
    });

    // 전체 선택 체크박스 이벤트 리스너
    selectAllCheckbox.addEventListener('change', function() {
        const isChecked = selectAllCheckbox.checked;
        songCheckboxes.forEach(checkbox => {
            checkbox.checked = isChecked;
        });
        updateButtonGroup();
    });
    
    // 듣기 버튼 클릭 이벤트
    floatingButtonGroup.querySelector('.play-selected').addEventListener('click', function() {
        const selectedSongs = Array.from(document.querySelectorAll('.songCheckbox:checked')).map(checkbox => checkbox.dataset.songId);
        
        if (selectedSongs.length > 0) {
            // 첫 번째 곡 재생 (재생목록에 추가하지 않음)
            playSelectedSong(selectedSongs[0]);
    
            // 나머지 곡들만 재생목록에 추가 (알림 표시 없이)
            if (selectedSongs.length > 1) {
                addAllToPlaylist(selectedSongs.slice(1), true);  // 주석: skipAlert를 true로 설정하여 "재생 목록에 추가되었습니다" 알림을 숨김
            }
    
            // 알림 메시지 표시
            if (selectedSongs.length === 1) {
                showAlert('선택한 음원을 재생합니다.', 2000, false);  // 주석: skipAlert를 false로 설정하여 알림을 표시
            } else {
                showAlert('선택한 곡들을 재생합니다.', 2000, false);  // 주석: skipAlert를 false로 설정하여 알림을 표시
            }
        }
    });
    
    // 선택된 곡을 재생하는 함수
    function playSelectedSong(songId) {
        const url = `/Rest/song/listen?songId=${songId}`;
        axios.get(url)
            .then((response) => {
                console.log("첫 번째 곡 재생 성공");
                sessionStorage.setItem('index', 0);
                sessionStorage.setItem('isAdded', 'Y');
                parent.songFrame.location.reload();
            })
            .catch((error) => console.log(error));
    }
    
    // 재생목록에 곡을 추가하는 함수
    function addToPlaylist(songId) {
        const url = `/Rest/song/addCurrentPlayList?songId=${songId}`;
        axios.get(url)
            .then((response) => {
                console.log(`곡 ${songId}를 재생목록에 추가했습니다.`);
                if (sessionStorage.getItem('isAdded') === 'N') {
                    sessionStorage.setItem('index', 0);
                    sessionStorage.setItem('isAdded', 'Y');
                    parent.songFrame.location.reload();
                }
            })
            .catch((error) => console.log(error));
    }
    
    // 재생목록에 추가 버튼 클릭 이벤트
    floatingButtonGroup.querySelector('.add-to-playlist').addEventListener('click', function() {
        const selectedSongs = Array.from(document.querySelectorAll('.songCheckbox:checked')).map(checkbox => checkbox.dataset.songId);
        if (selectedSongs.length > 0) {
            // 선택된 노래 중 하나라도 재생목록에 있는지 확인
            checkAnyInPlaylist(selectedSongs).then(anyInPlaylist => {
                if (anyInPlaylist) {
                    // 재생목록에 있는 노래가 하나라도 있으면 한 번만 확인
                    if (confirm('이미 재생목록에 있는 곡이 포함되어 있습니다. 그래도 추가하시겠습니까?')) {
                        addAllToPlaylist(selectedSongs, false);  // 주석: skipAlert를 false로 설정하여 "재생 목록에 추가되었습니다" 알림을 표시
                    }
                } else {
                    // 모든 노래가 재생목록에 없으면 바로 추가
                    addAllToPlaylist(selectedSongs, false);  // 주석: skipAlert를 false로 설정하여 "재생 목록에 추가되었습니다" 알림을 표시
                }
            });
        }
    });
    
    // 선택된 노래 중 하나라도 재생목록에 있는지 확인하는 함수
    function checkAnyInPlaylist(songIds) {
        return Promise.any(songIds.map(songId => 
            axios.get(`../song/getCPList?songId=${songId}`)
                .then(response => response.data ? Promise.resolve(true) : Promise.reject(false))
        )).then(() => true).catch(() => false);
    }
    
    // 모든 선택된 노래를 재생목록에 추가하는 함수
    function addAllToPlaylist(songIds, skipAlert = false) {
        songIds.forEach(songId => {
            const addToPlaylistBtn = document.querySelector(`#addCPList[data-id="${songId}"]`);
            if (addToPlaylistBtn) {
                // addCurrentPlayList.js의 컨펌 창을 무시하기 위해 커스텀 이벤트 사용
                const customEvent = new CustomEvent('customAddToPlaylist', { 
                    detail: { 
                        skipConfirm: true,
                        skipAlert: skipAlert  // 주석: skipAlert를 전달하여 "재생 목록에 추가되었습니다" 알림을 제어
                    } 
                });
                addToPlaylistBtn.dispatchEvent(customEvent);
            }
        });
    }
    
    // 재생목록에 추가하는 함수
    function addCurrentPlayList(songId, showAlertIndividually) {
        const url = `/Rest/song/addCurrentPlayList?songId=${songId}`;
        axios.get(url)
            .then(response => {
                console.log(response);
                if (sessionStorage.getItem('isAdded') === 'N') {
                    sessionStorage.setItem('index', 0);
                    sessionStorage.setItem('isAdded', 'Y');
                    parent.songFrame.location.reload();
                }
                if (showAlertIndividually) {
                    showAlert('재생 목록에 추가되었습니다', 2000, false);  // 주석: skipAlert를 false로 설정하여 "재생 목록에 추가되었습니다" 알림을 표시
                }
            })
            .catch(error => {
                console.log(error);
            });
    }
    
    // 알림 표시 함수 (기존 addCurrentPlayList의 알림 스타일 사용)
    function showAlert(message, duration, skipAlert) {
        // 주석: skipAlert가 true이면 알림을 표시하지 않음
        if (skipAlert) {
            return;
        }
    
        // 기존 알림창이 있는지 확인
        if (document.querySelector('.custom-alert')) {
            // 기존 알림창이 있으면 새 알림을 표시하지 않음
            return;
        }
    
        // 알림창 생성
        const alertBox = document.createElement('div');
        alertBox.textContent = message;
        alertBox.style.cssText = `
            position: fixed;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #333;
            color: white;
            padding: 15px 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            z-index: 1000;
            opacity: 0;
            transition: opacity 0.5s ease-in-out;
        `;
    
        document.body.appendChild(alertBox);
    
        // Fade in
        setTimeout(() => {
            alertBox.style.opacity = '1';
        }, 10);
    
        // Fade out and remove
        setTimeout(() => {
            alertBox.style.opacity = '0';
            setTimeout(() => {
                document.body.removeChild(alertBox);
            }, 500);
        }, duration);
    }
    
    // 초기 설정
    if (!sessionStorage.getItem('isAdded')) {
        sessionStorage.setItem('isAdded', 'N');
    }
    
    // `refresh` 변수가 정의되지 않은 경우 오류를 방지하기 위해 수정 필요
    if (typeof refresh !== 'undefined' && refresh === 'Y') {
        console.log(refresh);
        refresh = 'N';
        parent.songFrame.location.reload();
    }

    // 담기 버튼 클릭 이벤트
    floatingButtonGroup.querySelector('.add-to-my-list').addEventListener('click', function() {
        const selectedSongs = Array.from(document.querySelectorAll('.songCheckbox:checked')).map(checkbox => checkbox.dataset.songId);
        if (selectedSongs.length > 0) {
            // 첫 번째 선택된 곡의 버튼에서 id를 가져옵니다.
            const firstSongButton = document.querySelector(`.add-to-playlist-btn[data-song-id="${selectedSongs[0]}"]`);
            const id = parseInt(firstSongButton.dataset.id);
            console.log(id);
    
            if (id === 0) { // 로그인하지 않은 경우
                // 로그인 모달창 대신 컨펌창 사용
                if (confirm('로그인이 필요합니다. 로그인 하시겠습니까?')) {
                    const currentPath = location.pathname.replace('/Rest', '');
                    location.href = '../user/signin?target=' + encodeURIComponent(currentPath);
                }
                return;
            }
    
            showPlayListModal(id, selectedSongs);
    
            // 모든 곡이 추가된 후 실행될 함수
            function afterAddingAllSongs() {
                // 1. 플로팅 그룹 숨기기
                floatingButtonGroup.classList.add('d-none');
    
                // 2. 모든 체크박스 해제 (전체 선택 체크박스 포함)
                document.querySelectorAll('.songCheckbox:checked, #selectAllCheckbox:checked').forEach(checkbox => {
                    checkbox.checked = false;
                });
    
            }
    
            // 모든 곡 추가 후 실행
            afterAddingAllSongs();
        }
    });
    
    // 플레이리스트 불러오기 및 모달 표시 함수
    function showPlayListModal(id, songIds) {  // songIds를 배열로 받음
        axios.get(`../getPlayList/${id}`)
            .then(response => {
                if (response.status === 200) {
                    const playLists = response.data;
                    const playListsContainer = document.getElementById('playLists');
                    playListsContainer.innerHTML = ''; // 기존 내용을 지움
    
                    playLists.forEach(list => {
                        const defaultImage = '../images/icon/default.png';
                        const albumImageSrc = list.albumImage ? `../images/albumcover/${list.albumImage}` : defaultImage;
    
                        const listElement = document.createElement('div');
                        listElement.classList.add('playlist-item', 'd-flex', 'align-items-center', 'mb-2');
                        listElement.innerHTML = `
                            <div class="form-check">
                                <input class="form-check-input playlist-checkbox" type="checkbox"
                                    value="${list.plistId}" id="playlist-${list.plistId}" data-playlist-id="${list.plistId}">
                            </div>
                            <div class="playlist-button-container">
                                <button class="playList btn btn-outline-success w-100" data-id="${list.plistId}">
                                    <div class="d-flex align-items-center">
                                        <div class="playlist-image">
                                            <img src="${albumImageSrc}" alt="Album cover" class="rounded">
                                        </div>
                                        <div class="playlist-name"> ${list.plistName} </div>
                                    </div>
                                </button>
                            </div>
                          `;
                        playListsContainer.appendChild(listElement);
                    });
    
                    // songIds를 hidden input으로 추가
                    const hiddenInput = document.createElement('input');
                    hiddenInput.type = 'hidden';
                    hiddenInput.id = 'selectedSongIds';
                    hiddenInput.value = JSON.stringify(songIds);  // 배열을 JSON 문자열로 변환
                    playListsContainer.appendChild(hiddenInput);
    
                    const selectPlayListModal = new bootstrap.Modal(document.getElementById('selectPlayList'));
                    selectPlayListModal.show();
                }
            })
            .catch(error => {
                console.error('플레이리스트를 불러오는 중 오류가 발생했습니다:', error);
            });
    }
    
    // 곡 추가 함수
    function addSongToPlaylists() {
        const selectedPlaylists = document.querySelectorAll('#playLists .playlist-checkbox:checked');
        const selectedPlaylistIds = Array.from(selectedPlaylists).map(checkbox => checkbox.dataset.playlistId);
    
        // hidden input에서 songIds를 가져옴
        const songIdsJson = document.getElementById('selectedSongIds').value;
        const songIds = JSON.parse(songIdsJson);  // JSON 문자열을 배열로 변환
    
        if (selectedPlaylistIds.length === 0) {
            alert('플레이리스트를 선택하세요.');
            return;
        }
    
        if (songIds.length === 0) {
            alert('곡을 선택하세요.');
            return;
        }
    
        const alreadyAdded = {};
        const promises = [];
    
        selectedPlaylistIds.forEach(plistId => {
            alreadyAdded[plistId] = false;
    
            songIds.forEach(songId => {
                console.log(`플레이리스트 ${plistId}에 곡 ${songId} 확인 중`);
                // 각 플레이리스트에 곡이 이미 추가되어 있는지 확인
                const checkPromise = axios.post(`../checkSongInPlayList`, {
                    plistId: parseInt(plistId),
                    songId: parseInt(songId)
                }).then(response => {
                    console.log(`플레이리스트 ${plistId} 응답:`, response.data);
                    if (response.data === false) { // 곡이 이미 있는 경우
                        alreadyAdded[plistId] = true;
                    }
                }).catch(error => {
                    console.error('플레이리스트에서 곡 확인 중 오류가 발생했습니다:', error);
                });
                promises.push(checkPromise);
            });
        });
    
        Promise.all(promises).then(() => {
            const addedPlaylists = selectedPlaylistIds.filter(plistId => alreadyAdded[plistId]);
            if (addedPlaylists.length > 0) {
                // 변경된 부분: alert를 confirm으로 바꾸고 사용자가 확인을 누르면 곡을 추가
                if (confirm('선택한 플레이리스트에 이미 추가된 곡입니다. 그래도 추가하시겠습니까?')) {
                    // 곡이 이미 추가된 경우에도 추가 요청 보내기
                    const addPromises = selectedPlaylistIds.flatMap(plistId => {
                        return songIds.map(songId => {
                            return axios.post(`../addSongToPlayList`, {
                                plistId: parseInt(plistId),
                                songId: parseInt(songId)
                            });
                        });
                    });
    
                    Promise.all(addPromises).then(responses => {
                        const allSuccessful = responses.every(response => response && response.status === 200);
                        if (allSuccessful) {
                            alert('선택한 플레이리스트에 곡이 추가되었습니다.');
                            const selectPlayListModal = bootstrap.Modal.getInstance(document.getElementById('selectPlayList'));
                            selectPlayListModal.hide();
    
                            // 체크박스 해제 및 플로팅 버튼 숨기기
                            document.querySelectorAll('.songCheckbox:checked, #selectAllCheckbox:checked').forEach(checkbox => {
                                checkbox.checked = false;
                            });
                            floatingButtonGroup.classList.add('d-none');
    
                            // 모달 배경을 어둡게 하지 않도록 설정
                            const modalBackdrop = document.querySelector('.modal-backdrop');
                            if (modalBackdrop) {
                                modalBackdrop.style.opacity = '0';
                            }
                        }
                    }).catch(error => {
                        console.error('플레이리스트에 곡 추가 중 오류가 발생했습니다:', error);
                        alert('플레이리스트에 곡을 추가하는 중 오류가 발생했습니다.');
                    });
                } else {
                    const selectPlayListModal = bootstrap.Modal.getInstance(document.getElementById('selectPlayList'));
                    selectPlayListModal.hide();
                    return;
                }
            } else {
                // 곡이 추가되지 않은 플레이리스트에 추가
                const addPromises = selectedPlaylistIds.flatMap(plistId => {
                    return songIds.map(songId => {
                        return axios.post(`../addSongToPlayList`, {
                            plistId: parseInt(plistId),
                            songId: parseInt(songId)
                        });
                    });
                });
    
                Promise.all(addPromises).then(responses => {
                    const allSuccessful = responses.every(response => response && response.status === 200);
                    if (allSuccessful) {
                        alert('선택한 플레이리스트에 곡이 추가되었습니다.');
                        const selectPlayListModal = bootstrap.Modal.getInstance(document.getElementById('selectPlayList'));
                        selectPlayListModal.hide();
    
                        // 체크박스 해제 및 플로팅 버튼 숨기기
                        document.querySelectorAll('.songCheckbox:checked, #selectAllCheckbox:checked').forEach(checkbox => {
                            checkbox.checked = false;
                        });
                        floatingButtonGroup.classList.add('d-none');
    
                        // 모달 배경을 어둡게 하지 않도록 설정
                        const modalBackdrop = document.querySelector('.modal-backdrop');
                        if (modalBackdrop) {
                            modalBackdrop.style.opacity = '0';
                        }
                    }
                }).catch(error => {
                    console.error('플레이리스트에 곡 추가 중 오류가 발생했습니다:', error);
                    alert('플레이리스트에 곡을 추가하는 중 오류가 발생했습니다.');
                });
            }
        });
    }
    
    // 플레이리스트에 곡 추가 버튼 클릭 이벤트 핸들러
    const saveButton = document.getElementById('btnAddSong');
    saveButton.addEventListener('click', addSongToPlaylists);
    
    // 플레이리스트 추가 버튼 클릭 이벤트 핸들러
    const addToPlaylistButtons = document.querySelectorAll('.add-to-playlist-btn');
    addToPlaylistButtons.forEach(button => {
        button.addEventListener('click', function(event) {
            const id = parseInt(this.dataset.id);
            const songId = this.dataset.songId;  // 버튼에서 songId를 가져옴
            if (id === 0) { // 로그인하지 않은 경우
                // 로그인 모달창 대신 컨펌창으로 변경
                if (confirm('로그인이 필요합니다. 로그인 하시겠습니까?')) {
                    const currentPath = location.pathname.replace('/Rest', '');
                    location.href = '../user/signin?target=' + encodeURIComponent(currentPath);
                }
                return;
            }
            addToPlaylistButtons.forEach(btn => btn.classList.remove('active')); // 모든 버튼의 active 클래스 제거
            this.classList.add('active'); // 현재 클릭한 버튼에 active 클래스 추가
            showPlayListModal(id, [songId]);  // songId를 배열로 전달
        });
    });
    
    // 모달 창이 나와도 다른 버튼들을 클릭할 수 있게 설정
    document.querySelectorAll('.modal-backdrop').forEach(backdrop => {
        backdrop.style.pointerEvents = 'none';
    });
    
});

