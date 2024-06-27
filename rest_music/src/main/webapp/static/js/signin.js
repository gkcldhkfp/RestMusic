document.addEventListener('DOMContentLoaded', () => {
    const saveIdYn = document.getElementById('saveIdYn');
    saveIdYn.addEventListener('change', saveId);

    const inputUserid = document.querySelector('input#userId');

    getCookieId();
    /* -------------------- 함수 선언 -------------------- */

    // 아이디저장(쿠키설정)
    function saveId(event) {
        const is_checked = saveIdYn.checked;
        const userId = inputUserid.value;

        if (is_checked) {
            document.cookie =`userId=${userId}; path=/; max-age=3600`;
        } else {
            document.cookie = `userId=${userId}; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;`;
        }

    }

    // 쿠키아이디 조회
    function getCookieId() {
        const cookieName = "userId=";
        let cookieData = document.cookie;

        let cookieValue = "";
        let start = cookieData.indexOf(cookieName);

        if (start !== -1) {
            start += cookieName.length;
            let end = cookieData.indexOf(";", start);
            if (end === -1) end = cookieData.length;
            cookieValue = cookieData.substring(start, end);

            inputUserid.value = cookieValue;
            saveIdYn.checked = true;
        }
    }
});