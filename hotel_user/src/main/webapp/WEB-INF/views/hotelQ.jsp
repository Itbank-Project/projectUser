<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<style>
	.questionList {
		max-width: 768px;
		width: 100%;
		margin: 0 auto;
	}
	.question {
		display: flex;
		justify-content: space-between;
		margin-left: 20px;
		margin-right: 20px;
	}
	.answer {
		margin-left: 30px;
		margin-right: 30px;
		font-size: 15px;
	}
</style>
<body>

	<div class="questionList">
		<h3>자주 묻는 질문</h3>
		<div class="">
			<div class="question">
				<div>
					예약 확인은 어떻게 하나요 ?
				</div>
				<div class="Arrow">
					<img src="https://img.dailyhotel.me/static/images/ic-faq-unfold@2x.png">
				</div>
				<div class="Arrow hidden">
					<img src="https://img.dailyhotel.me/static/images/ic-faq-fold@2x.png">
				</div>
			</div>
			<div class="answer hidden">
				예약 확인은 앱 하단의[예약내역]에서 확인 가능합니다.<br>
				단 ,대기예약제로 진행되는 팬션 / 리조트 / 일부 호텔의 경우 대기 후 예약 확정 여부를 확인하실 수 있습니다.<br>
				대기예약제 여부는 상세정보의 확인사항에 기재되어 있으며, 대기예약 안내 문자와 확정여부 안내 문자를 발송해 드립니다.
			</div>
		</div>
	</div>


	<script>
		const question = document.querySelector('.question');
		const answer = document.querySelector('.answer');
		
		const questionHandler = function(event){
			console.log(answer.className);
			if(answer.className == 'answer'){
				answer.classList.add('hidden');
			}
			else{
				answer.classList.remove('hidden');
			}
		}
		
		question.onclick = questionHandler;
	</script>
	
	
</body>
</html>