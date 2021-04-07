<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/moreDetail.css">
<meta charset="UTF-8">
<body>
	
	<div class="moreMenu">
		<div class="moreMenu_">
			호텔자바 소개
			<img class="arrow" src="https://cdn.dailyhotel.com/ux/region-icon-arrow.svg">
		</div>
		<div class="moreMenu_">
			이용 가이드
			<img class="arrow" src="https://cdn.dailyhotel.com/ux/region-icon-arrow.svg">
		</div>
		<div class="moreMenu_">
			자주 묻는 질문
			<img class="arrow" src="https://cdn.dailyhotel.com/ux/region-icon-arrow.svg">
		</div>
	</div>
	
<script src="${cpath }/resources/js/submenu.js"></script>
<script>
	//footer 해당 메뉴 페이지 접근시 글자색 변경
	const itemList = document.querySelectorAll('#footer-text');

	itemList.forEach(tr => tr.style.color='rgb(146, 146, 146)');
	itemList[2].style.color='rgb(219, 7, 74)';
</script>

<script>
	//footer 해당 메뉴 페이지 접근시 아이콘색 변경
	const iconList = document.querySelectorAll('.iconWrapper');
	const greyIcon = document.querySelectorAll('#greyIcon');
	const pinkIcon = document.querySelectorAll('#pinkIcon');
	
	greyIcon[2].classList.add('hidden');
	pinkIcon[2].classList.remove('hidden');
</script>

</body>
</html>