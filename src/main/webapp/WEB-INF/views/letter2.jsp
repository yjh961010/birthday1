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
    <p class="fade-in" style="transition-delay: 0s;">지영아, 우선 보잘것없지만 봐줘서 고마워</p>
    <p class="fade-in" style="transition-delay: 3s;">우선 내가 이 생일을 축하해줄 자격이 없을거같다 라는 생각도했어. 분명 내게 이런 축하도, 더 이상 연락하지 않고 싶다는 생각을할 수 도 있다는 생각을했어. </p>

    <p class="fade-in" style="transition-delay: 6s;">그럼에도 불구하고 너의 입장에서는 염치없고 뻔뻔할 수도 있겠지만 생일을 진심으로 축하해주고 싶었고, 진실된 사과를 전하고 싶었어.</p>

	<p class="fade-in" style="transition-delay: 9s;">이 상황에서 이런걸 만들어서 어떻게 해보겠다는건 아니야.. 지영이가 내 생일을 축하해줬을때부터 나도 특별하게 축하해주고 나만 할 수 있는걸 해주싶다라고 생각했어서  그때부터 생각해오고 조금씩 생각하고 만들어봤어.</p>

    <p class="fade-in" style="transition-delay: 9s;">물론 별것도아닌 이런걸 만드는게 지금 내가 망쳐놨던 상황들을 무마시키고 지영이가 받았던 상처들을 돌릴 수 없다는걸 알아 </p>

	<p class="fade-in" style="transition-delay: 12s;">2주정도 우리의 처음부터 지금까지 많이 생각해봤어. 그럴수록 내가 받은건 참 많고, 반대로 내가 너에게 준건 결국 상처밖에 없다는걸 알았어.</p>
  
    <p class="fade-in" style="transition-delay: 12s;">정말 많이 반성하고 후회가 되더라. 물론 스스로 진심으로 좋아하고 잘해주고 싶다는 생각은 항상 있었지만, 결국 상대방이 받은 감정은 그게 가짜일거라는 생각이 들거같아</p>
  
    <p class="fade-in" style="transition-delay: 12s;">지금 지영이를 생각하면 되게 많은 감정이들어. 좋아하지만 미안하고 고맙고 후회되고 아쉽고.. 괜히 소중하고 좋은사람에게 나라는 사람때문에 부정적인 영향을 준것같아. 진심으로 반성하고 있고, 너무 미안했어 지영아</p>
   
    <p class="fade-in" style="transition-delay: 12s;">오늘 이런 이야기를 하는것도 물론 너에게 찝찝하고 좋은 감정으로 느껴지지 않을수도 있겟지만, 조금이라도 내가 이제껏 줬던 상처들과 부정적인 감정들에 대한 사과를 하고싶었어.</p>
   
    <p class="fade-in" style="transition-delay: 12s;">사실 만들면서도 전해지지 못하겠다 라는 생각을하고있어. 그래도 이 글을 봤다면 너무 고맙고 좋겠다.</p>

	 <p class="fade-in" style="transition-delay: 12s;">만들면서 사실 내 주력쪽은 아니라 좀 애먹긴했어😅 </p>
	 
	 <p class="fade-in" style="transition-delay: 12s;">그래도 이걸 봤다면 예쁘지도 않고 별거없지만 봐줘서 너무 고맙고 생일 진심으로 축하해 지영아. 이제는 더이상 괜히 연락해서 싫은 감정 들게 하지않을게. 진심으로 너가 행복했으면 해.</p>
    <div class="signature fade-in" style="transition-delay: 15s;">
        - 장호가 💌
    </div>
</div>
<!-- 홈으로 버튼 -->
<div style="margin: 50px 0;">
    <a href="${pageContext.request.contextPath}/home" 
       style="
           padding: 12px 25px;
           background: #ff66b2;
           color: white;
           text-decoration: none;
           font-size: 1.2em;
           border-radius: 10px;
           box-shadow: 0 4px 6px rgba(0,0,0,0.1);
           transition: 0.3s;
       "
       onmouseover="this.style.background='#ff3399'" 
       onmouseout="this.style.background='#ff66b2'">
       🏠 홈으로
    </a>
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
