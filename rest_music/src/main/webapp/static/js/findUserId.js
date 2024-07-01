document.addEventListener('DOMContentLoaded', () => {
    const inputEmail = document.querySelector('input#email');
    inputEmail.addEventListener('change', checkEmail);


    function checkEmail(event) {
        const email_pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;

        if (event.target.value === '') {
            emailChecked = false;
        }

        const email = inputEmail.value;

        // 이메일 형식 체크
        if(!email.match(email_pattern)) {
            checkEmailResult.innerHTML = '이메일 형식이 올바르지 않습니다.';
            checkEmailResult.classList.add('text-danger');
            checkEmailResult.classList.remove('text-success');
            return;
        } else {
            checkEmailResult.innerHTML = '';
            checkEmailResult.classList.remove('text-danger');
        }
    }

});
