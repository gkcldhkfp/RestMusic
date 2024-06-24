/**
 *  detail.jsp 포함
 */
document.addEventListener('DOMContentLoaded', ()=>{
    
   const btnAddPlayList = document.querySelector('button#btnAddPlayList');
    
   const btnLike = document.querySelector('button#btnLike');
   
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
   
    btnAddPlayList.addEventListener('click', () => {
        
        
        
        
    });
   
   
    
});
 
 