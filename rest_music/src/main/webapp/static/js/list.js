/**
 * /album/list.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    // 버튼 요소들을 찾음
    const btnLikes = document.querySelectorAll('button#btnLikes');
    const btnListenAlbum = document.querySelectorAll('button#btnListenAlbum');
    const btnAdd = document.querySelectorAll('button#btnAdd');
    const btnAddPl = document.querySelectorAll('button#btnAddPl');
    const btnNewest = document.querySelector('button#btnNewest');
    const btnPopular = document.querySelector('button#btnPopular');


    btnPopular.addEventListener('click', () => {
        console.log(btnPopular);
        document.location.href = './list/popular'
    });


    btnNewest.addEventListener('click', () => {
        console.log(btnNewest);
        document.location.href = './list/newest';
    })
    
    for (let b of btnLikes) {
        b.addEventListener('click', () => {
            console.log(b);
            addLikes();
            
        });
    }

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
    
    
    function addLikes() {
        
    }
 
    
    




});
