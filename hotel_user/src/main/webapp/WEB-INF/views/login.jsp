<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" >${pageContext.request.contextPath }</c:set>    
<%@ include file="header.jsp" %>
<%@ include file="footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		body{
			background-image: url('${cpath }/resources/img/hotelLogo_draw.png');
			background-repeat: no-repeat; 
			background-size: cover; 
		}
        a{
            text-decoration: none;
            color: inherit;
        }
        
        .login{
            width: 500px;
            height: 40px;
        }

        .find_info{
            font-size: 14px;
            line-height: 14px;
            padding-top: 18px;
            text-align: center;
            color: #8e8e8e;
        }

    </style>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<div style="width: 768px; margin: auto; justify-content: center; align-items: center; text-align: center; margin-top: 100px;">
    <form id="loginForm" method="POST">
        <p><input class="login" id="userId" type="text" name="cu_id" placeholder="아이디"></p>
        <p><input class="login" id="userPw" type="password" name="cu_pw" placeholder="비밀번호"></p>
        <div id="result"></div>
        <p><input class="login" type="submit" value="로그인"></p>
        <p><input type="checkbox" id="idSaveCheck">Remember me </p>
    </form>
    

    <div class="find_info">
        <a href="${cpath }/findID">아이디 찾기</a>
        <span>|</span>
        <a href="${cpath }/findPW">비밀번호 찾기</a>
        <span>|</span>
        <a href="${cpath }/join">회원가입</a>
    </div>
    </div>
	
	<script type="text/javascript">
		const cpath = '${pageContext.request.contextPath }';
		const loginForm = document.getElementById('loginForm');
		const result = document.getElementById('result');
		
		const loginHandler = function(event){
			event.preventDefault();
			const loginFormData = new FormData(loginForm);
			const ob = {};
			
			for(const [key,value] of loginFormData.entries()){
				ob[key] = value;
			}
			
			const json = JSON.stringify(ob);
			
			const url = cpath + '/login';
			const opt = {
					method : 'POST',
					body : json,
					headers : {
						'Content-Type' : 'application/json'
					}
			};
			
			fetch(url, opt)
			.then(resp => resp.text())
			.then(text => {
				if(text == '로그인'){
					location.href= cpath;
				}
				else{
					result.style.color ='red';
					result.innerText = text;
					document.getElementById('userPw').value = '';
				}
			})
		}
		
		loginForm.onsubmit = loginHandler;  
		
		$(document).ready(function(){
		    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
		    var key = getCookie("key");
		    $("#userId").val(key); 
		     
		    if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		    }
		     
		    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
		        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
		            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
		        }else{ // ID 저장하기 체크 해제 시, 쿠키 삭제
		            deleteCookie("key");
		        }
		    });
		     
		    // ID 저장하기를 체크한 상태에서 다른 ID를 입력하는 경우에도 쿠키 저장.
		    $("#userId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
		        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
		            setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
		        }
		    });
		});
	 
		function setCookie(cookieName, value, exdays){
		    var exdate = new Date();
		    exdate.setDate(exdate.getDate() + exdays);
		    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
		    document.cookie = cookieName + "=" + cookieValue;
		}
		 
		function deleteCookie(cookieName){
		    var expireDate = new Date();
		    expireDate.setDate(expireDate.getDate() - 1);
		    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
		}
		 
		function getCookie(cookieName) {
		    cookieName = cookieName + '=';
		    var cookieData = document.cookie;
		    var start = cookieData.indexOf(cookieName);
		    var cookieValue = '';
		    if(start != -1){
		        start += cookieName.length;
		        var end = cookieData.indexOf(';', start);
		        if(end == -1)end = cookieData.length;
		        cookieValue = cookieData.substring(start, end);
		    }
		    return unescape(cookieValue);
		}
		
	</script>


	<script>
		//footer 해당 메뉴 페이지 접근시 글자색 변경
		const itemList = document.querySelectorAll('#footer-text');

		itemList.forEach(tr => tr.style.color='rgb(146, 146, 146)');
		itemList[1].style.color='rgb(219, 7, 74)';
	</script>
	
	<script>
		// footer 해당 메뉴 페이지 접근시 아이콘색 변경
		const iconList = document.querySelectorAll('.iconWrapper');
		const greyIcon = document.querySelectorAll('#greyIcon');
		const pinkIcon = document.querySelectorAll('#pinkIcon');
		
		greyIcon[1].classList.add('hidden');
		pinkIcon[1].classList.remove('hidden');
	</script>

</body>
</html>