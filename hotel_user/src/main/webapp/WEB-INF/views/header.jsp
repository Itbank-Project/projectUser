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
</head>
<body>
<!-- 헤더 파일 -->
<div>
	<div style="width: 768px; margin: 0 auto; height: 50px; margin-bottom: 10px; border-bottom: 1px solid #dadada">
		<div style="width: 720px; display: flex; justify-content: space-between; align-content: center; margin: 0 auto;">
			<div style="margin-top: 10px; margin-bottom: 10px;">
				<div style="font-size: 15pt;"><a href="${cpath }"><img src="${cpath }/resources/img/hotel_logo.png" id="hotel_logo"></a></div>
			</div>
			<div style="display: flex; margin-top: 10px; margin-bottom: 10px; align-content: center; justify-content: center;">
				<div>
					<a href="${cpath }/search"><img height="35px" src="https://cdn.dailyhotel.com/ux/nav-search-ic@2x.png"></a>
				</div>
				<div>
					<img id="open_submenu" height="35px" src="https://cdn.dailyhotel.com/ux/nav-short-ic@2x.png">
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
			<div style="padding: 5px;">
				<div style="display: flex; justify-content: space-between;">
					<div style="font-size: 13pt; font-weight: bold;">로그인</div>
					<div>
						<img id="close_submenu" height="24px"
							src="https://cdn.dailyhotel.com/ux/common-close-ic-gray@2x.png">
					</div>
				</div>
				<div style="font-size: 9pt; margin: 10px 0 10px;">호텔자바에 회원가입하시고 다양한 혜택을 누리세요.</div>
				<div>
					<a href="${cpath }/login"><button
							style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px;">로그인</button></a>
					<a href="${cpath }/join"><button
							style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px;">회원가입</button></a>
				</div>
			</div>
		</c:if>

	<!-- 로그인 했을 때 -->
		<c:if test="${not empty login }">
			<div style="padding: 5px;">
				<div style="display: flex; justify-content: space-between;">
					<div style="font-size: 13pt; font-weight: bold;">${login.cu_name } 님</div>
					<div>
						<img id="close_submenu" height="24px"
							src="https://cdn.dailyhotel.com/ux/common-close-ic-gray@2x.png">
					</div>
				</div>
				<div style="font-size: 9pt; margin: 10px 0 10px;">자바호텔에 오신걸 환영합니다.</div>
				<div>
					<a href="${cpath }/modify"><button
							style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px;">정보수정</button></a>
					<a href="${cpath }/logout"><button
							style="border: 0; background-color: #f53b57; color: white; width: 150px; height: 40px;">로그아웃</button></a>
				</div>
			</div>
		</c:if>
	</div>
</div>

<script src="${cpath }/resources/js/submenu.js"></script>

