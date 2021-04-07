<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="${cpath }/resources/css/selectRoom.css">

<body>	
<c:if test="${not empty map.roomList }">	
	<div class="selectRoom">
		<div class="selectRoom_title">
			<h3>객실선택 <span style="font-size: 12px; color: #929292; margin-left: 4px;">(세금/봉사료 포함)</span></h3>
		</div>
		
		<div class="selectRoom_hotelName">
			<div class="selectRoom_date">
				<span style="font-size: 14p; font-weight: 500; color: rgb(219, 7, 74);">${map.hotelName }</span>
			</div>
		</div>
		
		<div class="selectRoom_dateBox" style="width: 100%; padding: 8px 20px; background-color: white; z-index: 50; position: sticky; top: 44px;">
			<div class="selectRoom_date">
				<span style="font-size: 14p; font-weight: 500; color: rgb(219, 7, 74);">${map.indata }</span>
			</div>
		</div>
		<div class="selectRoom_Type">
		<c:forEach var="room" items="${map.roomList }">
			<div class="selectRoom_type_item" >
				<div class="room_img"><a ${room.CALENDAR_COUNT == 0 ? 'href=#' : '' } href='${cpath}/rooms/${map.indata }/${room.RO_HO_NAME }/${room.RO_ROOMTYPE}/'><img class="fill" src="http://182.212.181.172:9000/${room.RO_UPLOADFILE }" ></a></div>
				<div class="room_info">
					<div class="room_type">${room.RO_ROOMTYPE }</div>
					<div class="room_badType">
						<img src="https://cdn.dailyhotel.com/ux/icon-detail-bed.svg">
						<span>${room.RO_BADTYPE }</span>
					</div>
					<div class="room_limitPerson">
						<img src="https://cdn.dailyhotel.com/ux/icon-detail-people.svg">
						<span>${room.RO_LIMITPERSON }인 기준</span>
					</div>
					<div class="room_limitPerson">
						<span class="r">방 : ${room.CALENDAR_COUNT }개</span>
					</div>
					<div class="room_price">
						<span class="r">숙박</span>
						<span style="font-size: 16px; font-weight: 700; line-height: 1.06; color: #323232;">${room.CALENDAR_PRICE }원</span>
					</div>
				</div>
			</div>
		</c:forEach>	
		</div>
	</div>
</c:if>	

<c:if test="${empty map.roomList }">
	<div style="margin: auto; display:flex; justify-content: center; align-items: center; height: 1000px;"><h1>아직 준비중입니다.</h1></div>
</c:if>

</body>
</html>
