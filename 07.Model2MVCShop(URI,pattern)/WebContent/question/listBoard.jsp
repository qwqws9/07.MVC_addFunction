

<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>




<html>
<head>
<title>문의 게시판</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script type="text/javascript">

	function fncGetList(currentPage) {
		document.getElementById("currentPage").value = currentPage;
	   	document.detailForm.submit();		
	}
</script>
</head>

<body bgcolor="#ffffff" text="#000000">

<div style="width: 98%; margin-left: 10px;">

<form name="detailForm" action="/board/listBoard" method="post">

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">1:1 문의 내역</td>
				</tr>
			</table>
		</td>
		<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"	width="12" height="37"></td>
	</tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td colspan="10" >전체 ${page.totalCount} 건수, 현재 ${page.currentPage} 페이지</td>
	</tr>
	<tr>
		<td class="ct_list_b" width="100">No</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">회원ID</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">작성일자</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b">제목</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="300">답변상태</td>
		<td class="ct_line02"></td>
	</tr>
	<tr>
		<td colspan="10" bgcolor="808285" height="1"></td>
	</tr>
	
	<c:forEach var = "vo" items="${list }">
	
	
	<tr class="ct_list_pop">
		<td align="center">
			${vo.quesNo}
		</td>
		<td></td>
		<td align="center">${vo.quesId}</td>
		<td></td>
		<td align="left">${vo.quesDate}</td>
		
		<td></td>
		<td align="left">
		<a href="/board/getBoard?quesNo=${vo.quesNo}">${vo.quesTitle}</a>
		</td>
		<td></td>
		<td align="left">
		
		<c:if test = "${fn:trim(vo.quesState) == 1 }">
				답변 대기
		</c:if>
		<c:if test = "${fn:trim(vo.quesState) == 2 }">
				답변 완료
		</c:if>
	
				
		</td>
		<td></td>
	</tr>
	<tr>
		<td colspan="10" bgcolor="D6D7D6" height="1"></td>
	</tr>
	</c:forEach>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 10px;">
	<tr>
	<td align="center" width="17" height="23">
						<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
					</td>
					<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top: 3px; width:50px;">
						<a href="/board/addBoardView">문의하기</a>
					</td>
					<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
					</td>
		<td align="center">
		<input type="hidden" id="currentPage" name="currentPage" value=""/>
		<jsp:include page="../common/pageNavigator.jsp"/>
		</td>
	</tr>
</table>

<!--  페이지 Navigator 끝 -->
</form>

</div>

</body>
</html>