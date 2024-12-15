<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>submenu</title>
<link href="../static/css/Menu.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
window.onload = call;
function call(){
	 document.getElementById("gb").onclick = gimbob;
	 document.getElementById("dc").onclick = donc;
	 document.getElementById("nd").onclick = noodle;
	 document.getElementById("bk").onclick = bokb;
	 document.getElementById("tg").onclick = tang;
	 document.getElementById("all").onclick = all;
	    
	    
}
		
		function gimbob() {
	
    // id가 "1"인 div를 배열로 저장
    var divsWithId1 = document.querySelectorAll(".menupart .menu-sub[id='1']");
   // id가 "gb"인 div를 클릭했을 때
    var gbMenu = document.getElementById("gb");
    var menuSubs = document.querySelectorAll(".menupart .menu-sub");
  
    gbMenu.onclick = function() {
        // 모든 메뉴 숨기기
        for (var j = 0; j < menuSubs.length; j++) {
            menuSubs[j].style.display = "none";
        }
        // 배열로 저장된 id가 "1"인 div들을 보이게 하기
        for (var k = 0; k < divsWithId1.length; k++) {
            divsWithId1[k].style.display = "block";
        }
    };
    
		}

function donc(){
	  var divsWithId1 = document.querySelectorAll(".menupart .menu-sub[id='3']");
	   

	    var gbMenu = document.getElementById("dc");
	    var menuSubs = document.querySelectorAll(".menupart .menu-sub");
	    
	    gbMenu.onclick = function() {
	   
	        for (var j = 0; j < menuSubs.length; j++) {
	            menuSubs[j].style.display = "none";
	        }

	        for (var k = 0; k < divsWithId1.length; k++) {
	            divsWithId1[k].style.display = "block";
	        }
	    };
}
function noodle(){
	  var divsWithId1 = document.querySelectorAll(".menupart .menu-sub[id='2']");
	   
	    var gbMenu = document.getElementById("nd");
	    var menuSubs = document.querySelectorAll(".menupart .menu-sub");
	    
	    gbMenu.onclick = function() {
	        for (var j = 0; j < menuSubs.length; j++) {
	            menuSubs[j].style.display = "none";
	        }
	        for (var k = 0; k < divsWithId1.length; k++) {
	            divsWithId1[k].style.display = "block";
	        }
	    };
}
function bokb(){
	  var divsWithId1 = document.querySelectorAll(".menupart .menu-sub[id='4']");
	   
	    var gbMenu = document.getElementById("bk");
	    var menuSubs = document.querySelectorAll(".menupart .menu-sub");
	    
	    gbMenu.onclick = function() {

	        for (var j = 0; j < menuSubs.length; j++) {
	            menuSubs[j].style.display = "none";
	        }

	        for (var k = 0; k < divsWithId1.length; k++) {
	            divsWithId1[k].style.display = "block";
	        }
	    };
}
function tang(){
	  var divsWithId1 = document.querySelectorAll(".menupart .menu-sub[id='5']");
	   
	    var gbMenu = document.getElementById("tg");
	    var menuSubs = document.querySelectorAll(".menupart .menu-sub");
	    
	    gbMenu.onclick = function() {

	        for (var j = 0; j < menuSubs.length; j++) {
	            menuSubs[j].style.display = "none";
	        }

	        for (var k = 0; k < divsWithId1.length; k++) {
	            divsWithId1[k].style.display = "block";
	        }
	    };
}
function all(){
	var menuSubs = document.querySelectorAll(".menupart .menu-sub");
	 for (var j = 0; j < menuSubs.length; j++) {
         menuSubs[j].style.display = "block";
     }
}
function f1(){

	location.href= "https://app.slack.com/client/T05PBESDRUL/C05P2C50VGW";
}
function openInDiv() {
           document.querySelector("#ex").style.color = "red";
            var divContainer = document.getElementById("targetDiv");
            divContainer.innerHTML = '<object type="text/html" data="http://myhost.dothome.co.kr/example.html" style="width:100%;height:950px;"></object>';
        }
        
	
function openlogin1() {
	
	alert("로그인이 되어있지 않습니다. 로그인페이지로 이동합니다.");
	location.href = "LoginCheck.do";
}
function openlogin2() {
	
	alert("로그인이 되어있지 않습니다. 로그인페이지로 이동합니다.");
	location.href = "LoginCheck.do";
}
</script>
<style>
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
<div class="dist"></div>
<div class="menulist">
	<div id = "all" class="menu-sub">
					<img class="menupng" src="../static/image/all.png">
					<div class="menudist"></div>
					<span class="menufont">모든메뉴</span>
				</div>
				<div id = "gb" class="menu-sub">
					<img class="menupng" src="../static/image/김밥천국-김밥1.jpg">
					<div class="menudist"></div>
					<span class="menufont">김밥</span>
				</div>
				<div id = "dc"  class="menu-sub">
					<img class="menupng" src="../static/image/김밥천국-돈까스.jpg">
					<div class="menudist"></div>
					<span class="menufont">돈까스</span>
				</div>
				<div id = "nd" class="menu-sub">
					<img class="menupng" src="../static/image/김밥천국-라볶이.jpg">
					<div class="menudist"></div>
					<span class="menufont">면</span>
				</div>
			
		
				<div id = "bk" class="menu-sub">
					<img class="menupng" src="../static/image/김밥천국-볶음밥1.jpg">
					<div class="menudist"></div>
					<span class="menufont">볶음밥</span>
				</div>
				<div id="tg" class="menu-sub">
				<div id="tn" class="tn">
					<img class="menupng" src="../static/image/김밥천국-찌개.jpg">
					<div class="menudist"></div>
					<span class="menufont">탕,찌개</span>
			</div>
			</div>
			
				</div>
				</div>
<div id="menupart" class="menupart">
		
<div id="1" class="menu-sub">
			<img class="menupng" src="../static/image/김밥천국-김밥1.jpg">
			<div class="menudist"></div>
					<span class="menufont">야채김밥</span>
					<span class="menufont">2500원</span>
</div>	
<div id="1" class="menu-sub">
			<img class="menupng" src="../static/image/치즈김밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">치즈김밥</span>
					<span class="menufont">3000원</span>
</div>
<div id="1" class="menu-sub">
			<img class="menupng" src="../static/image/김치김밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">김치김밥</span>
					<span class="menufont">3000원</span>
</div>	
<div id="1" class="menu-sub">
			<img class="menupng" src="../static/image/참치김밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">참치김밥</span>
					<span class="menufont">3000원</span>
</div>	
<div id="1"  class="menu-sub">
			<img class="menupng" src="../static/image/땡초김밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">땡초김밥</span>
					<span class="menufont">3000원</span>
</div>	
<div id="2" class="menu-sub">
			<img class="menupng" src="../static/image/김치라면.jpg">
			<div class="menudist"></div>
					<span class="menufont">김치라면</span>
					<span class="menufont">3500원</span>
</div>	
<div id="2" class="menu-sub">
			<img class="menupng" src="../static/image/치즈라면.jpg">
			<div class="menudist"></div>
					<span class="menufont">치즈라면</span>
					<span class="menufont">3500원</span>
</div>	
<div id="2"  class="menu-sub">
			<img class="menupng" src="../static/image/떡라면.jpg">
			<div class="menudist"></div>
					<span class="menufont">떡라면</span>
					<span class="menufont">3500원</span>
</div>	
<div id="2" class="menu-sub">
			<img class="menupng" src="../static/image/쫄면.jpg">
			<div class="menudist"></div>
					<span class="menufont">쫄면</span>
					<span class="menufont">4000원</span>
</div>	
<div id="2" class="menu-sub">
			<img class="menupng" src="../static/image/김밥천국-라볶이.jpg">
			<div class="menudist"></div>
					<span class="menufont">라볶이</span>
					<span class="menufont">4000원</span>
</div>	
<div id="2" class="menu-sub">
			<img class="menupng" src="../static/image/치즈라볶이.jpg">
			<div class="menudist"></div>
					<span class="menufont">치즈라볶이</span>
					<span class="menufont">4000원</span>
</div>	
<div id="3"class="menu-sub">
			<img class="menupng" src="../static/image/김밥천국-돈까스.jpg">
			<div class="menudist"></div>
					<span class="menufont">돈까스</span>
					<span class="menufont">5000원</span>
</div>	
<div id="3" class="menu-sub">
			<img class="menupng" src="../static/image/생선가스.jpg">
			<div class="menudist"></div>
					<span class="menufont">생선돈까스</span>
					<span class="menufont">5000원</span>
</div>	
<div id="3"  class="menu-sub">
			<img class="menupng" src="../static/image/치즈돈가스.jpg">
			<div class="menudist"></div>
					<span class="menufont">치즈돈까스</span>
					<span class="menufont">5500원</span>
</div>	
<div id="3" class="menu-sub">
			<img class="menupng" src="../static/image/고구마치즈돈까스.jpg">
			<div class="menudist"></div>
					<span class="menufont">고구마치즈돈까스</span>
					<span class="menufont">6000원</span>
</div>	
<div id="4" class="menu-sub">
			<img class="menupng" src="../static/image/김밥천국-찌개.jpg">
			<div class="menudist"></div>
					<span class="menufont">김치찌개</span>
					<span class="menufont">5000원</span>
</div>	
<div id="4" class="menu-sub">
			<img class="menupng" src="../static/image/된장찌개.jpg">
			<div class="menudist"></div>
					<span class="menufont">된장찌개</span>
					<span class="menufont">5000원</span>
</div>	
<div id="4"  class="menu-sub">
			<img class="menupng" src="../static/image/순두부찌개.jpg">
			<div class="menudist"></div>
					<span class="menufont">순두부찌개</span>
					<span class="menufont">5500원</span>
</div>	
<div id="4"  class="menu-sub">
			<img class="menupng" src="../static/image/부대찌개.jpg">
			<div class="menudist"></div>
					<span class="menufont">부대찌개</span>
					<span class="menufont">6000원</span>
</div>	
<div id="4" class="menu-sub">
			<img class="menupng" src="../static/image/갈비탕.jpg">
			<div class="menudist"></div>
					<span class="menufont">갈비탕</span>
					<span class="menufont">6000원</span>
</div>
<div id="4" class="menu-sub">
			<img class="menupng" src="../static/image/육개장.jpg">
			<div class="menudist"></div>
					<span class="menufont">육개장</span>
					<span class="menufont">6000원</span>
</div>
<div id="5" class="menu-sub">
			<img class="menupng" src="../static/image/치즈볶음밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">치즈볶음밥</span>
					<span class="menufont">5500원</span>
</div>
<div id="5" class="menu-sub">
			<img class="menupng" src="../static/image/김밥천국-볶음밥1.jpg">
			<div class="menudist"></div>
					<span class="menufont">오므라이스</span>
					<span class="menufont">6000원</span>
</div>
<div id="5" class="menu-sub">
			<img class="menupng" src="../static/image/카레.jpg">
			<div class="menudist"></div>
					<span class="menufont">카레</span>
					<span class="menufont">6000원</span>
</div>
<div id="5" class="menu-sub">
			<img class="menupng" src="../static/image/제육덮밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">제육덮밥</span>
					<span class="menufont">6500원</span>
</div>
<div id="5" class="menu-sub">
			<img class="menupng" src="../static/image/오삼불고기덮밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">오삼불고기덮밥</span>
					<span class="menufont">7000원</span>
</div>
		
</div>






<div class="dist"></div>

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
</html>