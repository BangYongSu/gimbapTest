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
<link href="../static/css/RealMenu.css" rel="stylesheet">
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
     
 
	   
function  callfood(mid,menu, price){
	
	 $.ajax({
		 url:"addCart",
	 data : {menuid:mid, menuName :menu, menuPrice:price},
	 success : function(){
		 alert("담기성공");
	 }
	 })
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

	

</script>
<style>
.col{
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: flex-end;
}
.dist{
	display: flex;
    box-sizing: border-box;
    pointer-events: none;
      width: 34px;
    height: 25px;
    }
    .dist4{
    width:10px;
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
			</div>

		</div>
	</div>

<div class ="body-part" id="targetDiv">
<div class="dist"></div>
<div class="menulist">
		<div id = "all" class="menu-part">
					<img class="menupng" src="../static/image/all.png">
					<div class="menudist"></div>
					<span class="menufont">모든메뉴</span>
				</div>
				<div id = "gb" class="menu-part">
					<img class="menupng" src="../static/image/김밥천국-김밥1.jpg">
					<div class="menudist"></div>
					<span class="menufont">김밥</span>
				</div>
				<div id = "dc"  class="menu-part">
					<img class="menupng" src="../static/image/김밥천국-돈까스.jpg">
					<div class="menudist"></div>
					<span class="menufont">돈까스</span>
				</div>
				<div id = "nd" class="menu-part">
					<img class="menupng" src="../static/image/김밥천국-라볶이.jpg">
					<div class="menudist"></div>
					<span class="menufont">면</span>
				</div>
			
		
				<div id = "bk" class="menu-part">
					<img class="menupng" src="../static/image/김밥천국-볶음밥1.jpg">
					<div class="menudist"></div>
					<span class="menufont">볶음밥</span>
				</div>
				<div id="tg" class="menu-part">
				<div id="tn" class="tn">
					<img class="menupng" src="../static/image/김밥천국-찌개.jpg">
					<div class="menudist"></div>
					<span class="menufont">탕,찌개</span>
			</div>
			</div>
		
				</div>
				</div>
<form action="addCart.do" method="post">
<div id="menupart" class="menupart">
		
<div id="1" onclick="callfood(1,'야채김밥',2500)" class="menu-sub">
			<img  class="menupng" src="../static/image/김밥천국-김밥1.jpg">
			<div class="menudist"></div>
					<span class="menufont">야채김밥</span>
					<span class="menufont">2500원</span>
</div>	
<div id="1" class="menu-sub"  onclick="callfood(2,'치즈김밥',3000)">
			<img  class="menupng" src="../static/image/치즈김밥.jpg" >
			<div class="menudist"></div>
					<span class="menufont">치즈김밥</span>
					<span class="menufont">3000원</span>
</div>
<div id="1" class="menu-sub"  onclick="callfood(3,'김치김밥',3000)">
			<img class="menupng" src="../static/image/김치김밥.jpg" >
			<div class="menudist"></div>
					<span class="menufont">김치김밥</span>
					<span class="menufont">3000원</span>
</div>	
<div id="1" class="menu-sub" onclick="callfood(4,'참치김밥',3000)">
			<img class="menupng" src="../static/image/참치김밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">참치김밥</span>
					<span class="menufont">3000원</span>
</div>	
<div id="1"  class="menu-sub"onclick="callfood(5,'땡초김밥',3000)">
			<img class="menupng" src="../static/image/땡초김밥.jpg">
			<div class="menudist"></div>
					<span class="menufont">땡초김밥</span>
					<span class="menufont">3000원</span>
</div>	
<div id="2" class="menu-sub" onclick="callfood(6,'김치라면',3500)">
			<img class="menupng" src="../static/image/김치라면.jpg">
			<div class="menudist"></div>
					<span class="menufont">김치라면</span>
					<span class="menufont">3500원</span>
</div>	
<div id="2" class="menu-sub" onclick="callfood(7,'치즈라면',3500)">
			<img class="menupng" src="../static/image/치즈라면.jpg">
			<div class="menudist"></div>
					<span class="menufont">치즈라면</span>
					<span class="menufont">3500원</span>
</div>	
<div id="2"  class="menu-sub" onclick="callfood(8,'떡라면',3500)">
			<img class="menupng" src="../static/image/떡라면.jpg">
			<div class="menudist"></div>
					<span class="menufont">떡라면</span>
					<span class="menufont">3500원</span>
</div>	
<div id="2" class="menu-sub"  onclick="callfood(9,'쫄면',4000)">
			<img class="menupng" src="../static/image/쫄면.jpg" >
			<div class="menudist"></div>
					<span class="menufont">쫄면</span>
					<span class="menufont">4000원</span>
</div>	
<div id="2" class="menu-sub" onclick="callfood(10,'라볶이',4000)">
			<img class="menupng" src="../static/image/김밥천국-라볶이.jpg" >
			<div class="menudist"></div>
					<span class="menufont">라볶이</span>
					<span class="menufont">4000원</span>
</div>	
<div id="2" class="menu-sub"  onclick="callfood(11,'치즈라볶이',4000)">
			<img class="menupng" src="../static/image/치즈라볶이.jpg" >
			<div class="menudist"></div>
					<span class="menufont">치즈라볶이</span>
					<span class="menufont">4000원</span>
</div>	
<div id="3"class="menu-sub" onclick="callfood(12,'돈까스',5000)">
			<img class="menupng" src="../static/image/김밥천국-돈까스.jpg" >
			<div class="menudist"></div>
					<span class="menufont">돈까스</span>
					<span class="menufont">5000원</span>
</div>	
<div id="3" class="menu-sub"  onclick="callfood(13,'생선돈까스',5000)">
			<img class="menupng" src="../static/image/생선가스.jpg" >
			<div class="menudist"></div>
					<span class="menufont">생선돈까스</span>
					<span class="menufont">5000원</span>
</div>	
<div id="3"  class="menu-sub"  onclick="callfood(14,'치즈돈까스',5500)">
			<img class="menupng" src="../static/image/치즈돈가스.jpg">
			<div class="menudist"></div>
					<span class="menufont">치즈돈까스</span>
					<span class="menufont">5500원</span>
</div>	
<div id="3" class="menu-sub"  onclick="callfood(15,'고구마치즈돈까스',6000)">
			<img class="menupng" src="../static/image/고구마치즈돈까스.jpg" >
			<div class="menudist"></div>
					<span class="menufont">고구마치즈돈까스</span>
					<span class="menufont">6000원</span>
</div>	
<div id="4" class="menu-sub"  onclick="callfood(16,'김치찌개',5000)">
			<img class="menupng" src="../static/image/김밥천국-찌개.jpg" >
			<div class="menudist"></div>
					<span class="menufont">김치찌개</span>
					<span class="menufont">5000원</span>
</div>	
<div id="4" class="menu-sub" onclick="callfood(17,'된장찌개',5000)">
			<img class="menupng" src="../static/image/된장찌개.jpg" >
			<div class="menudist"></div>
					<span class="menufont">된장찌개</span>
					<span class="menufont">5000원</span>
</div>	
<div id="4"  class="menu-sub" onclick="callfood(18,'순두부찌개',5500)">
			<img class="menupng" src="../static/image/순두부찌개.jpg" >
			<div class="menudist"></div>
					<span class="menufont">순두부찌개</span>
					<span class="menufont">5500원</span>
</div>	
<div id="4"  class="menu-sub" onclick="callfood(19,'부대찌개',6000)">
			<img class="menupng" src="../static/image/부대찌개.jpg">
			<div class="menudist"></div>
					<span class="menufont">부대찌개</span>
					<span class="menufont">6000원</span>
</div>	
<div id="4" class="menu-sub"  onclick="callfood(20,'갈비탕',6000)">
			<img class="menupng" src="../static/image/갈비탕.jpg" >
			<div class="menudist"></div>
					<span class="menufont">갈비탕</span>
					<span class="menufont">6000원</span>
</div>
<div id="4" class="menu-sub"  onclick="callfood(21,'육개장',6000)">
			<img class="menupng" src="../static/image/육개장.jpg" >
			<div class="menudist"></div>
					<span class="menufont">육개장</span>
					<span class="menufont">6000원</span>
</div>
<div id="5" class="menu-sub"  onclick="callfood(23,'치즈볶음밥',5500)">
			<img class="menupng" src="../static/image/치즈볶음밥.jpg" >
			<div class="menudist"></div>
					<span class="menufont">치즈볶음밥</span>
					<span class="menufont">5500원</span>
</div>
<div id="5" class="menu-sub"  onclick="callfood(24,'오므라이스',6000)">
			<img class="menupng" src="../static/image/김밥천국-볶음밥1.jpg" >
			<div class="menudist"></div>
					<span class="menufont">오므라이스</span>
					<span class="menufont">6000원</span>
</div>
<div id="5" class="menu-sub"  onclick="callfood(25,'카레',6000)">
			<img class="menupng" src="../static/image/카레.jpg">
			<div class="menudist"></div>
					<span class="menufont">카레</span>
					<span class="menufont">6000원</span>
</div>
<div id="5" class="menu-sub"  onclick="callfood(26,'제육덮밥',6500)">
			<img class="menupng" src="../static/image/제육덮밥.jpg" >
			<div class="menudist"></div>
					<span class="menufont">제육덮밥</span>
					<span class="menufont">6500원</span>
</div>
<div id="5" class="menu-sub"  onclick="callfood(27,'오삼불고기덮밥',7000)">
			<img class="menupng" src="../static/image/오삼불고기덮밥.jpg" >
			<div class="menudist"></div>
					<span class="menufont">오삼불고기덮밥</span>
					<span class="menufont">7000원</span>
</div>
		
</div>
<div class="col">
 <input type="button" type="button" class="btn btn-success" value="결제하기" 
         onclick="location.href='cartview.do	';">
         <div class="dist4"></div>
 <input type="button" type="button" class="btn btn-success" value="장바구니비우기" 
                type="button" class="btn btn-success" 
         onclick="location.href='cartremove.do';">
         <div class="dist"></div>
</div>
</form>



<div class="dist"></div>
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
<script>
	var message="${param.message}";
	if(message!="") alert(message);
</script>
</body>



</html>