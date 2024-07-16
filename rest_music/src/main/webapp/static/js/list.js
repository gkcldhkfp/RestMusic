/**
 * /album/list.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    
    // 요소들을 찾음
    const btnListenAlbum = document.querySelectorAll('button#btnListenAlbum'); // 듣기 버튼
    const btnAdd = document.querySelectorAll('button#btnAdd'); // 담기 버튼
    const btnAddPl = document.querySelectorAll('button#btnAddPl'); // 플리담기 버튼
    
    
    
    
    const btnNewest = document.querySelector('button#btnNewest'); // 최신앨범 버튼
    btnNewest.addEventListener('click', () => {
        console.log(btnNewest);
        document.location.href = './list/newest';
    })
    
    const btnPopular = document.querySelector('button#btnPopular'); // 인기앨범 버튼
    btnPopular.addEventListener('click', () => {
        console.log(btnPopular);
        document.location.href = './list/popular'
    });
    
    
    
    const rDate = document.querySelectorAll('#rDate'); // 날짜표기방법 변경을 위한 요소
    for(let r of rDate) {
        console.log(r.innerHTML);
        let newRDate = r.innerHTML.slice(2,10).replaceAll('-','.');
        console.log(newRDate);
        r.innerHTML = newRDate;
    }
    
    
    
    
    /*
    const btnLikes = document.querySelectorAll('button#btnLikes'); // 모든 좋아요 버튼의 요소를 찾고 클릭 이벤트 리스너를 설정.
    for (let b of btnLikes) {
        b.addEventListener('click', showLikesModal);
    }

    const likesModal = new bootstrap.Modal(document.querySelector('div#likesModal'), {
        backdrop: true
    });
    */


    for (let b of btnListenAlbum) {
        b.addEventListener('click', () => {
            console.log(b);
        });
    }

    for (let b of btnAdd) {
        b.addEventListener('click', () => {
            console.log(b);
        });
    }

    for (let b of btnAddPl) {
        b.addEventListener('click', () => {
            console.log(b);
        });
    }
    


   
    /*--------------------------------------------------------*/
    // 현재 페이지의 URL 가져오기
    const currentURL = window.location.pathname; // 예: "/Rest/album/list/newest"
    const segments = currentURL.split('/'); // URL을 '/' 기준으로 나눔
    const lastSegment = segments.pop(); // 배열에서 마지막 요소를 제거하고 반환
    console.log(lastSegment); // 출력: "newest"
    
    if (lastSegment === 'newest') {
        const btnNew = document.querySelector('#btnNewest');
        btnNew.classList.add('active');
    }
    if (lastSegment === 'popular') {
        const btnPopular = document.querySelector('#btnPopular');
        btnPopular.classList.add('active');
    }





});
