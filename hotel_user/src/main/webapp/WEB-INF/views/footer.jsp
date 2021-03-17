<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${cpath }/resources/css/footer.css">
	<body>
		<div style="width: 750px; margin: 0 auto;">
			<div class="footer-fixed">
				<div class="footer-item">
					<div class="footer-item-inner">
						<a href="${cpath }/">
							<div id="icon" class="iconWrapper">
								<div id="greyIcon" class="">
									<img width="30"
										src="https://cdn.dailyhotel.com/ux/tapbar-ic-home-off.svg"
										alt="">
								</div>
								<div id="pinkIcon" class="hidden">
									<img width="30"
										src="https://cdn.dailyhotel.com/ux/tapbar-ic-home-on.svg"
										alt="">
								</div>
							</div>
							<div id="footer-text" style="font-size: 10px;">홈</div>
						</a>
					</div>
				</div>
				<div class="footer-item">
					<div class="footer-item-inner">
						<a href="${not empty login ? 'myPage' : 'login'}">
							<div id="icon" class="iconWrapper">
								<div id="greyIcon" class="">
									<img width="30"
										src="https://cdn.dailyhotel.com/ux/tapbar-ic-mydaily-off.svg"
										alt="">
								</div>
								<div id="pinkIcon" class="hidden">
									<img width="30"
										src="https://cdn.dailyhotel.com/ux/tapbar-ic-mydaily-on.svg"
										alt="">
								</div>
							</div>
							<div id="footer-text" style="font-size: 10px;">마이</div>
						</a>
					</div>
				</div>
				<div class="footer-item">
					<div class="footer-item-inner">
						<a href="${cpath }/moreDetails">
							<div id="icon" class="iconWrapper">
								<div id="greyIcon" class="">
									<img width="30"
										src="https://cdn.dailyhotel.com/ux/tapbar-ic-etc-off.svg"
										alt="">
								</div>
								<div id="pinkIcon" class="hidden">
									<img width="30"
										src="https://cdn.dailyhotel.com/ux/tapbar-ic-etc-on.svg"
										alt="">
								</div>
							</div>
							<div id="footer-text" style="font-size: 10px;">더보기</div>
						</a>
					</div>
				</div>
			</div>
		</div>
		
	</body>
	