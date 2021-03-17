<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        div {
            width: 768px;
            height: 500px;
            margin: auto;
        }
        .back {
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
        #hotel-owner {
            margin: 20px;
            font-size: 14px;
        }
        #hotel-owner > strong,p {
            margin: 20px;
        }
        
    </style>
</head>
<body>
<div>
    <div class="back">
        <a href="hotel.html"><img src="arrow.jpg"></a>
        <h1>판매자 정보</h1>
    </div>

    <div id="hotel-owner">
    <strong>사업자등록번호</strong>
    <p>604-88-00718</p>

    <strong>상호명</strong>
    <p>(주)빌더스개발에이엠씨</p>

    <strong>대표자</strong>
    <p>심태형</p>

    <strong>사업장 소재지</strong>
    <p>강원도 강릉시 해안로 476(강문동)</p>

    <strong>전화번호</strong>
    <p>0339232000</p>

    <strong>전자우편번호</strong>
    <p>sungwook1006@gmail.com</p>
    </div>

</div>

</body>
</html>