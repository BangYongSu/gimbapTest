<%@page import="com.project.dto.OrderVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%
       List<OrderVO> orderlist = (List<OrderVO>)request.getAttribute("orderlist");  
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>submenu</title>
<link href="../static/css/loginpage.css" rel="stylesheet">
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

thead{
border-bottom: 2px solid #000; 
}

table {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 9px;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: center;
 
}
td{
font-size: 15px;
    font-weight: 540;
}
#container{
display: flex;
align-items: center;
flex-direction: column;
}
.mt-3{
       display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    width: 100%;
    }
    .body-center {
    border: 1px solid rgb(221, 221, 221);
    border-radius: 38px;
    background-color: white;
    display: flex;
    width: 122%;
    box-sizing: border-box;
    padding: 35px;
    flex-wrap: nowrap;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    box-shadow: inset -1px 0px 5px black;
}
.table-pfont{
    font-size: 28px;

}
.header-third {
      display: flex;
    align-items: center;
    justify-content: center;
    border-right: 1px solid rgb(221, 221, 221);
    height: 150px;
    float: left;
    width: 270px;
    box-sizing: border-box;
    flex-direction: column;
}
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
			</div>

		</div>
	</div>
<div class ="body-part" id="targetDiv">
<div class="body-left">
<div class="body-log"></div>
<div class="body-center">
<div class="mt-3">

    <p class="table-pfont">주문내역</p>
    <div class="dist"></div>
<table >

<thead>
<tr>
<th>주문번호</th>
<th>주문날짜</th>
<th>아이디</th>
<th>메뉴</th>
<th>가격</th>


</tr>
</thead>
<tbody>
<%

for(OrderVO order:orderlist) { 
%>
<tr >
<td>
 <%=order.getOrder_id()%>	
</td>
<td><%=order.getOrder_date()%> </td>
<td><%=order.getCus_id() %></td>
<td><%=order.getMenu().getMenu_name() %></td>
<td><%=order.getMenu().getPrice() %></td>

<%}%>
</tr>
</tbody>
</table>
  
</div>
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
</body>