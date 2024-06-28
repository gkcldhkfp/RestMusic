/**
 * /album/list.jsp에 포함.
 */

document.addEventListener('DOMContentLoaded', () => {  // 모든 js로 들어감.

    
    
    


    // 버튼 btnLikes 요소를 찾음.
    const btnLikes = document.querySelectorAll('button#btnLikes');
    for (let b of btnLikes) {
        b.addEventListener('click', () => {
            console.log(b);
            updateLikes();
        });
    }


    // 버튼 btnListenAlbum 요소를 찾음
    const btnListenAlbum = document.querySelectorAll('button#btnListenAlbum');
    for (let b of btnListenAlbum) {
        b.addEventListener('click', () => {
            console.log(b);
        });
    }



    // 버튼 btnAdd 요소를 찾음
    const btnAdd = document.querySelectorAll('button#btnAdd');
    for (let b of btnAdd) {
        b.addEventListener('click', () => {
            console.log(b);
        });
    }


    // 버튼 btnAddPl 요소를 찾음
    const btnAddPl = document.querySelectorAll('button#btnAddPl');
    for (let b of btnAddPl) {
        b.addEventListener('click', () => {
            console.log(b);
        });
    }
    
    
    
    
    
    
    
    
    // 그냥 jsp에서 a태그로 감쌀지 여기서 정렬해서 보여주는 메서드를 추가할지는 모르겟음
    
    // 버튼 btnBrandnew 요소를 찾음. 최신앨범 버튼.
    const btnBrandnew = document.querySelectorAll('button#btnBrandnew');
    for (let b of btnBrandnew) {
        b.addEventListener('click', () => {
            console.log(b);
            showNewest();
        });
    }
    
    
    
    // 버튼 btnPopular 요소를 찾음. 인기앨범 버튼.
    const btnPopular = document.querySelector('button#btnPopular');
    btnPopular.addEventListener('click', showPopular);
    

    /*--------------------------------------------------------------------------------------------*/
    
    function updateLikes() {
        
    }
    
    
    
    function showNewest() {
        
    }
    
    
    function showPopular() {
        
    }
    
    
    
    
    
    function showLoginModal(event) {

        const id = event.target.getAttribute('data-id');

        const uri = `../api/comment/${id}`;
        axios
            .get(uri)
            .then((response) => {
                console.log(response.data);

                loginModal.show();
            })
            .catch((error) => console.log(error));

    }

    function likeAlbum(albumId) {
        // AJAX 호출을 통해 좋아요 버튼 클릭 처리
        $.ajax({
            url: '/album/like',
            method: 'POST',
            data: { albumId: albumId },
            success: function(response) {
                if (response === 'success') {
                    alert('좋아요가 증가되었습니다.');
                    // 페이지 새로고침 또는 좋아요 수 업데이트 로직
                    location.reload();
                } else {
                    alert('좋아요 처리에 실패했습니다.');
                }
            },
            error: function() {
                alert('서버 요청에 실패했습니다.');
            }
        });
    }
    // 좋아요 버튼 관련 펑션인데 수정 ㄱ




    function listenAlbum(albumId) {
        alert('앨범 ' + albumId + '을(를) 듣기 시작합니다.');
    }














});