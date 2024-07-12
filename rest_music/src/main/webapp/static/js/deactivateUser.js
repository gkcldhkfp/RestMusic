/**
 * /user/deactivateUser.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    // 회원 탈퇴 버튼 클릭 이벤트
    document.getElementById('deactivateButton').addEventListener('click', function() {
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const id = document.getElementById('id').value; // hidden 필드에서 사용자 ID 가져오기

        if (password !== confirmPassword) {
            alert('비밀번호가 일치하지 않습니다.');
            return;
        }

        if (!password) {
            alert('비밀번호를 입력해주세요.');
            return;
        }

        // axios를 사용하여 서버에 요청
        axios.post('../user/deactivateUser', {
            id: id,
            password: password
        })
        .then(function(response) {
            alert(response.data);
            location.href = '../'; // 메인 페이지로 리다이렉트
        })
        .catch(function(error) {
            alert(error.response.data);
        });
    });
});
