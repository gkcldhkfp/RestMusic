document.addEventListener('DOMContentLoaded', () => {
    let allComments = []; // 불러온 댓글들 담을 배열
    let currentPage = 1; // 페이징 기본 페이지
    const pageSize = 5; // 페이지당 댓글 갯수

    // btnToggleComment 버튼 요소를 찾음.
    const btnToggleComment = document.querySelector('button#btnToggleComment');

    // collapseComments div 요소를 부트스트랩의 Collapse 객체로 생성.
    const bsCollapse = new bootstrap.Collapse('div#collapseComments', { toggle: false });

    // 댓글 토글 버튼에 클릭 이벤트 리스너를 등록.
    btnToggleComment.addEventListener('click', () => {
        bsCollapse.toggle();

        if (btnToggleComment.innerHTML === '댓글 보기') {
            btnToggleComment.innerHTML = '댓글 감추기';
            // 포스트에 달려 있는 모든 댓글 목록 보여줌.
            getAllComments();
        } else {
            btnToggleComment.innerHTML = '댓글 보기';
        }
    });

    // 버튼 btnRegisterComment 요소를 찾음.
    const btnRegisterComment = document.querySelector('button#btnRegisterComment');

    // 버튼에 클릭 이벤트 리스너를 설정.
    btnRegisterComment.addEventListener('click', registerComment);

    // 부트스트랩 모달(다이얼로그) 객체 생성.
    const commentModal = new bootstrap.Modal('div#commentModal', { backdrop: true });

    // 모달의 저장 버튼을 찾고, 클릭 이벤트 리스너를 설정.
    const btnUpdateComment = document.querySelector('button#btnUpdateComment');
    btnUpdateComment.addEventListener('click', updateComment);

    // 페이징 엘리먼트를 한번만 설정하도록 수정
    const paginationElement = document.getElementById('pagination2');
    paginationElement.addEventListener('click', (event) => {
        if (event.target.tagName === 'A') {
            event.preventDefault(); // 기본 동작 방지
            const page = parseInt(event.target.textContent);
            gotoPage(page);
        }
    });

    /*-------------------------------------------------*/

    // 댓글 등록 이벤트 리스너 콜백(함수):
    function registerComment() {
        // 댓글 내용을 찾음.
        const ctext = document.querySelector('textarea#ctext').value;

        // 댓글 내용, 댓글 작성자가 비어 있는 지 체크
        if (ctext === '') {
            alert('댓글 내용을 입력하세요.');
            return; // 이벤트 리스너를 종료
        }

        const data = { songId, ctext, id };
        // console.log(data);

        axios
            .post('../api/comment', data)
            .then((response) => {
                // console.log(response);
                // console.log(response.data); // RestController에서 보낸 응답 데이터
                if (response.data === 1) {
                    alert('댓글 1개 등록 성공');
                    document.querySelector('textarea#ctext').value = '';
                    document.querySelector('input#username').value = '';
                    // 댓글 목록 갱신
                    getAllComments();
                }
            })
            .catch((error) => {
                console.log(error);
            });
    }

    // 포스트에 달려 있는 모든 댓글 목록 가져오기
    function getAllComments() {
        // 댓글 목록을 요청하기 위한 REST API URI
        const uri = `../api/comment/all/${songId}`;

        // Ajax 요청을 보냄.
        axios
            .get(uri)
            .then((response) => {
                // console.log(response.data);
                allComments = response.data;
                initPagination(); // 페이지 초기화 및 댓글 렌더링
            })
            .catch((error) => {
                console.log(error);
            });
    }

    // 댓글 목록(댓글 객체들의 배열)을 아규먼트로 전달받아서 HTML을 작성.
    function makeCommentElements(data) {
        // 댓글 목록 HTML이 삽입될 div
        const divComments = document.querySelector('div#comments');

        // 댓글 목록 HTML 코드
        let htmlStr = '';
        for (let comment of data) {
            // 댓글 최종 수정 시간
            const modifiedTime = new Date(comment.modifiedTime).toLocaleString();

            htmlStr += `
            <div class="card card-body my-1">
                <div style="font-size: 0.825rem;">
                    <span>${comment.cid}</span>
                    <span class="fw-bold">${comment.nickname}</span>
                    <span class="text-secondary">${modifiedTime}</span>
                </div>
                <div>${comment.ctext}</div>`;
         if (comment.userId === id) {    
            htmlStr += `
                <div>
                    <button class="btnDeleteComment btn btn-outline-danger btn-sm"
                        data-id="${comment.cid}">삭제</button>
                    <button class="btnModifyComment btn btn-outline-primary btn-sm"
                        data-id="${comment.cid}">수정</button>
                </div>`;
        }
            htmlStr += '</div>'; // <div class="card card-body my-1">의 종료 태그!!
        }

        // 작성된 HTML 코드를 div 영역에 삽입.
        divComments.innerHTML = htmlStr;

        // 모든 삭제 버튼들을 찾아서 클릭 이벤트 리스너를 설정.
        const btnDeletes = document.querySelectorAll('button.btnDeleteComment');
        for (let btn of btnDeletes) {
            btn.addEventListener('click', deleteComment);
        }

        // 모든 수정 버튼들을 찾아서 클릭 이벤트 리스너를 설정.
        const btnModifies = document.querySelectorAll('button.btnModifyComment');
        for (let btn of btnModifies) {
            btn.addEventListener('click', showCommentModal);
        }
    }

    // 댓글 삭제 버튼의 클릭 이벤트 리스너
    function deleteComment(event) {
        // 이벤트 리스너 콜백의 아규먼트 event 객체는 target 속성을 가지고 있음.
        // console.log(event.target); // 이벤트가 발생한 요소(타겟)
        const id = event.target.getAttribute('data-id'); // HTML 요소의 속성 값 찾기

        // 삭제 여부 확인
        const result = confirm('댓글을 정말 삭제할까요?');
        if (!result) { // 사용자가 [취소]를 선택했을 때
            return; // 함수 종료
        }

        // Ajax로 삭제 요청을 보낼 REST API URI
        const uri = `../api/comment/${id}`;

        // Ajax 요청을 보냄.
        axios
            .delete(uri)
            .then((response) => {
                // console.log(response.data);
                if (response.data === 1) {
                    alert(`댓글(${id}) 삭제 성공`);
                    getAllComments(); // 댓글 목록 갱신
                }
            })
            .catch((error) => {
                console.log(error);
            });
    }

    // 댓글 수정 버튼의 클릭 이벤트 리스너
    function showCommentModal(event) {
        // 이벤트 타겟(수정 버튼)의 data-id 속성 값을 읽음.
        const cid = event.target.getAttribute('data-id');

        // Ajax 요청을 보내서 댓글 아이디로 검색.
        const uri = `../api/comment/${cid}`;
        axios
            .get(uri)
            .then((response) => {
                // console.log(response);
                // console.log(response.data);
                // console.log(response.data.id);

                // 모달의 input(댓글 번호), textarea(댓글 내용)의 value를 채움.
                document.querySelector('input#modalCommentId').value = cid;
                document.querySelector('textarea#modalCommentText').value = response.data.ctext;

                // 모달을 보여줌.
                commentModal.show();
            })
            .catch((error) => console.log(error));
    }

    // 댓글 업데이트 모달의 [저장] 버튼의 클릭 이벤트 리스너
    function updateComment() {
        // 업데이트할 댓글 번호
        const id = document.querySelector('input#modalCommentId').value;

        // 업데이트할 댓글 내용
        const ctext = document.querySelector('textarea#modalCommentText').value;
        if (ctext === '') {
            alert('업데이트할 댓글 내용을 입력하세요.');
            return; // 이벤트 리스너를 종료
        }

        // 댓글 업데이트 요청 REST API URI
        const uri = `../api/comment/${id}`;

        // Ajax 요청
        axios
            .put(uri, { ctext }) // { ctext } = {ctext: ctext}, {id, ctext} = {id: id, ctext: ctext}
            .then((response) => {
                // console.log(response);

                getAllComments(); // 댓글 목록 갱신
                commentModal.hide(); // 모달 숨김
            })
            .catch((error) => console.log(error));
    }

    function initPagination() {
        currentPage = 1;
        renderComments();
    }

    // 댓글을 페이지에 맞게 렌더링하는 함수
    function renderComments() {
        // 시작 인덱스 계산
        const startIndex = (currentPage - 1) * pageSize;
        // 현재 페이지에 해당하는 댓글 데이터 슬라이스
        const commentsToShow = allComments.slice(startIndex, startIndex + pageSize);
        // 댓글 HTML 생성 및 삽입
        makeCommentElements(commentsToShow);
        // 페이징 버튼 생성
        renderPagination();
    }

    // 페이징 버튼 생성 함수
    function renderPagination() {
        const totalPages = Math.ceil(allComments.length / pageSize);
        let paginationHtml = '';

        for (let i = 1; i <= totalPages; i++) {
            paginationHtml += `
                <li class="page-item ${currentPage === i ? 'active' : ''}">
                    <a class="mt-auto page-link" href="#">${i}</a>
                </li>`;
        }

        document.getElementById('pagination2').innerHTML = paginationHtml;
    }

    // 페이지 이동 함수
    function gotoPage(page) {
        currentPage = page;
        renderComments();
    }
});
