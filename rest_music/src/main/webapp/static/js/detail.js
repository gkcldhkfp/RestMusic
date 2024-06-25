/**
 *  detail.jsp 포함
 */
document.addEventListener('DOMContentLoaded', ()=>{
    
    const btnAddPlayList = document.querySelector('button#btnAddPlayList');
    
    const btnLike = document.querySelector('button#btnLike');
   
    const playListModal = new bootstrap.Modal('div#selectPlayList', {backdrop: true});
    btnAddPlayList.addEventListener('click', getPlayLists);
    
   btnLike.addEventListener('click', () => {
    
        console.log(id);
        console.log(songId);
        
        const data = {songId,id};
        
        console.log(data);
        
         // POST 방식의 Ajax 요청을 보냄. 응답 성공/실패 콜백을 등록.
        axios
        .post('./like', data)
        .then((response) => {
                console.log(response.data); // RestController에서 보낸 응답 데이터
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
        const divComments = document.querySelector('div#playLists');
        
        // 플리 목록 HTML 코드
        let htmlStr = '';
        for (let playlist of data) {
            console.log(playlist);
            htmlStr += `
            <button class="playList btn btn-outline-success form-control" data-id="${playlist.plistId}">${playlist.plistName}</button>
           `;
        }
        
        // 작성된 HTML 코드를 div 영역에 삽입.
        divComments.innerHTML = htmlStr;
        
        const btnPlayLists = document.querySelectorAll('button.playList');
        for (let btn of btnPlayLists) {
            btn.addEventListener('click', addSongPlayList);
        }
        
        
    }
    
    function addSongPlayList (event) {
        
        const plistId = event.target.getAttribute('data-id');
        console.log(id);
        
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
 
 