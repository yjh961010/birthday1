<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>💌 편지 내용</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #fce6f9, #e0f7fa);
            text-align: center;
            min-height: 200vh; /* 스크롤 생기도록 */
        }

        h1 {
            font-size: 2.5em;
            color: #ff66b2;
            margin-top: 100px;
        }

        p {
            font-size: 1.5em;
            margin-top: 20px;
        }

        /* 🎁 선물 섹션 */
        .gift-section {
            margin-top: 150px;
        }

        .gift-title {
            font-size: 2em;
            color: #ff66b2;
            margin-bottom: 40px;
        }

        .gift-container {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .card {
            width: 200px;
            height: 250px;
            perspective: 1000px;
            cursor: pointer;
        }

        .card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            transition: transform 0.8s;
            transform-style: preserve-3d;
        }

        .card.flipped .card-inner {
            transform: rotateY(180deg);
        }

        .card-front, .card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            border-radius: 15px;
            backface-visibility: hidden;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        .card-front img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 15px;
        }

        .card-back {
            background: white;
            transform: rotateY(180deg);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            font-size: 1.2em;
            color: #ff66b2;
        }

        .card-back img {
            width: 100px;
            margin-bottom: 10px;
        }

        .scroll-hint {
            margin-top: 60px;
            font-size: 1.2em;
            color: #888;
            animation: bounce 1.5s infinite;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(10px); }
        }

        /* 추억 섹션 스타일 */
        #memories-section {
            margin-top: 150px;
            display: none;
            text-align: center;
        }

        #memories-section h2 {
            font-size: 2em;
            color: #ff66b2;
            margin-bottom: 30px;
        }

        #memories-section p {
            font-size: 1.2em;
            color: #555;
        }

        #memories-section img {
            width: 200px;
            border-radius: 10px;
        }

    </style>
</head>
<body>
    <!-- 배경 음악 자동 재생 -->
    <audio autoplay loop>
        <source src="${pageContext.request.contextPath}/music/birthday.mp3" type="audio/mpeg">
        브라우저가 audio 태그를 지원하지 않습니다.
    </audio>

    <h1>🎉 생일 축하 편지 💖</h1>
    <p>지영아, 오늘 하루 정말 행복하길 바라! 💌</p>

    <div class="scroll-hint">👇 선물타임! 🎁</div>

    <div class="gift-section">
        <div class="gift-title">🎁 왼쪽부터 골라주세요! 🎁</div>

        <div class="gift-container">
            <!-- 첫 번째 카드: mel -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        <img src="/images/mel.jpg" alt="mel">
                    </div>
                    <div class="card-back">
                        <img src="/images/present.png" alt="present">
                        <p>첫 번째 선물 💖<br>사랑 가득한 마음!</p>
                    </div>
                </div>
            </div>

            <!-- 두 번째 카드: ahri -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        <img src="${pageContext.request.contextPath}/images/ahri.jpg" alt="ahri">
                    </div>
                    <div class="card-back">
                        <img src="/images/present.png" alt="present">
                        <p>두 번째 선물 🎵<br>너만을 위한 노래!</p>
                    </div>
                </div>
            </div>

            <!-- 세 번째 카드: cassi -->
            <div class="card">
                <div class="card-inner">
                    <div class="card-front">
                        <img src="/images/cassi.jpg" alt="cassi">
                    </div>
                    <div class="card-back">
                        <img src="/images/present.png" alt="present">
                        <p>세 번째 선물 🎬<br>추억 영상!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

   <!-- 추억 섹션 -->
<div id="memories-section">
    <h2>🎬 재밌었던 순간들 🎬</h2>

    <!-- 슬라이드 컨테이너 -->
    <div id="memory-slider" style="position: relative; width: 80%; max-width: 600px; margin: 0 auto;">
        <!-- 슬라이드 10장 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory1.jpg" alt="memory1" style="width:100%; border-radius:10px;">
            <p>첫 번째 추억 💖</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory2.jpg" alt="memory2" style="width:100%; border-radius:10px;">
            <p>두 번째 추억 🎵</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory3.jpg" alt="memory3" style="width:100%; border-radius:10px;">
            <p>세 번째 추억 📸</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory4.jpg" alt="memory4" style="width:100%; border-radius:10px;">
            <p>네 번째 추억 🎂</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory5.jpg" alt="memory5" style="width:100%; border-radius:10px;">
            <p>다섯 번째 추억 💌</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory6.jpg" alt="memory6" style="width:100%; border-radius:10px;">
            <p>여섯 번째 추억 🎶</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory7.jpg" alt="memory7" style="width:100%; border-radius:10px;">
            <p>일곱 번째 추억 🌸</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory8.jpg" alt="memory8" style="width:100%; border-radius:10px;">
            <p>여덟 번째 추억 🐾</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory9.jpg" alt="memory9" style="width:100%; border-radius:10px;">
            <p>아홉 번째 추억 🌅</p>
        </div>
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory10.jpg" alt="memory10" style="width:100%; border-radius:10px;">
            <p>열 번째 추억 💕</p>
        </div>

        <!-- 이전/다음 버튼 -->
        <button id="prev-slide" style="position:absolute; top:50%; left:0; transform:translateY(-50%); font-size:2em; background:none; border:none; cursor:pointer;">&#10094;</button>
        <button id="next-slide" style="position:absolute; top:50%; right:0; transform:translateY(-50%); font-size:2em; background:none; border:none; cursor:pointer;">&#10095;</button>
    </div>

    <div style="margin-top: 20px;">
        <p>지영아, 우리가 함께했던 순간들 정말 소중했어. 😊</p>
        <p>항상 행복하고 웃음 가득한 날들이 되길 바랄게! 💌</p>
    </div>
</div>

<script>
    const cards = document.querySelectorAll('.card');
    const memoriesSection = document.getElementById('memories-section');
    const slides = document.querySelectorAll('#memory-slider .slide');
    let currentSlide = 0;

    function showSlide(index) {
        slides.forEach((s, i) => s.style.display = (i === index) ? 'block' : 'none');
    }

    function nextSlide() {
        currentSlide = (currentSlide + 1) % slides.length;
        showSlide(currentSlide);
    }

    function prevSlide() {
        currentSlide = (currentSlide - 1 + slides.length) % slides.length;
        showSlide(currentSlide);
    }

    document.getElementById('next-slide').addEventListener('click', nextSlide);
    document.getElementById('prev-slide').addEventListener('click', prevSlide);

    // 처음에 슬라이드 숨김
    showSlide(currentSlide);

    cards.forEach(card => {
        card.addEventListener('click', () => {
            cards.forEach(c => {
                if (c !== card) c.classList.remove('flipped');
            });
            card.classList.toggle('flipped');

            // ahri 카드 클릭 시 추억 섹션 표시
            if (card.querySelector('img').alt === 'ahri') {
                memoriesSection.style.display = 'block';
                memoriesSection.scrollIntoView({ behavior: 'smooth' });
                showSlide(0);
            }

            // cassi 카드 클릭 시 다른 페이지 이동
            if (card.querySelector('img').alt === 'cassi') {
                window.location.href = "${pageContext.request.contextPath}/letter2";
            }
        });
    });


    // 자동 슬라이드 (옵션)
    setInterval(nextSlide, 10000); // 5초마다 다음 슬라이드
</script>

</body>
</html>
