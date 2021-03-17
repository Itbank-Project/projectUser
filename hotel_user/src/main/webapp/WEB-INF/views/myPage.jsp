<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp" %>
<c:set var="cpath" >${pageContext.request.contextPath }</c:set>
<link rel="stylesheet" href="${cpath }/resources/css/myPage.css">
<body>

<div class="myPage">
	<!-- 정보 표시 -->
	
	<!-- 로그인 정보 -->
	<div class="myPage_loginO">
		<h2>개인정보</h2>
		<div class="myPage_loginO_content">
			<div class="">
				<h4>이름</h4>
			</div>
			<div class="">
				<h5>${login.cu_name }</h5>
			</div>
		</div>
		<div class="myPage_loginO_content">
			<div class="">
				<h4>생년월일</h4>
			</div>
			<div class="">
				<h5>${login.cu_birthYear }. ${login.cu_birthMonth }. ${login.cu_birthDay }</h5>
			</div>
		</div>
		<div class="myPage_loginO_content">
			<div class="">
				<h4>성별</h4>
			</div>
			<div class="">
				<h5>${login.cu_gender }</h5>
			</div>
		</div>
		<div class="myPage_loginO_content">
			<div class="">
				<h4>이메일</h4>
			</div>
			<div class="">
				<h5>${login.cu_email }</h5>
			</div>
		</div>
		<div class="myPage_loginO_content">
			<div class="">
				<h4>전화번호</h4>
			</div>
			<div class="">
				<h5>${login.cu_pnum }</h5>
			</div>
		</div>
	</div>

	
	<!-- 예약 내역 -->
	<div class="reservation">
		<h2>예약내역</h2>
		<!-- 예약 내역이 있을 때 -->
		<c:if test="${not empty reservation }">
			<div class="res_content">
				<div class="">
					<h4>예약날짜</h4>
				</div>
				<div class="">
					<h4>호텔명</h4>
				</div>
				<div class="">
					<h4>예약자</h4>
				</div>
				<div class="">
					<h4>결제금액</h4>
				</div>
			</div>
		</c:if>
		<!-- 예약 내역이 없을 때 -->
		<c:if test="${empty reservation }">
			<div class="">
				<h4 style="text-align: center;">예약 내역이 없습니다.</h4>
			</div>
		</c:if>
	</div>

</div>

<script>
	//footer 해당 메뉴 페이지 접근시 글자색 변경
	const itemList = document.querySelectorAll('#footer-text');
	
	itemList.forEach(tr => tr.style.color='rgb(146, 146, 146)');
	itemList[1].style.color='rgb(219, 7, 74)';
</script>

<script>
	//footer 해당 메뉴 페이지 접근시 아이콘색 변경
	const iconList = document.querySelectorAll('.iconWrapper');
	const greyIcon = document.querySelectorAll('#greyIcon');
	const pinkIcon = document.querySelectorAll('#pinkIcon');
	
	greyIcon[1].classList.add('hidden');
	pinkIcon[1].classList.remove('hidden');
</script>

</body>
</html>