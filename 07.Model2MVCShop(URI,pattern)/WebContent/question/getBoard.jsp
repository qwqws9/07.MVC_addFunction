

<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<html>
<head>

<script type="text/javascript">
<!--
function fncUpdateBoard(){
	
	document.detailForm.action='/board/updateBoard';
	document.detailForm.submit();
}


-->
</script>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<title>Insert title here</title>
</head>

<body bgcolor="#ffffff" text="#000000">

<form name="detailForm" method="post">

<table width="100%" height="37" border="0" cellpadding="0"	cellspacing="0">
	<tr>
		<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"	width="15" height="37"></td>
		<td background="/images/ct_ttl_img02.gif" width="100%" style="padding-left: 10px;">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="93%" class="ct_ttl01">상세 문의</td>
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
			
			문의번호 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		
		<td class="ct_write01">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="105">${board.quesNo}</td>
				</tr>

				
			</table>
		</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			제목 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${board.quesTitle}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		<td width="104" class="ct_write">
			문의내용 <img src="/images/ct_icon_red.gif" width="3" height="3" align="absmiddle"/>
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${board.quesContent}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>

</table>


<c:if test = "${board.okContent != null }">
<br>
	<tr>
	
		<td width="104" class="ct_write"><img src="/images/reply.gif"></td>
		<td bgcolor="D6D6D6" width="1"></td><br>
		<td class="ct_write01">${board.okContent}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</c:if>
<br>

<c:if test = "${user.role != 'user' && board.okContent == null}">
	<tr>
	
		<td width="104" class="ct_write"><img src="/images/reply.gif"></td>
		<td bgcolor="D6D6D6" width="1"></td><br>
		<td><textarea rows="10" cols="80" name = "okContent"></textarea></td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</c:if>

<input type ="hidden" name = "quesNo" value= "${board.quesNo }">

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">
		
		<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<c:if
								test="${user.role != 'user' && board.okContent == null}">
								<td width="17" height="23"><img
									src="/images/ct_btnbg01.gif" width="17" height="23" /></td>
								<td background="/images/ct_btnbg02.gif" class="ct_btn01"
									style="padding-top: 3px;"><a
									href="javascript:fncUpdateBoard();">답변</a>
								</td>
								<td width="14" height="23"><img
									src="/images/ct_btnbg03.gif" width="14" height="23" /></td>
								<td width="30"></td>
							</c:if>

							<td width="17" height="23"><img src="/images/ct_btnbg01.gif"
								width="17" height="23" /></td>
							<td background="/images/ct_btnbg02.gif" class="ct_btn01"
								style="padding-top: 3px;"><a href="/board/listBoard">확인</a>
							</td>
							<td width="14" height="23"><img src="/images/ct_btnbg03.gif"
								width="14" height="23" /></td>
						</tr>
					</table>

		
		</td>
	</tr>
</table>
</form>

</body>
</html>