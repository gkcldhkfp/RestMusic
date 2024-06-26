/**
 * /album/list.jsp에 포함.
 */

document.addEventListener('DOMContentLoaded', () => {  // 모든 js로 들어감.
   



    // 버튼 btnLikes 요소를 찾음
    const btnLikes = document.querySelector('button#btnLikes');
    
    btnLikes.addEventListener('click', () => {
        console.log(btnLikes);
    }); // TODO 이제 좋아요 기능 넣기해야댐.

    
    
    // 버튼 btnListenAlbum 요소를 찾음
    const btnListenAlbum = document.querySelector('button#btnListenAlbum');
    
    btnListenAlbum.addEventListener('click', () => {
       console.log(btnListenAlbum); 
    }); // TODO 앨범 듣기 기능 넣기
    
    /*--------------------------------------------------------------------------------------------*/
    
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