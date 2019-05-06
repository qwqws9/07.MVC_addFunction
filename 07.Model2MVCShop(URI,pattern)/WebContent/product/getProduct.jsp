

<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<html>
<head>
<script type="text/javascript">
<!--
// 검색 / page 두가지 경우 모두 Form 전송을 위해 JavaScrpt 이용  
function fncGetList(currentPage) {
	document.getElementById("currentPage").value = currentPage;
   	document.detailForm.submit();		
}

function fncGet1List(currentPage1) {
	document.getElementById("currentPage1").value = currentPage1;
   	document.detailForm.submit();		
}


-->

</script>
<link rel="stylesheet" href="/css/admin.css" type="text/css">

<title>Insert title here</title>
</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm" method="post" action="/product/getProduct">

<input type = "hidden" name = "prodNo" value = "${pVo.prodNo }">
<input type = "hidden" name = "menu" value = "search">
<input type="hidden" id="currentPage" name="currentPage" value=""/>
<input type="hidden" id="currentPage1" name="currentPage1" value=""/>

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"	width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">상품상세조회</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif"  width="12" height="37"/>
		</td>
	</tr>
</table>


<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 13px;">
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>

	<tr>

		<td width="104" class="ct_write">
			
			상품번호 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		
		<td class="ct_write01">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">${pVo.prodNo}</td>
				</tr>

				
			</table>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			상품명 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${pVo.prodName}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			상품이미지 <img 	src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<img src = "/images/uploadFiles/../../images/empty.GIF"/>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			상품상세정보 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${pVo.prodDetail}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">제조일자</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${pVo.manuDate}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">가격</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${pVo.price}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>

	<tr>
		<td width="104" class="ct_write">등록일자</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${pVo.regDate}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>

</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">

		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
			<c:if test = "${fn:trim(pVo.quantity) != 0 && param.menu eq 'search' }">
			
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01"  style="padding-top: 3px;">
					<a href="/purchase/addPurchaseView?prodNo=${param.prodNo}">구매</a>
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
				<td width="30"></td>
			</c:if>
				
				<c:if test = "${param.menu eq 'search' }" >
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
					<a href="javascript:history.go(-1)">이전</a>
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
				</c:if>
				<c:if test = "${ param.menu eq 'manage' }" >
				<td width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
						<a href="/product/listProduct?menu=manage">확인</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
				</c:if>
			</tr>
		</table>

		</td>
	</tr>
</table>

<!-- reviewList -->

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"	width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">전체리뷰</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif"  width="12" height="37"/>
		</td>
	</tr>
</table>

<br>
<c:if test="${page.totalCount == 0 }">
상품 리뷰가 등록되어있지 않습니다.
</c:if>

<c:if test="${page.totalCount != 0 }">
<c:forEach var="list" items="${list }">
	<div style="width:915px; height:115px;">
	<div style="width:200px; height: 15px">
	<p style="font-size :11px;">작성자 : ${list.reviewId } &nbsp; 작성일 : ${list.reviewDate }</p>
	</div>
			<div style="width:100px; height:100px; float:left">
			<img src="../images/uploadFiles/flower.jpg" width="100" height="100">
			</div>
			
			<div style="width:800px; height:100px; float:right">
				<div style = "width:800px; height:50px"><p style="font-size: 12px;">[${list.reviewTitle }]</p></div>
				<div style = "width:800px; height:50px"><strong>${list.reviewContent }</strong></div>
			
			</div>
		</div>
		<hr>
</c:forEach>
</c:if>
<c:if test="${page.totalCount != 0 }">




		
		
		
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td align="center">
		
		
	
		
		<jsp:include page="../common/pageNavigator.jsp"/>
    	</td>
	</tr>
</table>

</c:if>	










<!-- questionList -->
<br><br>
<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"	width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">상품문의</td>
					<td width="20%" align="right">&nbsp;</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37">
			<img src="/images/ct_ttl_img03.gif"  width="12" height="37"/>
		</td>
	</tr>
</table>

<br>
<c:if test="${page1.totalCount == 0 }">
상품 문의가 등록되어있지 않습니다.
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
	<tr>
	<td align="center" width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px; width:50px;">
						<a href="/quest/addBoardView?prodNo=${pVo.prodNo}">문의하기</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
		<td align="center">
		</td>
		
		
					
			
	</tr>
</table>

</c:if>

<c:if test="${page1.totalCount != 0 }">
<c:forEach var="list" items="${questlist }">
	<div style="width:915px; height:115px;">
	<div style="width:200px; height: 15px">
	<p style="font-size :11px;">작성자 : ${list.quesId } &nbsp; 작성일 : ${list.quesDate }</p>
	</div>
			
			<div style="width:800px; height:100px; float:left">
				<div style = "width:800px; height:50px"><p style="font-size: 12px;">[${list.quesTitle }]</p></div>
				<div style = "width:800px; height:50px"><strong>${list.quesContent }</strong></div>
			
			</div>
		</div>
		<hr>
</c:forEach>



<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
	<tr>
	<td align="center" width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px; width:50px;">
						<a href="/quest/addBoardView?prodNo=${pVo.prodNo}">문의하기</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
		<td align="center">
			
		
		
		<c:if test="${ page1.currentPage <= page1.pageUnit }">
			◀ 이전
	</c:if>
	<c:if test="${ page1.currentPage > page1.pageUnit }">
			<a href="javascript:fncGet1List('${ page1.currentPage-1}')">◀ 이전</a>
	</c:if>
	
	<c:forEach var="i"  begin="${page1.beginUnitPage}" end="${page1.endUnitPage}" step="1">
		<a href="javascript:fncGet1List('${ i }');">${ i }</a>
	</c:forEach>
	
	<c:if test="${ page1.endUnitPage >= page1.maxPage }">
			이후 ▶
	</c:if>
	<c:if test="${ page1.endUnitPage < page1.maxPage }">
			<a href="javascript:fncGet1List('${page1.endUnitPage+1}')">이후 ▶</a>
	</c:if>
	
	
		</td>
	</tr>
</table>
		
		

</c:if>	
</form>


</body>
</html>