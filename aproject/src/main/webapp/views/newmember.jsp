<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>신한김밥 회원가입</title>
<link href="../static/css/newmember.css" rel="stylesheet">
<script>
window.onload = call;
function call(){
	
	 
	
		
	}
function f1(){
	
	location.href= "https://app.slack.com/client/T05PBESDRUL/C05P2C50VGW";
}
function openInDiv() {
           document.querySelector("#ex").style.color = "red";
            var divContainer = document.getElementById("targetDiv");
            divContainer.innerHTML = '<object type="text/html" data="http://myhost.dothome.co.kr/example.html" style="width:100%;height:950px;"></object>';
        }
        
	

</script>
<style>

.dist3{
height : 20px
}
.body-part{
	     display: flex;
    background-color: rgb(248, 249, 250);
    min-height: calc(100vh - 112px);
    flex-wrap: nowrap;
    align-content: center;
    justify-content: center;
    width: 100%;
    flex-direction: column;
	}
	.logfont{
margin-left: 0px;
color: rgb(0, 0, 0);
    font-size: 26px;
    font-weight: 600;
    line-height: 1em;
    text-decoration: none;
}
.form-control{
display: block;
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 16px;
    font-weight: 400;
    line-height: 1.5;
    color: var(--bs-body-color);
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: var(--bs-body-bg);
    background-clip: padding-box;
    border: var(--bs-border-width) solid var(--bs-border-color);
    border-radius: var(--bs-border-radius);
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.header-third {
	display: flex;
    flex-wrap: nowrap;
    align-items: center;
    justify-content: center;
border-right: 1px solid rgb(221, 221, 221);
	height: 150px;
	float: left;
	
	width: 270px;
	box-sizing: border-box;
}
.hthird-point{
color:black;
font-size: 18px;
}
</style>
</head>
<body>
	<div class="header-part">
		<div class="logo-first">
			<img class="logo" src="../static/image/logo.png" onclick ="location.href ='Main.jsp';">
			
			<div class="header-second">
				<a class="hthird-a" href="Menu.jsp">메뉴</a>
				<div class="hthird-middle"></div>
				<a class="hthird-a" id=ex href="javascript:void(0);"
					onclick="openInDiv()">매장 찾기</a>
				<div class="hthird-middle"></div>
				<a class="hthird-a" id="loglo1"  onclick ="openlogin1()">주문 내역</a>
				<div class="hthird-middle"></div>
				<a class="hthird-point" id="loglo2"  onclick ="openlogin2()">나의 포인트</a>
			</div>
			<div class="header-third">
			<a class="hthird-a" id="loglo2" href="LoginCheck.do">로그인</a>
			</div>

		</div>
	</div>
<div class ="body-part" id="targetDiv">
<div class="dist3"></div>

<div class="body-left">
<div class="body-log"></div>
<div class="body-center">
<div class="container mt-3">
<div class ="mtm">
 <div class = "dist2"></div>
  <span class="logfont">회원가입</span>
  </div>
  <form action="newMember.do" method="post">
    <div class="mb-3 mt-3">
        <label >아이디</label>
      <div class="dist1"></div>
      <input type="text" class="form-control"  placeholder="아이디를 입력하세요" name="cus_id">
    </div>
    <div class="mb-3">
      <label >비밀번호</label>
      <div class="dist1"></div>
      <input type="password" class="form-control" id="cus_ps" placeholder="비밀번호를 입력하세요" name="cus_ps">
    </div>
     <div class="mb-3">
      <label >이름</label>
      <div class="dist1"></div>
      <input type="text" class="form-control" id="cus_name" placeholder="이름을 입력해주세요" name="cus_name">
    </div>
    <div class="mb-3">
      <label >카드번호</label>
      <div class="dist1"></div>
      <input type="text" class="form-control" id="card_no" placeholder="카드번호 12자리 입력" name="card_no"pattern="[0-9]{16}">
    </div>
    <div class="mb-3">
      <label >생년월일</label>
      <div class="dist1"></div>
      <input type="date" class="form-control" id="cus_bd" placeholder="비밀번호를 입력하세요" name="cus_bd">
    </div>
  	<div class="btn">
    <button type="submit" class="btn btn-primary" id= "btnb" name="btnb">회원가입완료</button>
    
    </div>
  </form>
</div>
</div>





<div class="dist"></div>

</div>

</div>

<div class="bottom-part">

<div class="dist"></div>
<img class="bottomlogo" onclick="f1()" src="../static/image/bottomlogo.png">
<div class="dist"></div>
<span class="chungu">1588 1009</span>
<div class="dist"></div>
<span class="last">
주식회사 [신한DS] 금융아카데미
<br>
주문번호 : 1588-1009 고객센터 : 없음 창업문의 : 1588-1009
<br>
대표자 : 방용수 서울특별시 마포구 월드컵북로4길 73(동교동)통신판매업신고 : 2023-서울마포-1009 사업자등록번호 : 456-12-123412
 </span>
</div>

</body>