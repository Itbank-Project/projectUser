<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/calendar.css">
<link rel="stylesheet" href="${cpath }/resources/css/hotelMain.css">

<body>
	<div class="screenAll">
		<div class="aside"></div>
		<div id="root" class="nav">
			<div class="inner-section">
				<div style="height: 8px;"></div>
			</div>
			<div class="inner-section">
				<div class="slider_aside"></div>
				<div class="slider_wrap">
					<!-- 슬라이더 -->
					<div class="slider_box">
						<!-- 보여지는 박스 -->
						<div class="slider_list">
							<!-- 보여줄 아이템의 목록-->
							<div class="slider_content"
								onclick="location.href='https://www.dailyhotel.com/period-recommends?i=11871&ci=1848&serviceType=stay';">1</div>
							<!-- 아이템1-->
							<div class="slider_content"
								onclick="location.href='https://www.dailyhotel.com/period-recommends?i=11931&ci=1901&serviceType=stay';">2</div>
							<!-- 아이템2-->
							<div class="slider_content"
								onclick="location.href='https://www.dailyhotel.com/period-recommends?i=11921&ci=1893&serviceType=stay';">3</div>
							<!-- 아이템3-->
							<div class="slider_content"
								onclick="location.href='https://www.dailyhotel.com/period-recommends?i=11667&ci=1678&serviceType=stay';">4</div>
							<!-- 아이템4-->
							<div class="slider_content"
								onclick="location.href='https://www.dailyhotel.com/pages?pageUrl=/cdn/mkt/event/210222_bomcance/index.html';">5</div>
							<!-- 아이템5-->
						</div>
					</div>
				</div>
				<div class="slider_aside"></div>
			</div>
			<div class="inner-section">
				<div style="height: 50px;"></div>
			</div>
			<div class="inner-section">
				<div class="slider_aside"></div>
				<div class="hotel-list" style="width: 720px;">
					<div class="hotel-list-top">
						<div
							style="font-weight: bold; font-size: larger; margin-bottom: 10px; color: rgb(77, 77, 77);">호캉스
							절호의 기회</div>
					</div>
					<div
						style="justify-content: space-between; display: flex; width: 720px; color: rgb(102, 102, 102); font-size: 14px; margin-bottom: 20px;">
						<div>'HotelJava'만의 특가를 놓치지 마세요</div>
					</div>
					<div>
						<div>
							<a href="${cpath }/hotel"><img
								src="https://i.pinimg.com/564x/b9/92/97/b99297eef4f6006c975f8375d7a1459f.jpg"
								alt="" style="width: 720px;"></a>
						</div>
					</div>
				</div>
				<div class="slider_aside"></div>
			</div>
			<div class="inner-section">
				<div style="height: 50px;"></div>
			</div>
			<div class="inner-section">
				<div class="slider_aside"></div>
				<div class="hotel-list" style="width: 720px;">
					<div class="hotel-list-top">
						<div
							style="font-weight: bold; font-size: larger; margin-bottom: 10px; color: rgb(77, 77, 77);">TOUR INFO</div>
					</div>
					<div
						style="justify-content: space-between; display: flex; width: 720px; color: rgb(102, 102, 102); font-size: 14px; margin-bottom: 20px;">
						<div>Vol 01. 봄바람에 심쿵</div>
					</div>
					<div>
						<div>
							<img
								src="https://cdn.dailyhotel.com/mkt/event/210310_bomcance/img/01.jpg"
								alt="" style="width: 720px;">
						</div>
					</div>
				</div>
				<div class="slider_aside"></div>
			</div>
			<div class="inner-section">
				<div style="height: 100px;"></div>
			</div>
		</div>
		<div class="aside"></div>
	</div>

	<script src="${cpath }/resources/js/submenu.js"></script>
	<script src="${cpath }/resources/js/slider.js"></script>
	<script src="${cpath }/resources/js/calendar.js"></script>

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

	<script>
		// 모달창을 이용한 아래에서 위로
		$('.js-click-modal').click(function() {
			$('.container').addClass('modal-open');
		});

		$('.js-close-modal').click(function() {
			$('.container').removeClass('modal-open');
		});
	</script>

	<script type="text/javascript">
		// 달력
		buildCalendar();
	</script>
	
	<script>
		// footer 해당 메뉴 페이지 접근시 글자색 변경
		const itemList = document.querySelectorAll('#footer-text');
		
		itemList.forEach(tr => tr.style.color='rgb(146, 146, 146)');
		itemList[0].style.color='rgb(219, 7, 74)';
	</script>
	
	<script>
		// footer 해당 메뉴 페이지 접근시 아이콘색 변경
		const iconList = document.querySelectorAll('.iconWrapper');
		const greyIcon = document.querySelectorAll('#greyIcon');
		const pinkIcon = document.querySelectorAll('#pinkIcon');
		
		greyIcon[0].classList.add('hidden');
		pinkIcon[0].classList.remove('hidden');
	</script>
	
</body>
</html>