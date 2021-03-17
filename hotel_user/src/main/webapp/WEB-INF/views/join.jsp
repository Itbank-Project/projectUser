<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="joinHeader.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HotelJAVA | 회원가입</title>
<style>
.hidden {
		display: none;
	}
</style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>Member Join Form</h3>
			</div>
			<form id="joinForm">
					<p>
						<label>ID</label> 
						<input class="w3-input" type="text" id="userid" name="cu_id"  placeholder="ID"    required> 
						<span id="id_check"></span>
					</p>
					<p>
						<label>Password</label> 
						<input class="w3-input" id="userpw" name="cu_pw" type="password"  placeholder="Password" required>
						<span id="pw_check" class="w3-text-red"></span>
					</p>
					<p>
						<label>Password</label> 
						<input class="w3-input" id="userpw2" name="cu_pw2" type="password"  placeholder="Password Confirm" required>
						<span id="pw_check2" class="w3-text-red"></span>
					</p>
					<p>
						<label>이름</label> 
						<input class="w3-input" id="name" name="cu_name" type="text"  required>
					</p>
					<p>
						<label>성별</label> 
						<input type="radio" name="cu_gender" value="남성">남성
						<input type="radio" name="cu_gender" value="여성">여성
					</p>
					<p>
						<label>생년월일</label> 
						<span><input class="w3-input" id="birthYear" name="cu_birthYear" type="text"  placeholder="생년(4자)" required></span>
						<span><input class="w3-input" id="birthMonth" name="cu_birthMonth" type="text" placeholder="월" required></span>
						<span><input class="w3-input" id="birthDay" name="cu_birthDay" type="text" placeholder="일" required></span>
						<span id="age_check" class="w3-text-red"></span>
					</p>
					<p>
						<label>전화번호</label> 
						<input class="w3-input" id="pnum" name="cu_pnum" type="text" placeholder="전화번호 입력" required>
					</p>
					
					<div id="sendMailForm">
						<p>이메일 주소 입력</p>
						<p>
							<input type="email" name="cu_email" placeholder="이메일 전송" required>
							<button value="인증번호 전송">인증번호 전송</button>
						</p>
						<div id="sendMailMsg"></div>
					</div>
					<div id="authMailForm" class="hidden">
							<p>인증번호 입력</p>
							<p>
								<input type="text" id="auth" name="auth" placeholder="인증번호를 입력하세요" required>
								<button value="인증">인증</button>
							</p>
							<div id="authMailMsg"></div>
					</div>

					<p class="w3-center">
						<input type="submit" id="joinBtn" value="Join" disabled=false class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">
					</p>
				</form>
			</div>
	
		</div>
	
<script>
	const cpath = '${cpath}';
	// 아이디 중복 체크
$('#userid').blur(function(){
		// ajax를 이용하여 이미 가입된 id인지 판별하고 그 결과를 받아서 적절한 메시지를 idMsg의 innerHTML로 넣는다
		if($('#userid').val() == '' ){
			$('#id_check').text('아이디를 입력하세요');
			$('#id_check').css('color', 'red');
			$('#userid').focus();
			return;
		}
		else {
			$('#id_check').text('');
			var userid = document.getElementById('userid');
			
			const url = 'join/' + userid.value;
			
			const opt = {
					method: 'GET'		
			};
			fetch(url, opt)
			.then(resp => resp.text())
			.then(text => {
				const id = document.getElementById('id_check');
				id.innerHtml = '';
				if(text == '사용 가능한 ID입니다' ) {
					id.innerText = '사용 가능한 ID입니다';
					id.style.color = 'blue';
				}else {
					id.innerText = '이미 사용중인 ID입니다.';
					$('#id_check').css('color', 'red');
					$('#userid').select();					
				}
			});
	}
});
	
	
//비밀번호 체크

$('#userpw').blur( function () {
	var pw = document.getElementById('userpw').value;
	var pw_check = document.getElementById('pw_check');

	var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

	if($('#userpw').val() == ''){
		$('#pw_check').text('비빌번호를 입력하세요');
		$('#pw_check').css('color', 'red');
		return;
	}else if(true === reg.test(pw))  {
		pw_check.innerText = '';
	}else {
		pw_check.innerText = '비밀번호는 8자 이상이어야 하며, 숫자/대문자/소문자/특수문자를 모두 포함해야 합니다.';
		$('#pw_check').css('color', 'red');
		$('#userpw').select();	
	 }
});

//비밀번호 중복체크
$('#userpw2').blur(function() {
	var pw = document.getElementById('userpw').value;
	var pw2 = document.getElementById('userpw2').value;
	var pw_check2 = document.getElementById('pw_check2');
	if($('#userpw2').val() == ''){
		$('#pw_check2').text('비빌번호를 입력하세요');
		$('#pw_check2').css('color', 'red');
		$('#userpw2').focus();
		return;
	}else if(pw === pw2) {
		pw_check2.innerText = '';
	}else {
		pw_check2.innerText = '비밀번호가 일치하지 않습니다.';
		$('#pw_check2').css('color', 'red');
		$('#userpw2').select();	
	}
});
	


// 생년월일 나이 체크 20세 이상만 가능하게
$('#birthYear').blur(function() {
	var year = document.getElementById('birthYear').value;
	const date = new Date().getFullYear();
	const age = date - year;
	const age_check = document.getElementById('age_check');
	if($('#birthYear').val() == ''){
		$('#age_check').text('생년(4자)을 입력하세요');
		$('#age_check').css('color', 'red');
		$('#birthYear').focus();
		return;
	} else if(age < 20) {
		age_check.innerText = '20세 이상만 회원가입이 가능합니다.';
		$('#age_check').css('color', 'red');
		$('#birthYear').select();
	} else {
		age_check.innerText = '';
	}
}); 

	
// 이메일 인증	
// 인증메일 발송
const sendMailForm = document.getElementById('sendMailForm');
const sendMailMsg = document.getElementById('sendMailMsg');

const sendMailHandler = function(event) {
	
	event.preventDefault();
	
	const email = sendMailForm.querySelector('input[type="email"]');
	
	if(email.value != ''){		
	const url = cpath + '/mailto/' + email.value + '/';
	const opt = {
			method: 'GET',
	}
	fetch(url, opt) 
	.then(resp => resp.text())
	.then(text => {
		
		if(text.length == 128) {
			authMailForm.classList.remove('hidden');
			sendMailMsg.innerText = '입력한 이메일로 인증 번호를 전송했습니다';
			sendMailMsg.style.color = 'blue';
			sendMailMsg.style.fontWeight = 'bold';
		} else {
			sendMailMsg.innerText = '이메일을 확인하지 못했습니다';
			sendMailMsg.style.color = 'red';
			sendMailMsg.style.fontWeight = 'bold';
		}
	});
	}
}


sendMailForm.onclick = sendMailHandler;


// 인증번호 검증
const authMailForm = document.getElementById('authMailForm');
const authMailMsg = document.getElementById('authMailMsg');
	
const authHandler = function (event) {
	// form이 submit되면 ajax로 서버가 보낸 인증번호와 사용자가 입력한 인증번호가 일치하는지 체크하는 함수를 만들자

	event.preventDefault();

	let authResult;
	const userNumber = authMailForm.querySelector('input[name="auth"]');
	if($('#auth').val() == ''){
		$('#authMailMsg').text('인증번호를 입력하세요');
		$('#authMailMsg').css('color', 'red');
		$('#auth').focus();
	}else if(userNumber.value != ''){		
		const url = cpath + '/authCheck/' + userNumber.value + '/';
		const opt = {
		method: 'GET',	
	}
	fetch(url, opt) 
	.then(resp => resp.text())
	.then(text => {
		authMailMsg.innerText = '';
		if(text == 'true') {
			authMailMsg.innerText = '인증 성공!!';
			authMailMsg.style.color = 'blue';
			authMailMsg.style.fontWeight = 'bold';
			document.getElementById("joinBtn").disabled = false;
			authResult = true;
		
		} else {
			authMailMsg.innerText = '인증 실패 !!';
			authMailMsg.style.color = 'red';
			authMailMsg.style.fontWeight = 'bold';
			$('#auth').select();
			$('#auth').val() = '';
			document.getElementById("joinBtn").disabled = true;
			authResult = false;
		}
		
	});
}	

}

authMailForm.onclick = authHandler;

	
	
	// 회원가입
	const joinForm = document.getElementById('joinForm');

	const joinHandler = function (event) {
		const userid = document.getElementById('userid').value;
		const userpw = document.getElementById('userpw').value;		
		const userpw2 = document.getElementById('userpw2').value;	
		const userNumber = authMailForm.querySelector('input[name="auth"]');
		
		
		event.preventDefault();
		const formData = new FormData(joinForm);
				
		const ob = {};
		for ([key, value] of formData.entries()) {
			ob[key] = value;
		}
		console.log(ob);
		const json = JSON.stringify(ob);	// 객체를 json형식으로
		const url = cpath + '/join';	
		const opt = {
			method: 'POST',
			body: json,
			headers: {
				'Content-Type': 'application/json'
			}
		};
		fetch(url, opt)
		.then(response => response.text())		// 인자로 callback함수를 전달받는다
		.then(text => {
			console.log(text);
			if(text == '1') {
// 				alert('회원가입 성공 !!');
				location.href = "login";
			} else {
// 				alert('회원가입 실패 !!');
				location.href = "join";
			}
		
		});
	}
	
	joinForm.onsubmit = joinHandler;
	
	
</script>
</body>
</html>