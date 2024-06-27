/**
 * /playlists/playlist.jsp 포함
 */
document.addEventListener('DOMContentLoaded', () => {
    var songsTableBody = document.getElementById('songsTableBody');
    var totalSongs = songsTableBody.getElementsByTagName('tr').length;

    // DOM 요소에 곡 수를 출력합니다.
    var songCount = document.querySelector('p#songCount');
    if (songCount) {
        songCount.textContent = '총 ' + totalSongs + '곡';
    }
    
    // 추가된 곡이 없으면 해당 텍스트, defaultImage 출력.
    var playLists = document.querySelector('div#playLists');
    const defaultImage = '../images/defaultList.png';
    if (totalSongs == 0) {
        let htmlStr = '';
        htmlStr += `
        <div class='container' style="text-align: center;">
            <img src="${defaultImage}" width="80px" height="80px">
            <h5 id="defaultList" class="mt-4" style="text-align: center; color:gray;">
                추가된 곡이 없습니다..!
            </h5>
        </div>
        `
        playLists.innerHTML = htmlStr;
    }
});