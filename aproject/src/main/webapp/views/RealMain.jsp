<%@page import="com.project.dto.CustomerVO"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
<link href="../static/css/RealMain.css" rel="stylesheet">
<script>
window.onload = call;
function call(){
	document.querySelector("#gb").onclick = gimbob;
	document.querySelector("#dc").onclick = donc;
	document.querySelector("#nd").onclick = noodle;
	document.querySelector("#bb").onclick = bokb;
	document.querySelector("#tn").onclick = tang;

	var point = "${param.point}";
	
		
	}
function gimbob(){
	location.href=""
}
function donc(){
	
}
function noodle(){
	
}
function bokb(){
	
}
function tang(){
	
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
.logoutbtn{
font-size: 12px;
    border: solid 2px;
    background-color: lightgray;
}
p{
font-size: 16px
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
			<img class="logo" src="../static/image/logo.png" onclick ="location.href ='Main.do';">
			
			<div class="header-second">
				<a class="hthird-a" href="Menu.do">메뉴</a>
				<div class="hthird-middle"></div>
				<a class="hthird-a" id=ex href="javascript:void(0);"
					onclick="openInDiv()">매장 찾기</a>
				<div class="hthird-middle"></div>
				<a class="hthird-a" id="loglo" onclick="location.href='orderlist.do';" >주문내역 </a>
				<div class="hthird-middle"></div>
				<a class="hthird-point" id="loglo"data-bs-toggle="modal" data-bs-target="#myModal">포인트확인</a>
			</div>
			<div class="header-third"><p>${cusInfo.cus_name }님 환영합니다.</p>
			<button class="logoutbtn" onclick="location.href='Main.jsp';">로그아웃</button>
			<button class="logoutbtn" onclick="location.href='Update.do';">내정보수정</button>
			</div>

		</div>
	</div>


<div class="body-part" id="targetDiv">
		<div class="body-left">
			<img class="logo2" src="../static/image/logo2.png">
			<div class="dist"></div>
			<div class="jul"></div>
			<div class="dist"></div>
			<div class="content"></div>
			<div class="menulist">
			
			<div id = "all" class="menu-sub" onclick="location.href='Menu.do';">
					<img class="menupng" src="../static/image/all.png">
					<div class="menudist"></div>
					<span class="menufont">모든메뉴</span>
				</div>
					
				<div id = "gb" class="menu-sub" onclick="location.href='Menu.do';" >
					<img class="menupng" src="../static/image/김밥천국-김밥1.jpg">
					<div class="menudist"></div>
					<span class="menufont">김밥</span>
				</div>
				<div id = "dc" class="menu-sub" onclick="location.href='Menu.do';">
					<img class="menupng" src="../static/image/김밥천국-돈까스.jpg">
					<div class="menudist"></div>
					<span class="menufont">돈까스</span>
				</div>
				<div id = "nd" class="menu-sub" onclick="location.href='Menu.do';">
					<img class="menupng" src="../static/image/김밥천국-라볶이.jpg">
					<div class="menudist"></div>
					<span class="menufont">면</span>
				</div>
				<div id = "bb" class="menu-sub" onclick="location.href='Menu.do';">
					<img class="menupng" src="../static/image/김밥천국-볶음밥1.jpg">
					<div class="menudist"></div>
					<span class="menufont">볶음밥</span>
				</div>
				<div id="menuj" class="menu-sub" onclick="location.href='Menu.do';">
				<div id="tn" class="tn">
					<img class="menupng" src="../static/image/김밥천국-찌개.jpg">
					<div class="menudist"></div>
					<span class="menufont">탕,찌개</span>
				</div>
				</div>
					
					</div>
			
		
			<div class="dist"></div>
			<div class="jul"></div>
			<div class="dist"></div>
			<div class="content">
				<span class="bodyfont">신한김밥 서비스</span>
				<div class="dist"></div>
			</div>

			<div class="body-part2">
				<img class="창업1" src="../static/image/창업.jpg"> <img
					class="창업2" src="../static/image/이벤트없음.ㅠ.png">
			</div>
			<div class="dist"></div>
			<div class="content2">
				<span class="bodyfont">창업문의</span> <span class="bodyfont">이벤트준비중</span>
			</div>
			<div class="content3">
				<span class="bodyfont2">신한김밥으로 창업을 도전하세요!</span>

			</div>

			<div class="dist"></div>

		</div>

	</div>
	<!-- 포인트확인 -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">포인트 확인</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        ${cusInfo.cus_name }님의 포인트는${point}point 입니다.
      </div>
	
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
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

</html>
