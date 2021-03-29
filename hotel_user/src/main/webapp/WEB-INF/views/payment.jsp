<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="cpath">${pageContext.request.contextPath }</c:set>   
<link rel="stylesheet" href="${cpath }/resources/css/payment.css" > 
</head>
<body>
<div class="paymentMainDiv">

		<div class="payHeader">
			<div><a href="javascript:history.back();"><img src="${cpath }/resources/img/arrow.jpg"></a></div>
        	<h3>결제하기</h3>
        </div>
        <div class="nameInsert">
            <div class="hotelName">${map.roomList.ro_ho_name}</div>
            <div>${map.roomList.ro_roomtype}</div>
        </div>

        <div class="checkInOutDiv">
            <div class="checkInOutDiv_div">
                <div class="checkInOut" >체크인</div>
                <div>${map.dayStart } ${map.roomList.ho_check_in }</div>
            </div>

            <div>
                <div class="checkInOut">체크아웃</div>
                <div>${map.dayEnd } ${map.roomList.ho_check_out }</div>
            </div>
        </div>

        <div class="reservationInfo">
            <div class="infoDiv">
                <div class="reservationName">예약자 정보</div>
                <div></div>
            </div>

            <div class="infoDiv">
                <div class="personInfo">예약자명</div>
                <div>${login.cu_name }</div>
            </div>

            <div class="infoDiv">
                <div class="personInfo">연락처</div>
                <div>${login.cu_pnum }</div>
            </div>

            <div class="infoDiv" >
                <div class="personInfo">이메일</div>
                <div>${login.cu_email }</div>
            </div>
        </div>

            <div class="otherPerson">
                <input type="checkbox">
                <div>예약자와 투숙자가 다를 경우 체크해주세요.</div>
            </div>

        <div class="howToVisitDiv">
            <div>방문 방법</div>
            <div class="visitSelect">
                <div><button class="howToVisit">도보</button></div>
                <div><button class="howToVisit">차량</button></div>
            </div>
        </div>
        
        <div class="discountMethodSelect">할인수단 선택 및 결제금액</div>

        <div class="discountMethod">
            <div>할인 수단은 중복 사용 할 수 없습니다.</div>

            <div class="infoDiv">
                <div class="couponUse">할인쿠폰 사용</div>            
                <div class="notUse">사용 안함 ></div>
            </div>

            <div class="infoDiv" >
                <div class="couponUse">적립금 사용</div>
                <div class="notUse">보유 : 0원 ></div>
            </div>
        </div>

        <div class="amountOfpayment">
            <div>결제금액</div>
            <div><fmt:formatNumber value="${map.result }" pattern="#,###" />원</div>
        </div>

        <div class="methodOfpayment">결제수단</div>

        <div class="guidance">혜택안내</div>

        <div class="kakaopay">
            <img src="${cpath }/resources/img/kakaopay.jpg">
        </div>
        
        <div class="kakaopayImg">
            <img src="https://cdn.dailyhotel.com/ux/kakaopay-on.svg">
            <div>카카오페이 결제</div>
        </div>

        <div class="paymentInfo">결제 정보</div>

        <div class="infoDiv">
            <div>예약 금액</div>
            <div>(총 ${map.fewDay}박)<fmt:formatNumber value="${map.result }" pattern="#,###" />원</div>
        </div>

        <div class="discount">
            <div class="infoDiv">
                <div>할인 금액</div>
                <div>0원</div>
            </div>
        </div>

        <div class="infoDiv">
            <div>총 결제금액(VAT 포함)</div>
            <div class="totalAmount"><fmt:formatNumber value="${map.result }" pattern="#,###" />원</div>
        </div>

        <div class="rule">취소 규정 및 동의사항</div>

        <div class="guidance">취소 및 환불 규정</div>

        <div class="refundPolicy">
            <ul>
                <li>
                    <span>2021.04.28(수) 16:59</span>까지 <span>무료</span>로 예약 취소를 할 수 있는 상품입니다. 이후 예약을 변경하거나 취소할 경우 환불 수수료가 부과될 수 있습니다. 
                </li>
                <li>
                    예약을 계속 진행하시려면 필수사항 동의 후 [결제하기] 버튼을 눌러주세요.
                </li>
            </ul>
        </div>

        <div class="agreeDiv">
            <div>
                <input id="agreeCheck" type="checkbox">
            </div>
            <div>개인정보 제 3자 제공 동의 (필수)</div>
        </div>

        <button id="paymentBtn">결제하기</button>

    </div>

	<div>${hotelDTO.ad_email }</div>

    
    <div class="payment_modal hidden">
        <div class="payment_modal_overlay"></div>   <!--나머지 배경 어둡게 만드는 영역-->
        <div class="payment_modal_content">         <!--표시하고 싶은 내용-->
            <div class="customerCheck">고객님, 확인하셨나요?</div>
            <ul>
                <li class="modal_li">선택하신 상품의 
                    <span class="modal_span">취소 및 환불 규정을 다시 한번 확인</span>해주시기 바랍니다.
                </li>
                <li class="modal_li">환불 불가 표시 상품의 경우 규정과 상관없이 변경, 취소, 환불이 
                    <span class="modal_span">절대 불가</span>합니다.
                </li>
                <li class="modal_li">'체크인 시 배정'의 경우 베드 타입을 보장하지 않으며 2인이 투숙할 수 있는 객실로 배정됩니다.</li>
                <li class="modal_li">미성년자는 보호자 동반시 투숙 가능합니다.</li>
                <li class="modal_li">취소 규정 등 위 내용에 동의하시면 버튼을 눌러 결제를 진행해 주세요.</li>
            </ul>
            <div class="twoBtn">
                <button id="closeBtn">취소</button>
                <form method="post">
                	<input type="hidden" name="re_indate" value="${map.dayStart }" >
                	<input type="hidden" name="re_outdate" value="${map.dayEnd }" >
                	<input type="hidden" name="re_daycount" value="${map.fewDay }"> 
                	<input type="hidden" name="re_payment" value="${map.result }">
                	<input type="hidden" name="re_calendar_pk" value="${map.roomList.calendar_pk }">
                	<input type="hidden" name="re_cu_id" value="${login.cu_id }">
                	<input type="hidden" name="ad_email" value="${hotelDTO.ad_email }">                 
                	<button type="submit" id="progressBtn" >동의하고 결제 진행</button>
 				</form>	           
            </div>
        </div>
    </div>


<script>
    const paymentBtn = document.getElementById('paymentBtn');
    const agreeCheck = document.getElementById('agreeCheck');

    const modal = document.querySelector('.payment_modal');
    const closeBtn = document.getElementById('closeBtn');
    const progressBtn = document.getElementById('progressBtn');

    // 결제하기 버튼 눌렀을 때, 개인정보제공 동의 체크 안되어있으면 alert띄우기
    paymentBtn.onclick = function(){
        if(agreeCheck.checked == false){
            alert('개인정보 제 3자 제공 동의에 동의해주세요');
        }
        else{
            modal.classList.remove('hidden');
        }
    }
    closeBtn.onclick = function() {
        modal.classList.add('hidden');
    }
    
    progressBtn.onclick = function(){
        alert('결제가 완료되었습니다.');
        modal.classList.add('hidden');
    }

</script>

</body>
</html>
