<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>🎉 지영아 생일축하해 💖</title>

<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Segoe UI', sans-serif;
	background: linear-gradient(135deg, #e0c3fc, #c2f0f7);
	height: 100vh;
	overflow: hidden;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
}

h1 {
	font-size: 3em;
	color: #ff66b2;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
	margin-bottom: 30px;
}

/* 로그인 실패 메시지 */
.error-message {
	color: red;
	font-size: 1.5em;
	margin-bottom: 20px;
}

.cake {
	width: 100px;
	height: 120px;
	background: #ffe6f2;
	border-radius: 0 0 20px 20px;
	position: relative;
	margin-bottom: 20px;
}

.cake::before {
	content: "";
	width: 80px;
	height: 20px;
	background: #ff80bf;
	position: absolute;
	top: -20px;
	left: 10px;
	border-radius: 10px 10px 0 0;
}

.cake::after {
	content: "🕯️";
	position: absolute;
	top: -35px;
	left: 35px;
	font-size: 1.5em;
}

/* 편지봉투 */
.envelope {
	font-size: 4em;
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: transform 0.2s;
}

.envelope:hover {
	transform: scale(1.2);
}

/* 클릭 안내 텍스트 */
.click-text {
	display: block;
	position: absolute;
	top: 100%;
	left: 50%;
	transform: translateX(-50%);
	font-size: 0.2em;
	color: #ff4da6;
	font-weight: bold;
	white-space: nowrap;
	animation: bounce 1s infinite alternate;
}

@
keyframes bounce { 0% {
	transform: translateX(-50%) translateY(0);
}

100
%
{
transform
:
translateX(
-50%
)
translateY(
-10px
);
}
}
.heart {
	font-size: 2.5em;
	color: #ff4da6;
	margin-top: 20px;
}

/* 풍선 애니메이션 */
.balloon {
	width: 50px;
	height: 70px;
	background-color: #ff99cc;
	border-radius: 50% 50% 50% 50%;
	position: absolute;
	bottom: -100px;
	animation: float 6s linear infinite;
}

@
keyframes float { 0% {
	transform: translateY(0);
	opacity: 1;
}
100
%
{
transform
:
translateY(
-600px
);
opacity
:
0;
}
}
</style>
<script>
	// 풍선 생성
	window.onload = function() {
		const colors = [ '#ff99cc', '#ffcce0', '#ffb3d9', '#ff80bf', '#ff66b2' ];
		for (let i = 0; i < 10; i++) {
			const balloon = document.createElement('div');
			balloon.classList.add('balloon');
			balloon.style.left = Math.random() * window.innerWidth + 'px';
			balloon.style.backgroundColor = colors[Math.floor(Math.random()
					* colors.length)];
			balloon.style.animationDelay = (Math.random() * 3) + 's';
			document.body.appendChild(balloon);
		}
	}

	// 편지봉투 클릭 시 로그인 페이지로 이동
	function openLogin() {
		window.location.href = "/login";
	}
</script>
</head>
<body>
	<h1>🎉 지영아 생일축하해 💖</h1>

	<!-- 로그인 실패 메시지 -->
	<c:if test="${not empty errorMessage}">
		<div class="error-message">${errorMessage}</div>
	</c:if>

	<div class="cake"></div>

	<!-- 편지봉투 클릭 -->
	<div class="envelope" onclick="openLogin()">
		💌
		<div class="click-text">여기를 눌러!</div>
	</div>

	<div class="heart">❤️</div>


</body>
</html>
