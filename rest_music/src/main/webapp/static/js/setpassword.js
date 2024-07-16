/**
 * setpassword.jsp에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    // 초기 상태 변수: 비밀번호와 비밀번호 확인의 유효성을 추적
    let passwordChecked = false;
    let confirmPasswordChecked = false;

    // DOM 요소 선택
    const inputPassword = document.querySelector('input#password');
    const inputConfirmPassword = document.querySelector('input#confirmPassword');
    const checkPasswordResult = document.querySelector('div#checkPasswordResult');
    const btnSave = document.querySelector('input#btnSave');

    // 비밀번호 입력 필드의 input 이벤트 리스너 추가
    inputPassword.addEventListener('input', checkPassword);
    // 비밀번호 확인 입력 필드의 input 이벤트 리스너 추가
    inputConfirmPassword.addEventListener('input', checkConfirmPassword);

    // 비밀번호 입력 필드의 유효성을 검사하는 함수
    function checkPassword(event) {
        const password = event.target.value;
        // 비밀번호 패턴: 영문 대/소문자와 숫자를 포함한 8자~30자
        const passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,30}$/;

        // 비밀번호가 패턴에 맞지 않는 경우
        if (!passwordPattern.test(password)) {
            passwordChecked = false;
            checkPasswordResult.innerHTML = '비밀번호는 8자~30자의 영문 대/소문자와 숫자를 포함해야 합니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
        } else {
            // 비밀번호가 패턴에 맞는 경우
            passwordChecked = true;
            checkPasswordResult.innerHTML = '';
            checkPasswordResult.classList.remove('text-danger');
        }

        // 비밀번호가 변경되면 비밀번호 확인도 다시 체크
        checkConfirmPassword(); // 인자 없이 호출하여 confirmPassword 필드의 현재 값을 다시 검사

        // 버튼의 활성화/비활성화 상태를 변경
        changeButtonState();
    }

    // 비밀번호 확인 입력 필드의 유효성을 검사하는 함수
    function checkConfirmPassword() {
        const password = inputPassword.value;
        const confirmPassword = inputConfirmPassword.value;
        // 비밀번호 패턴: 영문 대/소문자와 숫자를 포함한 8자~30자
        const passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,30}$/;

        // 비밀번호 패턴이 유효하지 않은 경우
        if (!passwordPattern.test(password)) {
            passwordChecked = false;
            confirmPasswordChecked = false;
            checkPasswordResult.innerHTML = '비밀번호는 8자~30자의 영문 대/소문자와 숫자를 포함해야 합니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
        } else if (password !== confirmPassword) {
            // 비밀번호와 비밀번호 확인이 일치하지 않는 경우
            confirmPasswordChecked = false;
            checkPasswordResult.innerHTML = '비밀번호가 일치하지 않습니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
        } else {
            // 비밀번호 패턴이 유효하고 비밀번호와 비밀번호 확인이 일치하는 경우
            passwordChecked = true;
            confirmPasswordChecked = true;
            checkPasswordResult.innerHTML = '비밀번호가 일치합니다.';
            checkPasswordResult.classList.add('text-success');
            checkPasswordResult.classList.remove('text-danger');
        }

        // 버튼의 활성화/비활성화 상태를 변경
        changeButtonState();
    }

    // 버튼의 활성화/비활성화 상태를 변경하는 함수
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

