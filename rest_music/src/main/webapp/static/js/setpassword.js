document.addEventListener('DOMContentLoaded', () => {
    let passwordChecked = false;
    let confirmPasswordChecked = false;

    const inputPassword = document.querySelector('input#password');
    const inputConfirmPassword = document.querySelector('input#confirmPassword');
    const checkPasswordResult = document.querySelector('div#checkPasswordResult');
    const btnSave = document.querySelector('input#btnSave');

    inputPassword.addEventListener('input', checkPassword);
    inputConfirmPassword.addEventListener('change', checkConfirmPassword);

    // 비밀번호 입력 필드의 change 이벤트 리스너
    function checkPassword(event) {
        const password = event.target.value;
        const checkPasswordResult = document.querySelector('div#checkPasswordResult');
        const passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,30}$/;

        if (!passwordPattern.test(password)) {
            passwordChecked = false;
            checkPasswordResult.innerHTML = '비밀번호는 8자~30자의 영문 대/소문자와 숫자를 포함해야 합니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
        } else {
            passwordChecked = true;
            checkPasswordResult.innerHTML = '';
            checkPasswordResult.classList.remove('text-danger');
        }
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    // 비밀번호 확인 입력 필드의 change 이벤트 리스너
    function checkConfirmPassword(event) {
        const password = document.querySelector('input#password').value;
        const confirmPassword = event.target.value;
        const checkPasswordResult = document.querySelector('div#checkPasswordResult');
    	const passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,30}$/;
        
        // 비밀번호 확인 입력 필드의 텍스트가 변경될 때마다 오류 메시지를 지웁니다.
        // 수정된 부분: 입력 필드의 값이 변경되면 오류 메시지를 지우고 상태를 확인합니다.
        event.target.addEventListener('input', () => {
            checkPasswordResult.innerHTML = ''; // 오류 메시지를 지웁니다.
        });

        // 비밀번호 패턴이 유효하지 않은 경우
        if (!passwordPattern.test(password)) {
            passwordChecked = false;
            checkPasswordResult.innerHTML = '비밀번호는 8자~30자의 영문 대/소문자와 숫자를 포함해야 합니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
            return;
        } else if (password !== confirmPassword) {
            // 비밀번호와 비밀번호 확인이 일치하지 않는 경우
            confirmPasswordChecked = false;
            checkPasswordResult.innerHTML = '비밀번호가 일치하지 않습니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
            return;
        } else {
            // 비밀번호 패턴이 유효하고 비밀번호와 비밀번호 확인이 일치하는 경우
            passwordChecked = true;
            confirmPasswordChecked = true;
            checkPasswordResult.innerHTML = '비밀번호가 일치합니다.';
            checkPasswordResult.classList.add('text-success');
            checkPasswordResult.classList.remove('text-danger');
        }
        
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    function changeButtonState() {
        if (passwordChecked && confirmPasswordChecked) {
            btnSave.classList.remove('disabled');
            btnSave.disabled = false;
        } else {
            btnSave.classList.add('disabled');
            btnSave.disabled = true;
        }
    }
    
});
