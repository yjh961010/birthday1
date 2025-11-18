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
    <style>
@keyframes fadeIn {
    from { opacity:0; transform:scale(0.9); }
    to { opacity:1; transform:scale(1); }
}
</style>
</head>
<body>
    <!-- 배경 음악 자동 재생 -->
    <audio autoplay loop>
        <source src="${pageContext.request.contextPath}/music/birthday2.mp3" type="audio/mpeg">
        브라우저가 audio 태그를 지원하지 않습니다.
    </audio>

    <h1>🎉 생일 축하 편지 💖</h1>
    <p>지영아, 오늘 하루 정말 행복하길 바라! 💌 (서버가 조금 느려도 이해해줘..)</p>

    <div class="scroll-hint">👇 happy birthday! 🎁</div>

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
                       
                        <p>첫 번째 선물 💖<br>생일 너무 축하해 지영아</p>
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
                        
                        <p>두 번째 선물 🎵</p>
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
                        
                        <p>세 번째 선물 🎬<br></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- 케이크 기프티콘 팝업 -->
<div id="cake-popup" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.6); justify-content:center; align-items:center; z-index:9999;">
<div style="background:white; padding:20px; border-radius:15px; text-align:center; max-width:350px; animation:fadeIn 0.3s;">
<h2 style="color:#ff66b2;">🎂 Birth day Cake 🎁</h2>
<img src="${pageContext.request.contextPath}/images/gift.jpg" style="width:100%; border-radius:10px; margin-top:15px;">
<p style="margin-top:10px; font-size:1.2em; color:#555;">지영이에게 주는 생일 선물이야 🎉 <br> 받기 싫을수도 있겠지만 생일이니까 케잌정도는 받아줬으면해..</p>
<button onclick="closeCakePopup()" style="margin-top:15px; padding:10px 20px; border:none; border-radius:8px; background:#ff66b2; color:white; cursor:pointer;">닫기</button>
<a href="${pageContext.request.contextPath}/images/gift.jpg" download style="display:inline-block; margin-top:10px; padding:10px 20px; background:#ffa3cc; color:white; border-radius:8px; text-decoration:none; font-size:1em;">다운로드</a>
</div>
</div>
  <!-- 추억 섹션 -->
<div id="memories-section" style="display:none; text-align:center; margin-top:150px;">
    <h2>🎬 재밌었던 순간들 🎬</h2>

    <!-- 슬라이드 컨테이너 -->
    <div id="memory-slider" style="position: relative; width: 80%; max-width: 600px; margin: 0 auto;">

        <!-- 슬라이드 1 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory1.jpg" alt="memory1" style="width:100%; border-radius:10px;">
            <p>우리가 처음 친해졌던 게임이었던거같아</p>
        </div>

        <!-- 슬라이드 2 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory2.jpg" alt="memory2" style="width:100%; border-radius:10px;">
            <p>그 다음 팰월드하면서도 많이 재밌었지</p>
        </div>

        <!-- 슬라이드 3 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory3.jpg" alt="memory3" style="width:100%; border-radius:10px;">
            <p>이거 먹어보려고도 그렇게 돌아다니고 😊</p>
        </div>

        <!-- 슬라이드 4 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory4.jpg" alt="memory4" style="width:100%; border-radius:10px;">
            <p>덕분에 책읽는 습관도가지고 서점도 많이갔고,</p>
        </div>

        <!-- 슬라이드 5 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory5.jpg" alt="memory5" style="width:100%; border-radius:10px;">
            <p>애견카페도 혼자 가보고</p>
        </div>

        <!-- 슬라이드 6 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory6.jpg" alt="memory6" style="width:100%; border-radius:10px;">
            <p>전시회도 재밌게 잘다녀왔지</p>
        </div>

        <!-- 슬라이드 7 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory7.jpg" alt="memory7" style="width:100%; border-radius:10px;">
            <p>추천받아서 아직까지도 잘쓰고있고</p>
        </div>

        <!-- 슬라이드 8 -->
        <div class="slide" style="display: none; text-align:center;">
            <img src="${pageContext.request.contextPath}/images/memory8.jpg" alt="memory8" style="width:100%; border-radius:10px;">
            <p>내 생일까지도 기분좋게 너무 잘챙겨줬지. 생각해보면 받은게 너무많은거같아</p>
        </div>

        

        <!-- 이전/다음 버튼 -->
        <button id="prev-slide" style="position:absolute; top:50%; left:0; transform:translateY(-50%); font-size:2em; background:none; border:none; cursor:pointer;">&#10094;</button>
        <button id="next-slide" style="position:absolute; top:50%; right:0; transform:translateY(-50%); font-size:2em; background:none; border:none; cursor:pointer;">&#10095;</button>
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
    function closeCakePopup() {
        document.getElementById('cake-popup').style.display = 'none';
    }

    document.getElementById('next-slide').addEventListener('click', nextSlide);
    document.getElementById('prev-slide').addEventListener('click', prevSlide);

    // 초기 슬라이드
    showSlide(currentSlide);

    cards.forEach(card => {
        card.addEventListener('click', () => {
            cards.forEach(c => {
                if (c !== card) c.classList.remove('flipped');
            });
            card.classList.toggle('flipped');
         // mel 카드 → 케이크 기프티콘 팝업
            if (card.querySelector('img').alt === 'mel') {
                document.getElementById('cake-popup').style.display = 'flex';
            }
            // 아리 카드 클릭 시 추억 섹션 표시
            if (card.querySelector('img').alt === 'ahri') {
                memoriesSection.style.display = 'block';
                memoriesSection.scrollIntoView({ behavior: 'smooth' });
                showSlide(0);
            }

            // cassi 카드 → 다른 페이지 이동
            if (card.querySelector('img').alt === 'cassi') {
                window.location.href = "${pageContext.request.contextPath}/letter2";
            }
        });
    });

    // 자동 슬라이드 (10초)
    setInterval(nextSlide, 100000);
</script>


</body>
</html>
