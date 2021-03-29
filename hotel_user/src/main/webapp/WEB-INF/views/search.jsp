<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ include file="header.jsp" %> 
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
						<input type="text" id="search" onkeyup="filter()" placeholder="호텔명 입력해주세요.">
					</div>
				</div>
			</div>
			<div class="slider_aside"></div>
		</div>
	</div>
	<div class="search_result">
	<div class="hotel-list hotel-list-scroll">
		<c:forEach var="dto" items="${list}">
			<div class="hotel-section">
				<div class="hotel-section-img">
					<a href="${cpath }/hotelView/${dto.HO_NAME}/">
						<img src="http://182.212.181.172:9000/${dto.HO_UPLOADFILE}" style="width: 720px;">
					</a>
				</div>
				<div style="height: 10px; background-color: white;"></div>
				<div class="hotel-section-info">
					<div class="hotelName">${dto.HO_NAME }</div>
					<div>${dto.HO_DESCRIPTION }</div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>

	<script>
        function filter() {
          let search = document.getElementById("search").value.toLowerCase();
          let hotelSection = document.getElementsByClassName("hotel-section");
  
          for (let i = 0; i < hotelSection.length; i++) {
            hotelName = hotelSection[i].getElementsByClassName("hotelName");
            
            if (hotelName[0].innerHTML.toLowerCase().indexOf(search) != -1) {
              hotelSection[i].style.display = "block"
            } else {
              hotelSection[i].style.display = "none"
            }
          }
        }
    </script>
</body>
</html>
