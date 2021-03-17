<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ include file="header.jsp" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>search</title>
</head>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${cpath }/resources/css/search.css">
<body>
    <div class="search">
	    <div class="inner-section">
			<div style="height: 10px;"></div>
		</div>
		<div class="inner-section">
			<div class="slider_aside"></div>
			<div class="search-wrap" style="width: 2500px;">
				<div class="search-name">
					<div class="icon">
						<img src="https://cdn.dailyhotel.com/ux/icon-search-navigation.svg" alt="">
					</div>
					<div id="searchInput" class="search-input" style="width: 100%;">
						<input id="Input" type="text" placeholder="호텔명 입력">
					</div>
				</div>
				<button id="searchBtn" class="search-btn" disabled="true">검색하기</button>
			</div>
			<div class="slider_aside"></div>
		</div>
	</div>
	<div class="search_result"></div>
	
	<script>
		const inputText = document.querySelector('#Input');
		const searchBtn = document.querySelector('#searchBtn');
		
		const searchHandler = function(event){
			if(inputText.value == ''){
				searchBtn.style.color = '#dcdcdc';
				searchBtn.style.background = '#e6e6e6';
			} else {
				searchBtn.style.color = '#fff';
				searchBtn.style.background = '#db074a';
			}
		}
		
		inputText.onkeyup = searchHandler;
	</script>

</body>
</html>