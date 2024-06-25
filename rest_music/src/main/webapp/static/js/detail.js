/**
 *  detail.jsp 포함
 */
document.addEventListener('DOMContentLoaded', ()=>{
    
    
    
    const btnAddPlayList = document.querySelector('button#btnAddPlayList');
    
    const btnLike = document.querySelector('button#btnLike');
   
    const playListModal = new bootstrap.Modal('div#selectPlayList', {backdrop: true});
    btnAddPlayList.addEventListener('click', getPlayLists);
    
    const data = {songId,id};
    
    axios
        .post('./like', data)
        .then((response) => {
                console.log(response.data); 
                if(response.data){
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
    
        console.log(id);
        console.log(songId);
        
        
        
        console.log(data);
        
        axios
        .put('./like', data)
        .then((response) => {
                console.log(response.data); 
                if(response.data){
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
   
   function getPlayLists () {
    const uri = `../getPlayList/${id}`;
    axios
        .get(uri)
        .then((response) => {
               console.log(response.data);
               makePlayListElements(response.data);
               
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
    
    function addSongPlayList (event) {
        
        const plistId = event.currentTarget.getAttribute('data-id');
        console.log('userid = ' + id);
        console.log('plistId = ' + plistId);
        
        const data = {plistId, songId};
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
   
    
   
    
});
 
 