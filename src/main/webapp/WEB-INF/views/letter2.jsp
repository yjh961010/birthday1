<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>💌 특별한 편지</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(135deg, #fff1f8, #f0f8ff);
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        min-height: 100vh;
        padding: 50px 20px;
        color: #333;
    }

    h1 {
        font-size: 3em;
        color: #ff66b2;
        margin-bottom: 40px;
        text-align: center;
        text-shadow: 2px 2px 5px rgba(0,0,0,0.1);
    }

    .letter-content {
        max-width: 800px;
        background: rgba(255,255,255,0.8);
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
        line-height: 1.6em;
        font-size: 1.2em;
        position: relative;
        overflow: hidden;
    }

    .letter-content::before {
        content: "💖";
        position: absolute;
        top: -20px;
        left: -20px;
        font-size: 2em;
    }

    .letter-content::after {
        content: "💌";
        position: absolute;
        bottom: -20px;
        right: -20px;
        font-size: 2em;
    }

    .signature {
        margin-top: 40px;
        font-weight: bold;
        font-size: 1.3em;
        text-align: right;
    }

    /* 스크롤 애니메이션 */
    .fade-in {
        opacity: 0;
        transform: translateY(20px);
        transition: opacity 1s ease-out, transform 1s ease-out;
    }

    .fade-in.visible {
        opacity: 1;
        transform: translateY(0);
    }
</style>
</head>
<body>

<!-- 배경 음악 자동 재생 -->
<audio autoplay loop>
    <source src="${pageContext.request.contextPath}/music/birthday.mp3" type="audio/mpeg">
    브라우저가 audio 태그를 지원하지 않습니다.
</audio>

<h1>🎉 특별한 편지 🎉</h1>
<button id="music-btn">🎵 음악 ON/OFF</button>

<div class="letter-content">
    <p class="fade-in" style="transition-delay: 0s;">지영아,</p>
    <p class="fade-in" style="transition-delay: 3s;">오늘 하루도 너에게 특별하고 행복한 순간들로 가득하길 바라며 이 편지를 써.  
    우리가 함께했던 순간들이 하나하나 소중하게 마음 속에 남아있어. 💖</p>

    <p class="fade-in" style="transition-delay: 6s;">첫 만남부터 지금까지, 웃었던 일, 울었던 일, 그리고 서로에게 의지가 되어주었던 모든 순간들.  
    그 기억들이 모여 지금의 우리를 만들어준 것 같아. 🎶</p>

    <p class="fade-in" style="transition-delay: 9s;">앞으로도 함께할 시간들이 너무 기대되고, 매 순간을 소중히 하고 싶어.  
    너의 웃음, 너의 눈빛, 그리고 너의 마음 모두 나에게 큰 선물이야. 😊</p>

    <p class="fade-in" style="transition-delay: 12s;">힘들 때도 있고, 지칠 때도 있겠지만 우리가 함께라면 어떤 순간도 즐겁고 행복할 거라고 믿어.  
    오늘 하루는 네가 주인공이니까, 마음껏 행복하고 즐겁게 보내길 바랄게! 🎂</p>

    <div class="signature fade-in" style="transition-delay: 15s;">
        - 장호가 💌
    </div>
</div>

<script>
    // 스크롤 애니메이션
    const faders = document.querySelectorAll('.fade-in');

    const appearOptions = {
        threshold: 0.1,
    };

    const appearOnScroll = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if(entry.isIntersecting){
                entry.target.classList.add('visible');
                observer.unobserve(entry.target);
            }
        });
    }, appearOptions);

    faders.forEach(fader => {
        appearOnScroll.observe(fader);
    });
    const audio = document.querySelector('audio');
    document.getElementById('music-btn').addEventListener('click', () => {
      if(audio.paused){
        audio.play();
      } else {
        audio.pause();
      }
    });
</script>

</body>
</html>
