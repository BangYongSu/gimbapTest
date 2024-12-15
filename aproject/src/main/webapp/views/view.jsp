<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>submenu</title>
<link href="../static/css/view.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
.btn{
	display: flex;
    flex-direction: row;
    align-content: center;
    flex-wrap: nowrap;
    align-items: center;
    justify-content: flex-end;
}
.dist2{
width: 10px;
}
.junrul {
    display: flex;
    flex-direction: row;
    align-items: flex-start;
    justify-content: space-between;
}

    .hthird-point{
color:black;
font-size: 18px;
}
.logoutbtn{
font-size: 12px;
    border: solid 2px;
    background-color: lightgray;
}
p{
font-size: 16px
}
</style>
<script>


function f1(){

	location.href= "https://app.slack.com/client/T05PBESDRUL/C05P2C50VGW";
}
function openInDiv() {
           document.querySelector("#ex").style.color = "red";
            var divContainer = document.getElementById("targetDiv");
            divContainer.innerHTML = '<object type="text/html" data="http://myhost.dothome.co.kr/example.html" style="width:100%;height:950px;"></object>';
        }

	

</script>
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
<div class="body-left">
<div class="body-log"></div>
<div class="body-center">
<div class="container mt-3">
<div class ="mtm">
 <div class = "dist2"></div>
  <span class="bagufont">장바구니</span>
  	  <div class="dist"></div>
  	<div class="jul"></div>
   <div class="dist1"></div>
  </div>
  <form action="" method="get">
  <div class= "jumun">
<p> 주문내역 </p>
 <div class="dist1"></div>
</div>

	<c:forEach items="${cart1 }" var = "food">
	<div class="junrul">
	<p>${food.key } ${food.value}원 </p>
	 <button class="btn btn-success"  onclick="removeFromCart('${food.key}')">삭제</button>
	   </div>
	</c:forEach>
 ${cusInfo.cus_name }님의 포인트${point }point
  	<div class="btn">
    <input type="button" type="button" class="btn btn-success" value="주문하기" 
         onclick="location.href='Order.do';">
          <div class="dist2"></div>
        <input type="button" type="button" class="btn btn-success" value="메뉴로돌아가기" 
         onclick="location.href='Menu.do';">
  
    </div>
  </form>

</div>
 <div class="dist"></div>
</div>
		



</div>

</div>
 

<script>
function removeFromCart(itemName) {
	<c:forEach items="${cart }" var = "food">
	</c:forEach>
    $.ajax({
        type: "GET",
        url: "RemoveCart.do?itemName=" + itemName,
        success: function(response) {
            // 성공적으로 삭제되면 해당 메뉴를 화면에서도 갱신하거나 숨기는 등의 작업을 수행할 수 있습니다.
            // 예: $("#cartItem_" + itemName).remove();
        },
        error: function(error) {
            console.log("Error removing item from cart: " + error);
        }
    });
}
</script>


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
</body>



</html>