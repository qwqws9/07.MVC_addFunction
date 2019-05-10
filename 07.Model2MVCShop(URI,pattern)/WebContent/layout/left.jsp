<%@ page contentType="text/html; charset=euc-kr" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

  <script
  src="https://code.jquery.com/jquery-2.1.4.js"
  integrity="sha256-siFczlgw4jULnUICcdm9gjQPZkw/YPDqhQ9+nAOScE4="
  crossorigin="anonymous"></script>
  

  
  
  
  
  
  
<title>Model2 MVC Shop</title>

<link href="/css/left.css" rel="stylesheet" type="text/css">




<script type="text/javascript">



function history(){
	popWin = window.open("/history.jsp","popWin","left=300, top=200, width=300, height=200, marginwidth=0, marginheight=0, scrollbars=no, scrolling=no, menubar=no, resizable=no");
}


$(function() {
	 
	//==> 개인정보조회 Event 연결처리부분
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
 	$( ".Depth03:contains('개인정보조회')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('개인정보조회')" ).html() );
		$(window.parent.frames["rightFrame"].document.location).attr("href","/user/getUser?userId=${user.userId}");
	});
	
	
	//==> 회원정보조회 Event 연결처리부분
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
 	$( ".Depth03:contains('회원정보조회')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('회원정보조회')" ) );
 		$(window.parent.frames["rightFrame"].document.location).attr("href","/user/listUser");
	}); 
	
 	$( ".Depth03:contains('판매상품등록')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('회원정보조회')" ) );
 		$(window.parent.frames["rightFrame"].document.location).attr("href","../product/addProductView.jsp");
	}); 
 	
	
	$( ".Depth03:contains('판매상품관리')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('회원정보조회')" ) );
 		$(window.parent.frames["rightFrame"].document.location).attr("href","/product/listProduct?menu=manage");
	}); 		
 		
	
	$( ".Depth03:contains('배송업무')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('회원정보조회')" ) );
 		$(window.parent.frames["rightFrame"].document.location).attr("href","/product/listProduct?menu=admin");
	}); 
	
	$( ".Depth03:contains('구매이력조회')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('회원정보조회')" ) );
 		$(window.parent.frames["rightFrame"].document.location).attr("href","/purchase/listPurchase");
	}); 
	
	
	$( ".Depth03:contains('상 품 검 색')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('상 품 검 색')" ) );
 		$(window.parent.frames["rightFrame"].document.location).attr("href","/product/listProduct?menu=search");
	}); 
	
	$( ".Depth03:contains('최근 본 상품')" ).on("click" , function() {
		history();
	}); 
	
	
	$( ".Depth03:contains('1:1 문의 게시판')" ).on("click" , function() {
		//Debug..
		//alert(  $( ".Depth03:contains('상 품 검 색')" ) );
 		$(window.parent.frames["rightFrame"].document.location).attr("href","/board/listBoard");
	}); 
	
	
	
	
	
	
	
	
	
});	
</script>
</head>



<body background="/images/left/imgLeftBg.gif" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"  >






<table width="159" border="0" cellspacing="0" cellpadding="0">

<!--menu 01 line-->
<tr>
	<td valign="top"> 
		<table  border="0" cellspacing="0" cellpadding="0" width="159" >	
			<tr>
				<c:if test="${ !empty user }">
					<tr>
						<td class="Depth03">
							개인정보조회
						</td>
					</tr>
				</c:if>
			
				<c:if test="${user.role == 'admin'}">
					<tr>
						<td class="Depth03" >
							회원정보조회
						</td>
					</tr>
				</c:if>
			
				<tr>
					<td class="DepthEnd">&nbsp;</td>
				</tr>
		</table>
	</td>
</tr>

<!--menu 02 line-->
<c:if test="${user.role == 'admin'}">
	<tr>
		<td valign="top"> 
			<table  border="0" cellspacing="0" cellpadding="0" width="159">
				<tr>
					<td class="Depth03">
						판매상품등록
					</td>
				</tr>
				<tr>
					<td class="Depth03">
						판매상품관리
					</td>
				</tr>
				<tr>
					<td class="DepthEnd">&nbsp;</td>
				</tr>
				<tr>
					<td class="Depth03">
						배송업무
					</td>
				</tr>
				<tr>
					<td class="DepthEnd">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</c:if>

<!--menu 03 line-->
<tr>
	<td valign="top"> 
		<table  border="0" cellspacing="0" cellpadding="0" width="159">
			<tr>
				<td class="Depth03">
					상 품 검 색
				</td>
			</tr>
			
			<c:if test="${ !empty user && user.role == 'user'}">
			<tr>
				<td class="Depth03">
			구매이력조회
				
				</td>
			</tr>
			</c:if>
			
			<tr>
				<td class="DepthEnd">&nbsp;</td>
			</tr>
			<tr>
				<td class="Depth03">최근 본 상품</td>
			</tr>
		</table>
	</td>
</tr>

<!--menu 04 line-->
<tr>
	<td valign="top"> 
		<table  border="0" cellspacing="0" cellpadding="0" width="159">
			<tr>
				<td class="Depth03">
					1:1 문의 게시판
				</td>
			</tr>
			
			<!--<c:if test="${ !empty user && user.role == 'user'}">
			<tr>
				<td class="Depth03">
					<a href="/purchase/listPurchase"  target="rightFrame">구매이력조회</a>
				</td>
			</tr>
			</c:if>
			
			<tr>
				<td class="DepthEnd">&nbsp;</td>
			</tr>
			<tr>
				<td class="Depth03"><a href="javascript:history()">최근 본 상품</a></td>
			</tr> -->
		</table>
	</td>
</tr>

</table>

</body>
</html>
