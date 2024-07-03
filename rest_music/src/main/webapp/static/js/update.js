/**
 * /user/update.jsp 에 포함
 */

document.addEventListener('DOMContentLoaded', () => {
    // 프로필 변경 모달 객체 생성
    const changeProfileModal = new bootstrap.Modal(document.getElementById('changeProfileModal'));

    // '변경' 버튼 클릭 시 프로필 이미지 업데이트 요청
    document.getElementById('btnChangeProfile').addEventListener('click', () => {
        const profileImageInput = document.getElementById('profileImageInput');
        const hiddenUserId = document.getElementById('hiddenUserId');
        const profileImagePreview = document.getElementById('profileImagePreview'); // 이미지 미리보기 요소

        console.log(profileImageInput);
        console.log(hiddenUserId);

        if (profileImageInput && hiddenUserId) {
            const file = profileImageInput.files[0];  // 선택된 파일을 가져옵니다.
            const userId = hiddenUserId.value;  // userId 값을 가져옵니다.

            if (file) {
                const formData = new FormData();
                formData.append('userId', userId);
                formData.append('profileImage', file);

                // updateProfileImage(userId, file);  // 서버로 프로필 이미지 전송
                axios.post('../user/updateProfileImage', formData, {
                    headers: {
                        'Content-Type': 'multipart/form-data'
                    }
                })
                    .then(response => {
                        if (response.data.success) {
                            alert('프로필 이미지가 성공적으로 변경되었습니다!');
                            // 모달 창 닫기
                            changeProfileModal.hide();

                            const imageUrl = response.data.imageUrl;
                            profileImagePreview.src = imageUrl; // 변경된 이미지 URL로 업데이트
                        } else {
                            alert('프로필 이미지 변경에 실패했습니다.');
                        }
                    })
                    .catch(error => {
                        console.error('프로필 이미지 변경 중 오류 발생:', error);
                        alert('이미지 업로드 중 오류가 발생했습니다.');
                    });
            } else {
                alert('이미지를 선택해 주세요.');
            }
        } else {
            console.error('Required elements are missing in the HTML.');
        }
    });

    // '변경 사항 저장' 버튼 클릭 시 사용자 정보 업데이트 요청
    document.getElementById('updateUserForm').addEventListener('submit', (event) => {
        event.preventDefault();  // 기본 폼 제출 동작을 방지합니다.

        const formData = new FormData(event.target);
        const profileImageInput = document.getElementById('profileImageInput');
        const file = profileImageInput.files[0];  // 선택된 파일을 가져옵니다.

        if (file) {
            formData.append('profileImage', file);  // 폼 데이터에 프로필 이미지 추가
        }

        axios.post(event.target.action, formData, {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
        })
            .then(response => {
                if (response.status === 200) {
                    alert('변경 사항이 성공적으로 저장되었습니다!');
                    location.href = "../user/mypage?userId=" + formData.get('userId');
                }
            })
            .catch(error => {
                console.error('변경 사항 저장 중 오류 발생:', error);
                alert('변경 사항 저장 중 오류가 발생했습니다.');
            });
    });


});

