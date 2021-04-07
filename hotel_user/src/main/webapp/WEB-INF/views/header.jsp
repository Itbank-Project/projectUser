<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔JAVA</title>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>
<link rel="stylesheet" href="${cpath }/resources/css/header.css" >
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Train+One&display=swap" rel="stylesheet">
<!-- 구글 폰트 한글 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
<style>
	.login-modal-section{
		/* padding: 5px; */
		/* width: 100%; */
	}
	
	.modal-box{
		display: flex;
		justify-content: space-between;
		margin: 0 auto;
		
	}
	
	.text-login{
		font-size: 13pt;
		font-weight: bold;
	}
</style>
</head>
<body>
<!-- 헤더 파일 -->
<div>
	<div style="width: 100%; margin: 0 auto; height: 65px; border-bottom: 1px solid #dadada">
		<div style="width: 1000px; max-width: 100%; display: flex; justify-content: space-between; align-content: center; margin: 0 auto;">
			<div style="margin-bottom: 10px;">
				<div style="font-size: 30pt; font-family: 'Train One', cursive;"><a href="${cpath }">JAVA</a></div>
			</div>
			<div style="display: flex; margin-top: 10px; margin-bottom: 10px; align-content: center; justify-content: center;">
				<div>
					<img id="open_submenu" height="40px" src="https://cdn.dailyhotel.com/ux/nav-short-ic@2x.png">
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal-login hidden">
	<div class="modal_content">
		<!--표시하고 싶은 내용-->
		<!-- 로그인 안 했을 때 -->
		<c:if test="${empty login }">
			<div class="login-modal-section">
				<div class="modal-box">
					<div class="text-login">로그인</div>
					<div>
						<img id="close_submenu" height="24px"
							src="https://cdn.dailyhotel.com/ux/common-close-ic-gray@2x.png">
					</div>
				</div>
				<div style="font-size: 9pt; margin: 10px 0 10px;">호텔자바에 회원가입하시고 다양한 혜택을 누리세요.</div>
				<div style="display: flex;">
					<div>
						<a href="${cpath }/login"><button
								style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px; margin-right: 3px;">로그인</button></a>
					</div>
					<div>
						<a href="${cpath }/join"><button
								style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px;">회원가입</button></a>
					</div>
				</div>
			</div>
		</c:if>

	<!-- 로그인 했을 때 -->
		<c:if test="${not empty login }">
			<div class="login-modal-section">
				<div class="modal-box">
					<div class="text-login"><a href="${cpath }/myPage" style="color: black;">${login.cu_name } 님</a></div>
					<div>
						<img id="close_submenu" height="24px"
							src="https://cdn.dailyhotel.com/ux/common-close-ic-gray@2x.png">
					</div>
				</div>
				<div style="font-size: 9pt; margin: 10px 0 10px;">자바호텔에 오신걸 환영합니다.</div>
				<div style="display: flex;">
					<div>
					<a href="${cpath }/modify"><button
							style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px; margin-right: 3px;">정보수정</button></a>
					</div>
					<div>
					<a href="${cpath }/logout"><button
							style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px;">로그아웃</button></a>
					</div>
				</div>
			</div>
		</c:if>
	</div>
</div>
<script src="${cpath }/resources/js/submenu.js"></script>
