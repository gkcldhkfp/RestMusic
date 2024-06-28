/**
 * playerPage.jsp에 포함
 */
document.addEventListener('DOMContentLoaded', () => {
					// 재생목록 관리를 위한 인덱스 선언
					if (!sessionStorage.getItem('index')) {
						sessionStorage.setItem('index', 0);
					}
					index = parseInt(sessionStorage.getItem('index'));
					console.log(index);

					
					// ! JSON을 리스트로 만드는 코드는 playerPage.jsp의 아래부분에 선언함.

					// console.log(cPList);
					if (!cPList) {
						setTimeout(() => location.reload(true), 1000);
					}
					console.log(cPList[index].songPath);
					var audio = new Audio('../data' + cPList[index].songPath + '.mp3');
					audio.volume = 0.5; // 초기 볼륨 설정
					audio.autoplay = true;
					console.log(typeof audio + " " + audio);
					window.onload = function () {
						// span 객체 얻기
						var current = document.getElementById('current');
						var total = document.getElementById('total');
						// progress 객체 얻기
						var progress = document.querySelector('#progress');
						var progressBar = document.querySelector('.progress');
	
						// 앨범 커버 사진 설정
						const albumImage = document.querySelector('#albumImage');
						// 앨범 커버 사진 등록
						albumImage.src = "../data/" + cPList[index].albumImage + ".jpg";
	
	
						// 노래 제목과 가수 설정
						const musicTitle = document.querySelector('#music-title');
						const artist = document.querySelector("#artist");
						musicTitle.innerHTML = cPList[index].title;
						artist.innerHTML = cPList[index].singerName;
	
	
						// Audio 객체에 timeupdate 이벤트 처리를 위한 리스너 부착
						// addEventListener() 함수 사용
						audio.addEventListener('timeupdate', function () {
							// 오디오의 총 재생시간 얻고 설정
							total.innerHTML = convertSecondsToMinutesSeconds(audio.duration);
							// 오디오의 현재 재생시간 얻고 설정
							current.innerHTML = convertSecondsToMinutesSeconds(audio.currentTime);
							// 타임 업데이트에 따른 프로그레스 진행정도 표시
	
							// 최대값 설정
							progress.setAttribute('aria-valuemax', audio.duration);
							// 진행 정도
							var ratio = audio.currentTime / audio.duration * 100;
							progress.style.width = ratio + '%';
							progress.setAttribute('aria-valuenow', ratio);
						});
						audio.addEventListener("ended", function () {
							// 음원 하나가 끝나면 다음 곡을 재생하는 함수 호출.
							next();
						});
	
						// 프로그래스 바 클릭 이벤트 처리
						progressBar.addEventListener("click", function (e) {
							var rect = progressBar.getBoundingClientRect(); // 프로그래스 바의 위치와 크기 가져오기
							var totalWidth = rect.width; // 프로그래스 바의 전체 너비
							var clickX = e.clientX - rect.left; // 클릭한 위치의 X 좌표
							var percentage = (clickX / totalWidth) * 100; // 클릭한 위치의 백분율 계산
	
							// 음원 재생 위치 설정
							var duration = audio.duration; // 음원 파일의 전체 재생 시간 가져오기
							var currentTime = (percentage / 100) * duration; // 클릭한 위치에 해당하는 재생 시간 계산
							audio.currentTime = currentTime; // 재생 위치 설정
	
							// 프로그래스 바 업데이트
							progress.style.width = percentage + '%';
							progress.setAttribute('aria-valuenow', percentage);
						});
	
					};
	
					// 재생버튼시 호출하는 함수
					var play = function () {
						audio.play();
					};
	
					// 일시정지버튼시 호출하는 함수
					var pause = function () {
						audio.pause();
					};
	
					// 정지버튼시 호출하는 함수
					var stop = function () {
						// stop 함수는 별도로 없어서 따로 이런식으로 만들자.
						if (audio.played) {
							audio.pause();
							audio.currentTime = 0;
						}
					};
					// 이전 곡 버튼 클릭 시 호출하는 함수
					var previous = function () {
						if (index <= 0) {
							index = cPList.length - 1;
						} else {
							index = index - 1;
						}
						sessionStorage.setItem('index', index);
						console.log(cPList.length);
						console.log(index);
						location.reload(true);
						audio.play();
					}
	
					var next = function () {
						if (index > cPList.length - 1) {
							index = 0;
						} else {
							index = index + 1;
						}
						sessionStorage.setItem('index', index);
						console.log(cPList.length);
						console.log(index);
						location.reload(true) // 새로고침 링크 클릭하는 메서드
						audio.play();
					}
	
					// 시간형식 맞추는 함수
					function convertSecondsToMinutesSeconds(seconds) {
						// 소수점 이하 버리기
						seconds = Math.floor(seconds);
	
						// 분 계산
						var minutes = Math.floor(seconds / 60);
	
						// 초 계산
						var remainingSeconds = seconds % 60;
	
						// 결과 문자열 조합
						var result = minutes + ":" + remainingSeconds;
	
						return result;
					}
	
					// 볼륨 슬라이더 엘리먼트 가져오기
					var volumeSlider = document.getElementById('volumeSlider');
	
					// 음소거 버튼 엘리먼트 가져오기
					var muteButton = document.getElementById('muteButton');
					var muteIcon = document.getElementById('muteIcon');
					// 볼륨 슬라이더 값 변경 이벤트 리스너 추가
					volumeSlider.addEventListener('input', function () {
						audio.volume = volumeSlider.value;
						console.log('Volume:', audio.volume); // 디버깅용 로그
						updateMuteButton(); // 볼륨 조절 시 음소거 버튼 상태 업데이트
					});
	
					// 음소거 버튼 클릭 이벤트 리스너 추가
					muteButton.addEventListener('click', function () {
						if (audio.volume > 0) {
							audio.volume = 0;
							volumeSlider.value = 0;
							console.log(audio.volume);
						} else {
							audio.volume = volumeSlider.value = 0.5; // 기본 볼륨을 0.5 로 설정
							console.log(audio.volume);
						}
						updateMuteButton();
					});
	
					// 음소거 버튼 아이콘 업데이트 함수 정의
					function updateMuteButton() {
						if (audio.volume == 0) {
							muteIcon.classList.remove('bi-volume-up-fill');
							muteIcon.classList.add('bi-volume-mute-fill');
							// 음소거 아이콘으로 변경
						} else {
							muteIcon.classList.remove('bi-volume-mute-fill');
							muteIcon.classList.add('bi-volume-up-fill');
							// 음소거 아이콘 해제
						}
					}
	
					// songFrame의 버튼으로 mainFrame의 모달을 활성화 하기 위한 코드.
					document.getElementById("showModalButton").onclick = function () {
						console.log('mainframe의 메서드 호출');
						parent.frames['mainFrame'].showModal();
					}
	
					const playButton = document.querySelector('#playButton');
					const pauseButton = document.querySelector('#pauseButton');

					pauseButton.addEventListener('click', toggleAudio);
					playButton.addEventListener('click', toggleAudio);
	
					function toggleAudio() {
						if (audio.paused) {
							playAudio();
						} else {
							pauseAudio();
						}
					}
	
					function playAudio() {
						audio.play();
						playButton.style.display = 'none'; // 재생 버튼 숨기기
						pauseButton.style.display = 'block'; // 정지 버튼 보이기
					}
	
					function pauseAudio() {
						audio.pause();
						playButton.style.display = 'block'; // 재생 버튼 보이기
						pauseButton.style.display = 'none'; // 정지 버튼 숨기기
					}


					
});