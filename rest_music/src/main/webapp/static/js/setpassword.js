document.addEventListener('DOMContentLoaded', () => {
    let passwordChecked = false; // 비밀번호 필드 작성 여부 체크.
    let confirmPasswordChecked = false; // 비밀번호 확인 필드 작성 여부 체크.

    const inputPassword = document.querySelector('input#password');
    inputPassword.addEventListener('change', checkPassword);

    const inputConfirmPassword = document.querySelector('input#confirmPassword');
    inputConfirmPassword.addEventListener('change', checkConfirmPassword);

    function checkPassword(event) {
        if (event.target.value === '') { // inputPassword.value
            passwordChecked = false;
        } else {
            passwordChecked = true;
        }
        checkConfirmPassword();
    }


    function checkConfirmPassword(event) {
        const password = document.querySelector('input#password').value;
        const confirmPassword = document.querySelector('input#confirmPassword').value;
        const checkPasswordResult = document.querySelector('div#checkPasswordResult');

        if (password !== confirmPassword) {
            confirmPasswordChecked = false;
            checkPasswordResult.innerHTML = '비밀번호가 일치하지 않습니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
        } else {
            confirmPasswordChecked = true;
            checkPasswordResult.innerHTML = '비밀번호가 일치합니다.';
            checkPasswordResult.classList.add('text-success');
            checkPasswordResult.classList.remove('text-danger');
        }
        changeButtonState();
    }

    function changeButtonState() {
        const btnSave = document.querySelector('input#btnSave');

        if (passwordChecked && confirmPasswordChecked) {
            // 버튼의 class 속성 값들 중 'disabled'를 제거 -> 버튼 활성화.
            btnSave.classList.remove('disabled');
        } else {
            // 버튼의 class 속성에 'disabled'를 추가 -> 버튼 비활성화.
            btnSave.classList.add('disabled');
        }

    }
});
