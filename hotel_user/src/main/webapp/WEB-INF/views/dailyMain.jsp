<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Train+One&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">
<style>

@-webkit-keyframes fadein {
	    from {
	        opacity:0.1;
	    }
	    to {
	        opacity:1;
	    }
	}
	
@-webkit-keyframes fadein {
	    from {
	        opacity:0.1;
	    }
	    to {
	        opacity:1;
	    }
	}
	
	
.gallery_table {
	width: 1590px;
	table-layout: fixed;
	height: 100%;
	max-width: 100%;
}

.item_gallery {
	position: relative;
	padding: 8px;
	border-radius: 0px;
	display: table-cell;
	vertical-align: top;
}

.item_container {
	display: block;
}

.hotel_img {
	width: 384px;
	min-height: 375px;
	background-size: cover;
	background-position: center;
	border-radius: 10px;
}

.hotel_text {
	padding: 10px 0 10px 0;
	display: table;
	width: 100%;
	height: 100%;
	text-align: left;
	vertical-align: middle;
	border-radius: 10px;
	color: black;
	font-size: 15pt;
	font-weight: bold;
}

.hotel_title {
	font-size: 24px;
	color: #212121;
	line-height: 1.6;
}

.hotelName {
	font-size: 20px;
	color: #212121;
	line-height: 1.6;
}

.hotelAddress {
	font-size: 16px;
	color: #eb4d4b;
}

.hotel_des {
	color: #636e72;
}

.hotel_body {
	font-size: 12px;
	color: #999;
}

.main_input_search {
	/* background-image:url(https://cdn1.iconfinder.com/data/icons/hawcons/32/698627-icon-111-search-256.png); */
	background-position: 13px center;
	background-size: contain;
	background-repeat: no-repeat;
	background-color: transparent;
	margin-top: -30px;
	margin-bottom: 5%;
	
	border: none;
	border-bottom: 3px solid #f8585b;
	width: 390px;
	height: 40px;
	outline: none;
	font-weight: bold;
	color: #28cae8;
	/* text-indent: 60px; */
}

.main_input_search:focus {

	/* background-position: 0px center;
	text-indent: 0; */
}

input::placeholder {
	color: #ffffff;
}


.img-wrap {
	position: absolute;
}

.main-text {
	position: relative;
}

.blank {
	height: 50vh;
}

.img-wrap {
	width: 100%;
	height: 95vh;
	overflow: hidden;
}

.section {
	min-width: 100%;
}

.king-section {
	width: inherit;
}

.top {
	margin-bottom: 28%;
	position: absolute;
}

.main-input {
	position: relative;
	width: 600px;
	margin: 0 auto;
	text-align: center;
}

.main-text {
	width: 100%;
}

.main-text-inner {
	display: flex;
	/* width: 1000px; */
	margin: 0 auto;
	align-items: center;
	justify-content: center;
}

.section-blank {
	height: 200px;
}

.section-blank2 {
	height: 100px;
}

.section-blank3 {
	height: 1000px;
	max-height: 40%;
}

.section-blank4 {
	height: 50px;
}

hidden {
	display: none;
}

/*------------------------*/

ul,li{ list-style: none; }

.wrap{
    width: 100%;
    position: relative;
}

.wrap1{
    width: 100%;
    position: relative;
}
.wrap-in{ 
    width: 1200px;
    margin: 0 auto;
}

.agree_daddy4 {
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    display: flex;
    /* display: none; */
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    z-index: 99;
    background-color: rgba(0, 0, 0, 0.15);
}
.agree_daddy1 {
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    display: flex;
    /* display: none; */
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    z-index: 99;
    background-color: rgba(0, 0, 0, 0.15);
}
.agree_mom1 {
    margin: 120px auto;
    border-radius: 2px;
    width: 700px;
    background-color: rgb(255, 255, 255);
    z-index: 8;
    box-sizing: border-box;
    opacity: 1;
}
.agree_mom4 {
    margin: 120px auto;
    border-radius: 2px;
    width: 700px;
    background-color: rgb(255, 255, 255);
    z-index: 8;
    box-sizing: border-box;
    opacity: 1;
}

.agree_div {
    position: relative;
    height: 100%;
    display: flex;
    flex-direction: column;
}

.agree_div_top {
    border-radius: 2px 2px 0px 0px;
    padding: 42px 42px 36px;
    position: relative;
    opacity: 1;
}

.agree_div_body {
    padding-top: 30px;
    padding-bottom: 42px;
    margin: 0px 42px;
    position: relative;
    height: auto;
    display: block;
    -webkit-box-align: center;
    align-items: center;
    border-top: 1px solid rgb(238, 238, 238);
    overflow-y: auto;
}

.agree_title {
    font-size: 26px;
    line-height: 38px;
    padding-right: 48px;
    display: inline-block;
    width: 100%;
    font-weight: 700;
}

.agree_x_button {
    line-height: 38px;
    top: 38px;
    right: 42px;
    position: absolute;
}

.agree_x4 {
    position: relative;
    cursor: pointer;
    background: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij48cGF0aCBmaWxsPSIjMjIyIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMy40NjYgMTJsNi4yMy02LjIzYTEuMDM2IDEuMDM2IDAgMTAtMS40NjYtMS40NjZMMTIgMTAuNTM0bC02LjIzLTYuMjNBMS4wMzYgMS4wMzYgMCAxMDQuMzA0IDUuNzdsNi4yMyA2LjIzLTYuMjMgNi4yM2ExLjAzNiAxLjAzNiAwIDEwMS40NjYgMS40NjZsNi4yMy02LjIzIDYuMjMgNi4yM2ExLjAzNSAxLjAzNSAwIDEwMS40NjYtMS40NjVMMTMuNDY2IDEyeiIvPjwvc3ZnPg==") center center / cover no-repeat;
    overflow: hidden;
    padding: 15px 15px;
}
.agree_x1 {
    position: relative;
    cursor: pointer;
    background: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij48cGF0aCBmaWxsPSIjMjIyIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMy40NjYgMTJsNi4yMy02LjIzYTEuMDM2IDEuMDM2IDAgMTAtMS40NjYtMS40NjZMMTIgMTAuNTM0bC02LjIzLTYuMjNBMS4wMzYgMS4wMzYgMCAxMDQuMzA0IDUuNzdsNi4yMyA2LjIzLTYuMjMgNi4yM2ExLjAzNiAxLjAzNiAwIDEwMS40NjYgMS40NjZsNi4yMy02LjIzIDYuMjMgNi4yM2ExLjAzNSAxLjAzNSAwIDEwMS40NjYtMS40NjVMMTMuNDY2IDEyeiIvPjwvc3ZnPg==") center center / cover no-repeat;
    overflow: hidden;
    padding: 15px 15px;
}

button {
    border: 0px;
    padding: 0px;
    display: inline-block;
    box-sizing: border-box;
}

table {
    display: table;
}

.agree_tbody {
    border: 1px solid rgb(238, 238, 238);
}

.agree_tr {
    border-bottom: 1px solid rgb(238, 238, 238);
    text-align: left;
}

.agree_th {
    font-size: 14px;
    font-weight: 700;
    background-color: rgb(238, 238, 238);
    padding: 12px;
    width: 150px;
    color: rgba(68, 68, 68);
}

.agree_td {
    font-size: 12px;
    line-height: 18px;
    padding: 12px;
}

.section a {
	color: black;
}
</style>

<body style="margin: 0;">
	<div class="king-section">
		<div class="section top">
			<div class="img-wrap">
				<img src="${cpath}/resources/img/main_img.jpg"
					style="animation: fadein 3s; -webkit-animation: fadein 3s; width: 100%;">
			</div>
			<div class="section-blank"></div>
			<div class="main-text">
				<div class="main-text-inner">
					<div data-aos="flip-left" data-aos-duration="1000" style="font-family: 'Train One', cursive; color: #f8585b; font-weight: bold; font-size: 50pt; text-align: center;">stay,</div>
					<div data-aos="flip-up" data-aos-duration="1000" style="font-family: 'Train One', cursive; color: #f8585b; font-weight: bold; font-size: 50pt; text-align: center; margin-left: 15px;">what you want</div>
				</div>
			</div>
			<div class="section-blank2"></div>
			<div class="main-input" data-aos="zoom-in" data-aos-duration="500">
				<div>
					<div>
						<input class="main_input_search" id="search" onkeyup="filter()" type="text"
						placeholder="Where are you going?" style="font-family: 'Black Han Sans', sans-serif; font-size: 21pt;">
					</div>
					<div style="background-color: #f8585b; width: 50px; height: 50px; border-radius: 100px; position: relative; margin-left: 450px;
					top: -85px; align-content: center; justify-content: center;"><img style="width: 28px; margin: 12px 10px 0px 9px;" src="${cpath }/resources/img/main-search-btn.png"></div>
				</div>
				<div class="search_result">
					<div class="hotel-list hotel-list-scroll">
						<c:forEach var="dto" items="${map.list}">
							<div class="hotel-section hidden"><!-- hidden -->
								<div class="hotel-section-info" style="width: 420px; background-color: rgba( 255, 255, 255, 0.5 ); margin: 0 auto;">
									<a href="${cpath }/hotelView/${dto.HO_NAME}/">
									<div>
										<strong class="hotelName" style="font-weight: 600;">"${dto.HO_NAME }"</strong>
									</div>
									<div class="hotelAddress">'${dto.HO_ADDRESS }'</div>
									<span class="hotel_body">
										<div class="hotel_des" style="margin-top:5px; height: 55px; width: 350px; margin: 0 auto;">
											<span style="word-break: break-all;">${dto.HO_DESCRIPTION }</span>
										</div>
									</span>
									</a>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div class="section-blank3"></div>

		<div class="section" style="position: relative;">
		
			<div style="height: 210px; width: 1590px; margin: 0 auto;">
			
					<div style="font-family: 'Noto Sans KR', sans-serif; font-size: 27pt; font-weight: bold;">????????? ?????????</div>
					
					<div>
						<div style="display: flex; margin-top: 20px;">
							<div>
							<a href="https://www.airbnb.co.kr/s/%EC%84%9C%EC%9A%B8/homes?place_id=ChIJzWXFYYuifDUR64Pq5LTtioU&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation">
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/seoul.jpg">
									<div style="margin: 15px 228px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>?????? 5?????? ??????</span>
									</div>
								</div>
							</a>
							</div>	
							
							<div>	
							<a href="https://www.airbnb.co.kr/s/%EB%8C%80%EA%B5%AC/homes?place_id=ChIJ1a3vsrjjZTURMC44oCngkro&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation">
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/daegu.jpg">
									<div  style="margin: 15px 208px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>?????? 1.5?????? ??????</span>
									</div>
								</div>
							</a>
							</div>	
							<div>
							<a href="https://www.airbnb.co.kr/s/%EC%9A%B8%EC%82%B0/homes?place_id=ChIJgd6y4osuZjURATHZM3P6g3A&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation">	
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/ulsan.jpg">
									<div  style="margin: 15px 226px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>?????? 1?????? ??????</span>
									</div>
								</div>
							</a>
							</div>	
							
							<div>
							<a herf="https://www.airbnb.co.kr/s/%EB%8C%80%EC%A0%84/homes?place_id=ChIJAWZKutdIZTURtdOKmJ3WltE&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation">
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/daejeon.jpg">
									<div  style="margin: 15px 0px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>?????? 3.5?????? ??????</span>
									</div>
								</div>
							</a>
							</div>
						</div>
						
						<div style="display: flex; margin-top: 10px;">
							<div>
							<a href="https://www.airbnb.co.kr/s/%EB%B6%80%EC%82%B0%EA%B4%91%EC%97%AD%EC%8B%9C/homes?tab_id=home_tab&refinement_paths%5B%5D=%2Fhomes&flexible_trip_dates%5B%5D=april&flexible_trip_dates%5B%5D=may&flexible_trip_lengths%5B%5D=weekend_trip&date_picker_type=calendar&query=%EB%B6%80%EC%82%B0%EA%B4%91%EC%97%AD%EC%8B%9C&place_id=ChIJNc0j6G3raDURpwhxJHTL2DU&source=structured_search_input_header&search_type=autocomplete_click">
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/busan.jpg">
									<div style="margin: 15px 225px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>?????? 0?????? ??????</span>
									</div>
								</div>
							</a>
							</div>	
							
							<div>
							<a href="https://www.airbnb.co.kr/s/%EC%9D%B8%EC%B2%9C/homes?place_id=ChIJR4ITliVveTURQmG3LJD9N30&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation">	
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/incheon.jpg">
									<div  style="margin: 15px 206px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>?????? 5.5?????? ??????</span>
									</div>
								</div>
							</a>
							</div>	
							
							<div>
							<a href="https://www.airbnb.co.kr/s/%EA%B4%91%EC%A3%BC/homes?place_id=ChIJr6f1ASOJcTURSPUlAe3S9AU&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation">
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/gwangju.jpg">
									<div  style="margin: 15px 212px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>?????? 3.5?????? ??????</span>
									</div>
								</div>
							</a>
							</div>	
							
							<div>	
							<a href="https://www.airbnb.co.kr/s/%EC%A0%9C%EC%A3%BC/homes?tab_id=home_tab&refinement_paths%5B%5D=%2Fhomes&flexible_trip_dates%5B%5D=april&flexible_trip_dates%5B%5D=may&flexible_trip_lengths%5B%5D=weekend_trip&date_picker_type=calendar&source=structured_search_input_header&search_type=search_query">
								<div style="display: flex;"><img style="width: 65px; border-radius: 10px;" src="${cpath }/resources/img/jeju.jpg">
									<div  style="margin: 15px 0px 0px 15px;">
										<span><b>??????</b></span>
										<br>
										<span>???????????? 1?????? ??????</span>
									</div>
								</div>
							</a>
							</div>
						</div>
					</div>
					
				</div>
		</div>
		
		<div class="section show-hotel" style="position: relative;">
			<div class="gallery_table" style="margin: 0 auto; align-content: center;">
				<p style="font-size: 30pt; font-weight: bold; font-family: 'Noto Sans KR', sans-serif; text-align: left;">
					<strong>Stays</strong>
				</p>
				<div class="gallery_container" style="text-align: left; width: 1600px;">
					<c:forEach var="map" items="${map.list}">
						<div class="item_gallery" style="padding: 0; margin-right: 25px; margin-bottom: 16px; width: 370px; display: inline-block;">
							<a href="${cpath }/hotelView/${map.HO_NAME}/" class="item_container">
								<div class="hotel_img" class="content" style="background-image: url(http://182.212.181.172:9000/${map.HO_UPLOADFILE});"></div>
								<div class="hotel_text" style="width: 286px;">${map.HO_NAME }
									<%-- <p class="hotel_title">
										<strong style="font-weight: 600;">"${map.HO_NAME }"</strong>
									</p> --%>
									<%-- <span class="hotel_body">
										<div class="hotel_des" style="height: 35px;">
											<span>${map.HO_DESCRIPTION }</span>
										</div>
										<button style="cursor: pointer; border-radius: 24px; padding: 6px 24px; background-color: #585858; margin-top:50px; color: white;">???????????????+</button>
									</span> --%>
								</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	
	<div class="section-blank4"></div>
	
	<!-- ?????? '????????? ??????????????????' -->
	<div class="wrap hidden">
        <div class="wrap-in">
            <div class="agree_daddy4">
                <div class="agree_mom4">
                    <div>
                        <div class="agree_div">
                            <div class="agree_div_top">
                                <div class="agree_title">???????????????????????????</div>
                                <div class="agree_x_button">
                                    <button class="agree_x4"></button>
                                </div>
                            </div>
                            <div class="agree_div_body">
                                <table class="agree_table">
                                    <tbody class="agree_tbody">
                                        <tr rowspan="1" class="agree_tr">
                                            <th colspan="1" class="agree_th">???????????? ?????? ??? ????????????</th>
                                            <td colspan="1" class="agree_td">JAVA??? ?????????, ?????????, ??????????????? ?????? ????????? ?????? ??????</td>
                                        </tr>
                                        <tr rowspan="1" class="agree_tr">
                                            <th colspan="1" class="agree_th">?????? ??????</th>
                                            <td colspan="1" class="agree_td">?????? ?????? ??????, ????????? ??????</td>
                                        </tr>
                                        <tr rowspan="1" class="agree_tr">
                                            <th colspan="1" class="agree_th">?????? ?????? ?????? ??? ????????????</th>
                                            <td colspan="1" class="agree_td">???????????? ???????????? ????????? ????????? ??? ????????? ????????? ??????
                                                (???, ?????? ????????? ????????? ????????? ????????? ????????? ?????? ?????? ?????? ????????? ?????? ??????)
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- ?????? '????????????????????????' -->
    <div class="wrap1 hidden">
        <!-- ?????? ?????? -->
        <div class="wrap-in">
            <!-- ???????????? -->
            <div class="agree_daddy1">
                <div class="agree_mom1">
                    <div class="agree_div">
                        <div class="agree_div_top">
                            <div class="agree_title">????????????????????????</div>
                            <div class="agree_x_button">
                                <button class="agree_x1"></button>
                            </div>
                        </div>
                        <div class="agree_div_body">
                            <table class="agree_table">
                                <tbody class="agree_tbody">
                                    <tr rowspan="1" class="agree_tr">
                                        <th colspan="1" class="agree_th">?????? ?????? ???????????? ??????</th>
                                        <td colspan="1" class="agree_td">
                                            * ??? ??????????????? ??????(?????? ??? ?????? ???)??? ???????????? ?????????. ???????????? ????????? ?????? ??? ?????? ??????,
                                            ?????? ??????, ???????????? ?????? ????????? ??? ?????????, ?????? ?????? ?????? ????????? ?????? ??? ?????? ??????????????? ????????????
                                            ??????????????? ??????????????? ?????? ????????? ????????? ??????????????? ????????????.<br><br>
                                            * ?????? ??? ?????? ?????? ????????? ????????? ??????, ?????? ?????? ?????? ?????? ?????? ????????? ?????? ?????? ????????? ????????? ???
                                            ?????????, ?????? ?????? ?????? ????????? ????????? ??? ?????? ??????????????? ????????????.<br><br>
                                            * ???????????? ?????? ??? ?????????????????? ??? ?????? ????????? ?????? ????????????(??? 19??? ?????? ?????????)??? ?????? ????????? ??????
                                            ??????, ??????????????? ?????? ?????? ????????? ????????? ??? ????????? ???????????? ????????? ????????????. ?????? ?????? ????????? ?????????
                                            ???????????? ????????? ????????? ?????? ?????? ??? ????????? ???????????????.<br><br>
                                            * ??? ???????????? ????????? ????????? ?????? ?????? ???????????????. ???????????? ??? ?????? ???????????? ?????? ????????? ?????? ?????????
                                            ????????? ?????? ??? ?????????, ?????? ?????? (???)???????????? ??? ????????? ?????? ????????????.<br><br>
                                            * ??????????????? ?????? ????????????(?????????, ?????? ???)??? ??????????????? ????????????, ?????? ?????? ????????? ???????????? ???????????????
                                            ????????????????????? (???)???????????? ?????? ????????? ??? ?????? ???????????? ???????????? ????????? ????????????.
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot class="agree_tfoot">
                                    <td colspan="2">
                                        <em>??? ???????????????????????? ????????? ??? ?????????, ????????? ?????? ????????? ????????? ???????????????.</em>
                                    </td>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
	
	<footer style="height: 100%; color: #919191; background-color: #f7f7f7;">
		<div style="width: 100%; margin-bottom: 40px;">
			<div style="border-top: 1px solid #dadada; width: 100%; margin: 0 auto;"></div>
		</div>
		<div class="footer" style="width: 1590px; margin: 0 auto;">
			<div class="footer_section" style="display: flex; margin-bottom: 20px;">
				
				<div style="margin-right: 500px; margin-left: 5px;">
						<div style="font-size: 11pt;"><b>??????</b></div><br>
						<div style="font-size: 10pt;">JAVA ?????? ??????</div><br>
						<div style="font-size: 10pt;">?????????</div><br>
						<div style="font-size: 10pt;">????????? ??????</div><br>
						<div style="font-size: 10pt;">JAVA ?????????</div><br>
						<div style="font-size: 10pt;">JAVA ???????????? ????????????</div><br>
						<div style="font-size: 10pt;">????????????</div><br>
						<div style="font-size: 10pt;">????????? ??????</div><br>
					</div>
					
					<div style="margin-right: 500px;">
						<div style="font-size: 11pt;"><b>????????????</b></div><br>
						<div style="font-size: 10pt;">????????? ??? ?????????</div><br>
						<div style="font-size: 10pt;">?????????</div><br>
						<div style="font-size: 10pt;">?????? ????????? ?????? ??????</div><br>
						<div style="font-size: 10pt;">????????? ??????</div><br>
						<div style="font-size: 10pt;">JAVA.org</div><br>
					</div>
					
					<div>
						<div style="font-size: 11pt;"><b>JAVA ??????</b></div><br>
						<div style="font-size: 10pt;">JAVA ????????? 19 ?????? ??????</div><br>
						<div style="font-size: 10pt;">????????? ??????</div><br>
						<div style="font-size: 10pt;">?????? ?????? ??????</div><br>
						<div style="font-size: 10pt;">JAVA ?????? ?????? ??????</div><br>
						<div style="font-size: 10pt;">????????? ??????</div><br>
						<div class="agreeAd" style="cursor: pointer; font-size: 10pt;">???????????????????????????</div><br>
						<div class="agreeGps" style="cursor: pointer; font-size: 10pt;">????????????????????????</div>
					</div>
			</div>
		</div>
			<div style="border-top: 1px solid #dadada; width: 100%; text-align: center;">
				<div style="height: 40px;"></div>
				<div style="width: 1590px; margin: 0 auto;">(???) JAVA??? ???????????? ??????????????? ??????????????? ???????????? ????????? ????????? ??????, ?????? ??? ?????? ?????? ????????? ????????? ????????? ??? ??????????????? ????????????.</div>
				<div style="height: 20px;"></div>
				<div>Copyright ??? JAVA All rights reserved.</div>
			</div>
		<div style="height: 20px;"></div>
	</footer>
	
	<script>
		// ??????????????????????????? ????????????
		agreeAd = document.querySelector('.agreeAd');
		wrap = document.querySelector('.wrap');
		close = document.querySelector('.agree_x4');
		
		agreeAd.onclick = function(){
			wrap.classList.remove('hidden');
		}
		
		close.onclick = function(){
			wrap.classList.add('hidden');
		}
		
		// ???????????????????????? ????????????
		agreeGps = document.querySelector('.agreeGps');
		wrap1 = document.querySelector('.wrap1');
		close1 = document.querySelector('.agree_x1');
		
		agreeGps.onclick = function(){
			wrap1.classList.remove('hidden');
		}
		
		close1.onclick = function(){
			wrap1.classList.add('hidden');
		}
		
	</script>
	
	
	
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

	<script>
		AOS.init();
	</script>

	<script>
		function filter() {
			let search = document.getElementById("search").value.toLowerCase();
			let hotelSection = document.getElementsByClassName("hotel-section");

			for (let i = 0; i < hotelSection.length; i++) {
				hotelName = hotelSection[i].getElementsByClassName("hotelName");
				hotelAddress = hotelSection[i].getElementsByClassName("hotelAddress");
				hotel_section = document.querySelector('.hotel-section');
				console.log(hotelName);

				if (hotelName[0].innerHTML.toLowerCase().indexOf(search) != -1 || hotelAddress[0].innerHTML.toLowerCase().indexOf(search) != -1) {
					hotel_section.classList.remove('hidden');
					hotelSection[i].style.display = "block";
				} else {
					hotel_section.classList.add('hidden');
					hotelSection[i].style.display = "none";
				}

				if (hotelName[0].innerHTML.toLowerCase().indexOf(search) != 0 || hotelAddress[0].innerHTML.toLowerCase().indexOf(search) != 0) {

				} else {
					hotelSection[i].style.display = "none";
				}
			}
		}
	</script>

</body>
</html>
