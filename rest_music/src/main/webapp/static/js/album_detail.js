/**
 * detail.jsp에 포함
 */

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
originDate.innerHTML = date;

const likebtn = document.querySelectorAll('#likebtn');
for (let l of likebtn) {
	l.addEventListener('click', () => {
		if (l.getAttribute('src') === '../imgs/likeOff.png') {
			l.src = '../imgs/likeOn.png';
		} else {
			l.src = '../imgs/likeOff.png'
		}
	}
	);
}


