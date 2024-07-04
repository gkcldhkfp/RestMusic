document.addEventListener('DOMContentLoaded', () => {
    let useridChecked = false; // 사용자 아이디 중복 체크 결과. true: 사용할 수 있는 아이디.
    let userNameChecked = false; // 사용자 이름 작성 여부 체크.
    let passwordChecked = false; // 비밀번호 필드 작성 여부 체크.
    let confirmPasswordChecked = false; // 비밀번호 확인 필드 작성 여부 체크.
    let emailChecked = false; // 이메일 필드 작성 여부 체크.
    let nicknameChecked = false; // 닉네임 필드 작성 여부 체크.
    let hintQuestionChecked = false; // 힌트 질문 필드 작성 여부 체크.
    let hintAnswerChecked = false; // 힌트 답변 필드 작성 여부 체크.

    const inputUserid = document.querySelector('input#userid');
    inputUserid.addEventListener('change', checkUserid);

    const btnCheckId = document.querySelector('button#checkIdBtn');
    btnCheckId.addEventListener('click', checkUserid);

    const inputPassword = document.querySelector('input#password');
    inputPassword.addEventListener('change', checkPassword);
    inputPassword.addEventListener('input', checkPassword);

    const inputConfirmPassword = document.querySelector('input#confirmPassword');
    inputConfirmPassword.addEventListener('change', checkConfirmPassword);
    inputConfirmPassword.addEventListener('input', checkConfirmPassword);

    const inputEmail = document.querySelector('input#email');
    inputEmail.addEventListener('change', checkEmail);

    const inputUserName = document.querySelector('input#username');
    inputUserName.addEventListener('change', checkUserName);

    const inputNickname = document.querySelector('input#nickname');
    inputNickname.addEventListener('change', checkNickname);

    const inputHintQuestion = document.querySelector('select#hintQuestionSelect');
    inputHintQuestion.addEventListener('change', checkHintQuestion);

    const inputHintAnswer = document.querySelector('input#hintAnswer');
    inputHintAnswer.addEventListener('change', checkHintAnswer);

    // inputUserid 변경 감지
    // 변경상태에서는 무조건 false
    inputUserid.addEventListener('input', function(e) {
        useridChecked = false;
    });

    /* -------------------- 함수 선언 -------------------- */

    // 회원 가입 버튼 활성화/비활성화
    function changeButtonState() {
        const btnSignUp = document.querySelector('button#btnSignUp');

        if (useridChecked && passwordChecked && confirmPasswordChecked && emailChecked && nicknameChecked && hintQuestionChecked && hintAnswerChecked) {
            // 버튼의 class 속성 값들 중 'disabled'를 제거 -> 버튼 활성화.
            btnSignUp.classList.remove('disabled');
            btnSignUp.disabled = false;
        } else {
            // 버튼의 class 속성에 'disabled'를 추가 -> 버튼 비활성화.
            btnSignUp.classList.add('disabled');
            btnSignUp.disabled = true;
        }
    }

    // userid 입력 필드의 change 이벤트 리스너:
    // 중복 아이디 체크 Ajax 요청을 보내고, 응답을 받았을 때 처리.
    function checkUserid(event) {
        const userid = inputUserid.value; // inputUserid.value
        const checkUseridResult = document.querySelector('div#checkUseridResult');

        if (userid === '') {
            useridChecked = false;
            checkUseridResult.innerHTML = '아이디를 입력해주세요.';
            checkUseridResult.classList.add('text-danger');
            checkUseridResult.classList.remove('text-success');
            return;
        }

        if (!/^[a-z0-9]{5,20}$/.test(userid)) {
            useridChecked = false;
            checkUseridResult.innerHTML = '아이디는 5~20자의 영문 소문자와 숫자만 사용 가능합니다.';
            checkUseridResult.classList.add('text-danger');
            checkUseridResult.classList.remove('text-success');
            return;
        }

        const uri = `/Rest/user/checkid?userid=${userid}`; // 아이디 중복 체크 REST API URI
        axios
            .get(uri)
            .then((response) => {
                if (response.data === 'Y') {
                    useridChecked = true;
                    checkUseridResult.innerHTML = '사용 가능한 아이디입니다.';
                    checkUseridResult.classList.add('text-success');
                    checkUseridResult.classList.remove('text-danger');
                } else {
                    useridChecked = false;
                    checkUseridResult.innerHTML = '사용할 수 없는 아이디입니다.';
                    checkUseridResult.classList.add('text-danger');
                    checkUseridResult.classList.remove('text-success');
                }
                changeButtonState(); // 버튼 활성화 여부를 변경
            })
            .catch((error) => console.log(error));
    }

    // 비밀번호 입력 필드의 change 이벤트 리스너
    function checkPassword(event) {
        const password = event.target.value;
        const checkPasswordResult = document.querySelector('div#checkPasswordResult');
        const passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;

        if (!passwordPattern.test(password)) {
            passwordChecked = false;
            checkPasswordResult.innerHTML = '8자 이상의 영문 대/소문자와 숫자만 사용 가능합니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
        } else {
            passwordChecked = true;
            checkPasswordResult.innerHTML = '';
            checkPasswordResult.classList.remove('text-danger');
        }
        checkConfirmPassword();
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    // 비밀번호 확인 입력 필드의 change 이벤트 리스너
    function checkConfirmPassword(event) {
        const password = document.querySelector('input#password').value;
        const confirmPassword = event.target.value;
        const checkPasswordResult = document.querySelector('div#checkPasswordResult');
        const passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;

        if (!passwordPattern.test(password)) {
            confirmPasswordChecked = false;
            checkPasswordResult.innerHTML = '8자 이상의 영문 대/소문자와 숫자만 사용 가능합니다.';
            checkPasswordResult.classList.add('text-danger');
            checkPasswordResult.classList.remove('text-success');
        } else if (password !== confirmPassword) {
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
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    // 이메일 입력 필드의 change 이벤트 리스너
    function checkEmail(event) {
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
        const email = event.target.value;
        const checkEmailResult = document.querySelector('div#checkEmailResult');

        if (email === '') {
            emailChecked = false;
            checkEmailResult.innerHTML = '이메일을 입력해주세요.';
            checkEmailResult.classList.add('text-danger');
            checkEmailResult.classList.remove('text-success');
            return;
        }

        if (!emailPattern.test(email)) {
            emailChecked = false;
            checkEmailResult.innerHTML = '이메일 형식이 올바르지 않습니다.';
            checkEmailResult.classList.add('text-danger');
            checkEmailResult.classList.remove('text-success');
            return;
        }

        const uri = `/Rest/user/checkemail?email=${email}`;
        axios
            .get(uri)
            .then((response) => {
                if (response.data === 'Y') {
                    emailChecked = true;
                    checkEmailResult.innerHTML = '사용 가능한 이메일입니다.';
                    checkEmailResult.classList.add('text-success');
                    checkEmailResult.classList.remove('text-danger');
                } else {
                    emailChecked = false;
                    checkEmailResult.innerHTML = '사용할 수 없는 이메일입니다.';
                    checkEmailResult.classList.add('text-danger');
                    checkEmailResult.classList.remove('text-success');
                }
                changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
            })
            .catch((error) => console.log(error));
    }

    function checkUserName(event) {
        if (event.target.value === '') {
            userNameChecked = false;
        } else {
            userNameChecked = true;
        }
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    // 닉네임 입력 필드의 change 이벤트 리스너
    function checkNickname(event) {
        if (event.target.value === '') {
            nicknameChecked = false;
        } else {
            nicknameChecked = true;
        }
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    // 힌트 질문 입력 필드의 change 이벤트 리스너
    // input#hintQuestion 비어 있는 지를 체크
    function checkHintQuestion(event) {
        if (event.target.value === '') {
            hintQuestionChecked = false;
        } else {
            const selectedText = document.querySelector('select[name="hintQuestionSelect"] > option:checked').innerText;
            document.getElementById("hintQuestion").value = selectedText;
            hintQuestionChecked = true;
        }
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    // 힌트 답변 입력 필드의 change 이벤트 리스너
    // input#hintAnswer 비어 있는 지를 체크
    function checkHintAnswer(event) {
        if (event.target.value === '') {
            hintAnswerChecked = false;
        } else {
            hintAnswerChecked = true;
        }
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }

    const btnSignUp = document.querySelector('#btnSignUp');
    const signupform = document.querySelector('#signupForm');
    const loginBtn = document.querySelector('#loginBtn');
    btnSignUp.addEventListener('click', () => {
        console.log("해치웠나");
        const result = confirm('이 정보로 회원가입을 하시겠습니까?');
        if (result) {
            signupform.action = 'signup';
            signupform.method = 'POST';
            signupform.submit();
            alert("회원 가입이 완료되었습니다.");
        }
    });
    loginBtn.addEventListener('click', () => {
        location.href='signin';
    });
});