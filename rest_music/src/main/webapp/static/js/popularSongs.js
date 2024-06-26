/**
 * top 30페이지
 */

document.addEventListener("DOMContentLoaded", function() {
    const heartIcons = document.querySelectorAll('.fa-heart');

    heartIcons.forEach(icon => {
        let initialLikes = parseInt(icon.nextElementSibling.textContent); // 초기 좋아요 개수

        // 초기 하트 색깔 설정
        if (icon.classList.contains('liked')) {
            icon.style.color = 'red';
        } else {
            icon.style.color = 'black';
        }

        icon.addEventListener('click', function() {
            const songId = icon.dataset.songId;
            // const id = icon.dataset.id;
            const id = 1; // 실제 사용자 ID로 대체
            const likesCountElement = icon.nextElementSibling;
            let likesCount = parseInt(likesCountElement.textContent);

            if (icon.classList.contains('liked')) {
                axios.delete(`../api/cancelLike/${songId}`, { params: { id: id } })
                    .then(response => {
                        if (response.status === 200) {
                            icon.classList.remove('liked');
                            icon.style.color = 'black';
                            likesCount -= 1;
                            likesCountElement.textContent = response.data; // 최신 좋아요 개수로 업데이트
                        }
                    })
                    .catch(error => {
                        console.error('Error removing like:', error);
                    });
            } else {
                axios.post('../api/addLike', { songId: songId, id: id })
                    .then(response => {
                        if (response.status === 200) {
                            icon.classList.add('liked');
                            icon.style.color = 'red';
                            likesCount += 1;
                            likesCountElement.textContent = response.data; // 최신 좋아요 개수로 업데이트
                        }
                    })
                    .catch(error => {
                        console.error('Error adding like:', error);
                    });
            }
        });

    });

    const selectAllCheckbox = document.getElementById('selectAllCheckbox');
    const songCheckboxes = document.querySelectorAll('.songCheckbox');

    selectAllCheckbox.addEventListener('change', function() {
        const isChecked = selectAllCheckbox.checked;
        songCheckboxes.forEach(checkbox => {
            checkbox.checked = isChecked;
        });
    });

    songCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
            if (!this.checked) {
                selectAllCheckbox.checked = false;
            }
        });
    });

    const playButtons = document.querySelectorAll('.play-btn');
    const audioPlayer = document.getElementById('audioPlayer');
    const audioSource = document.getElementById('audioSource');

    playButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            e.preventDefault();
            const songPath = button.dataset.songPath;
            audioSource.src = songPath;
            audioPlayer.load();
            audioPlayer.play();
        });
    });


});


