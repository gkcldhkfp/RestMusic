/**
 *  detail.jsp 포함
 */
document.addEventListener('DOMContentLoaded', () => {

    const btnAddcPList = document.querySelector('button#btnAddcPList');
    btnAddcPList.addEventListener('click', addcPList);

    const btnAddPlayList = document.querySelector('button#btnAddPlayList');

    const btnLike = document.querySelector('button#btnLike');

    const playListModal = new bootstrap.Modal('div#selectPlayList', { backdrop: true });
    btnAddPlayList.addEventListener('click', getPlayLists);

    const data = { songId, id };
    let currentPage = 1;
    const itemsPerPage = 5;
    let playlistsData = [];

    axios
        .post('./like', data)
        .then((response) => {
            console.log(response.data);
            if (response.data) {
                btnLike.textContent = '♡';
            } else {
                btnLike.textContent = '♥';
            }
        }
        )
        .catch((error) => {
            console.log(error);
        });



    btnLike.addEventListener('click', () => {

        console.log(data);

        axios
            .put('./like', data)
            .then((response) => {
                console.log(response.data);
                if (response.data) {
                    btnLike.textContent = '♥';
                } else {
                    btnLike.textContent = '♡';
                }
            }
            )
            .catch((error) => {
                console.log(error);
            });

    });

    function getPlayLists() {
        const uri = `../getPlayList/${id}`;
        axios
            .get(uri)
            .then((response) => {
                console.log(response.data);
                
                playlistsData = response.data;
                
                displayPlayLists(currentPage);
                
                setupPagination();
                
                playListModal.show();
            })
            .catch((error) => {
                console.log(error);
            });

    }

    function makePlayListElements(data) {
        // 플리 목록 HTML이 삽입될 div
        const divPlayLists = document.querySelector('div#playLists');

        // 플리 목록 HTML 코드
        let htmlStr = '';
        for (let playlist of data) {
            // 기본 이미지 URL 정의
            const defaultImage = '../images/default.png';

            // ${playlist.albumImage}가 null이면 기본 이미지 사용
            const albumImageSrc = playlist.albumImage ? `..${playlist.albumImage}` : defaultImage;


            console.log(playlist);
            htmlStr += `
            <a class="playList btn btn-outline-success form-control mt-2" data-id="${playlist.plistId}" >
            <div class="d-flex align-items-center">
                <div class="flex-shrink-0">
                    <img src="${albumImageSrc}" alt="..." width="50px" height="50px">
                  </div>
                    <div class="flex-grow-1 ms-3">
                    ${playlist.plistName}
                  </div>
                </div>
            </a>`;
        }

        // 작성된 HTML 코드를 div 영역에 삽입.
        divPlayLists.innerHTML = htmlStr;

        const aPlayLists = document.querySelectorAll('a.playList');
        for (let a of aPlayLists) {
            a.addEventListener('click', addSongPlayList);
        }


    }

    function addSongPlayList(event) {

        const plistId = event.currentTarget.getAttribute('data-id');
        console.log('userid = ' + id);
        console.log('plistId = ' + plistId);

        const data = { plistId, songId };

        axios.post('../checkSongInPlayList', data)
            .then((response) => {
                if (!response.data) {
                    if (confirm('이미 추가된 곡입니다. 그래도 추가하시겠습니까?')) {
                        // 사용자가 확인을 눌렀을 때 추가 요청 보냄
                        addToPlayList(data);
                    }
                } else {
                    // 데이터가 없으면 바로 추가 요청 보냄
                    addToPlayList(data);
                }
            })
            .catch((error) => {
                console.log(error);
            });

        function addToPlayList(data) {
            axios
                .post('../addSongToPlayList', data)
                .then((response) => {
                    console.log(response.data);
                    alert(`추가 성공`);
                    playListModal.hide();
                })
                .catch((error) => {
                    console.log(error);
                });
        }

    }

    function addcPList() {
        console.log('cplist')
    }
    
    function displayPlayLists(page) {
        const startIndex = (page - 1) * itemsPerPage;
        const endIndex = startIndex + itemsPerPage;
        const paginatedPlaylists = playlistsData.slice(startIndex, endIndex);
        makePlayListElements(paginatedPlaylists);
    }
    
      function setupPagination() {
        const totalPages = Math.ceil(playlistsData.length / itemsPerPage);
        const paginationElement = document.getElementById('pagination');
        let paginationHtml = '';

        for (let i = 1; i <= totalPages; i++) {
            if (i === currentPage) {
                paginationHtml += `
                    <li class="page-item active" aria-current="page">
                        <span class="page-link">${i}</span>
                    </li>
                `;
            } else {
                paginationHtml += `
                    <li class="page-item">
                        <a class="page-link" href="#">${i}</a>
                    </li>
                `;
            }
        }
        
        paginationElement.innerHTML = paginationHtml;
        
        paginationElement.addEventListener('click', (event) => {
          if (event.target.tagName === 'A') {
        event.preventDefault(); // 기본 동작 방지
        const page = parseInt(event.target.textContent);
        changePage(page);
    }
    
});
    }

    function changePage(page) {
        currentPage = page;
        displayPlayLists(currentPage);
        setupPagination();
    }
    
    


});

