document.addEventListener('DOMContentLoaded', () => {
    let useridChecked = false; // 사용자 아이디 중복 체크 결과. true: 사용할 수 있는 아이디.
    let passwordChecked = false; // 비밀번호 필드 작성 여부 체크.
    let confirmPasswordChecked = false; // 비밀번호 확인 필드 작성 여부 체크.
    let emailChecked = false; // 이메일 필드 작성 여부 체크.
    let nicknameChecked = false; // 닉네임 필드 작성 여부 체크.
    let hintQuestionChecked = false; // 힌트 질문 필드 작성 여부 체크.
    let hintAnswerChecked = false; // 힌트 답변 필드 작성 여부 체크.
    
    const inputUserid = document.querySelector('input#userid');
    const btnCheckId = document.querySelector('button#checkIdBtn');
    btnCheckId.addEventListener('click', checkUserid);
    
    const inputPassword = document.querySelector('input#password');
    inputPassword.addEventListener('change', checkPassword);
    
    const inputConfirmPassword = document.querySelector('input#confirmPassword');
    inputConfirmPassword.addEventListener('change', checkConfirmPassword);
    
    const inputEmail = document.querySelector('input#email');
    inputEmail.addEventListener('change', checkEmail);
    
    const inputNickname = document.querySelector('input#nickname');
    inputNickname.addEventListener('change', checkNickname);

    const inputHintQuestion = document.querySelector('input#hintQuestion');
    inputHintQuestion.addEventListener('change', checkHintQuestion);

    const inputHintAnswer = document.querySelector('input#hintAnswer');
    inputHintAnswer.addEventListener('change', checkHintAnswer);
    
    /* -------------------- 함수 선언 -------------------- */
    
    // 회원 가입 버튼 활성화/비활성화
    function changeButtonState() {
        const btnSignUp = document.querySelector('button#btnSignUp');
    
        if (useridChecked && passwordChecked && confirmPasswordChecked && emailChecked && nicknameChecked && hintQuestionChecked && hintAnswerChecked) {
            // 버튼의 class 속성 값들 중 'disabled'를 제거 -> 버튼 활성화.
            btnSignUp.classList.remove('disabled');
        } else {
            // 버튼의 class 속성에 'disabled'를 추가 -> 버튼 비활성화.
            btnSignUp.classList.add('disabled');
        }
    }
    
    // userid 입력 필드의 change 이벤트 리스너:
    // 중복 아이디 체크 Ajax 요청을 보내고, 응답을 받았을 때 처리.
    function checkUserid(event) {
        const userid = inputUserid.value; // inputUserid.value
        
        const uri = `${pageContext.request.contextPath}/user/checkid?userid=${userid}`; // 아이디 중복 체크 REST API URI
        axios
        .get(uri)
        .then((response) => {
            const checkUseridResult = document.querySelector('div#checkUseridResult');
            
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
    // input#password 비어 있는 지를 체크
    function checkPassword(event) {
        if (event.target.value === '') { // inputPassword.value
            passwordChecked = false;
        } else {
            passwordChecked = true;
        }
        checkConfirmPassword();
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }
    
    // 비밀번호 확인 입력 필드의 change 이벤트 리스너
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
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }
    
    // 이메일 입력 필드의 change 이벤트 리스너
    // input#email 비어 있는 지를 체크
    function checkEmail(event) {
        if (event.target.value === '') {
            emailChecked = false;
        } else {
            emailChecked = true;
        }
        changeButtonState(); // 버튼의 활성화/비활성화 상태를 변경
    }
    
    // 닉네임 입력 필드의 change 이벤트 리스너
    // input#nickname 비어 있는 지를 체크
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
});