<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="serv.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Honmok</title>
</head>
<body>
<!-- 利用者ヘッダ -->
<jsp:include page="header_admin.jsp" flush="true" />

<!-- タイトル -->
<h1>利用者情報表示画面</h1>

<!-- コンテンツ -->
<%
// エラー判定
String error_message = (String)request.getAttribute("error_message");
if (error_message != null) {
	out.println( error_message );
	return;
}
User user = (User)request.getAttribute("users");
%>

<table border=1 class="userinfotable">
<thead><tr><th>利用者番号</th><th>氏名</th><th>住所</th><th>TEL</th><tr></thead>
<tr>
<td><%= user.getUserNo() %></td>
<td><%= user.getUname() %></td>
<td><%= user.getAddress() %></td>
<td><%= user.getTel() %></td>
</tr>
</table>

<form action="user_edit" method="get">
	<input type="hidden" name="uid" value="<%= user.getUid() %>">
	<input type="submit" value="変更" class="form_submit_button">
</form>

<h2>今借りている本のリスト</h2>
<table border=1 class="userbooktable">
<tr><td>今借りている本のリストテーブル</td></tr>
</table>

</body>
</html>