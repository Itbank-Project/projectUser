<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>인포윈도우 생성하기</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        header {
            text-align: center;
        }
        .back {
            width: 768px;
            height: 500px;
            margin: auto;
            display: flex;
            border-bottom: 1px solid black;
            height: 43px;
        }
        .back > a > img {
            width: 20px;
            height: 20px;
            padding-top: 11px;
            padding-bottom: 11px;
           
        }
       
        .back > h1 {
            font-size: 16px;
            color: #4D4D4D;
            width: 576px;
            text-align: center;
            padding-top: 11px;
            padding-bottom: 11px;
            padding-right: 96px;
            padding-left: 96px;
        }
        .footer {
            max-width: 768px;
            width: 100%;
            margin: auto;
            display: flex;
            height: 43px;
        }
        .footer > h1 {
            font-size: 16px;
            color: #4D4D4D;
            width: 576px;
            text-align: left;
            padding-top: 11px;
            padding-bottom: 11px;
            padding-right: 96px;
            padding-left: 96px;
        }
        .footer > input {
            width: 70.61px;
            white-space: nowrap;
            padding: 8px 10px;
            border: 1px solid #dcdcdd;
            border-radius: 1px;
            color: #4d4d4d;
            font-size: 13px;
            line-height: .92;
            margin-right: 10px;
        }
    </style>
</head>
<header>
    <div class="back">
        <a href="hotelInfo.html"><img src="https://cdn.dailyhotel.com/ux/icon-close-x.svg" alt></a>
        <h1>지도</h1>
    </div>
</header>
<body>
<div id="map" style="width: 768px;height:550px; margin: auto;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c5f744e54d8dc7792dc155acb74f0d18"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(35.19793556509012, 129.2280860981304), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(35.19793556509012, 129.2280860981304); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});

// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	var iwContent = '<div style="padding:5px;">부산광역시 기장군 기장읍 기장해안로 268-32</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(35.19793556509012, 129.2280860981304); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(map, marker); 
</script>
<br>
<footer>
    <div class="footer">
        <h1>부산광역시 해운대구 우동 센텀2로 25 센텀드림월드 KG아이티뱅크 11층</h1>
        <input type="button" value="주소 복사">
    </div>
</footer>
</body>
</html>