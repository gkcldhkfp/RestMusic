/**
 * detail.jsp에 포함
 */
// 모든 이미지에 이벤트 리스너 추가
document.addEventListener("DOMContentLoaded", function() {
	const albumImage = document.querySelector(".mouseScale-up");
	albumImage.addEventListener('mouseenter', () => {
		albumImage.style.transform = "scale(1.1)";
		albumImage.style.trasition = "all 0.5s";
	});
	
	albumImage.addEventListener('mouseleave', () => {
		albumImage.style.transform = "scale(1)";
		albumImage.style.trasition = "all 0.5s";
	});

	const originDate = document.querySelector('#date');
	console.log(originDate.innerHTML);
	const date = originDate.innerHTML.slice(2, 10).replaceAll('-', '.');
	console.log(date);
	originDate.innerHTML=date;
	
});