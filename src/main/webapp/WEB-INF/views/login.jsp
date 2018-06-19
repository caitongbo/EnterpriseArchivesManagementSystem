<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>µÇÂ¼Ò³Ãæ</title>
</head>
<body>

	<form action="${pageContext.request.contextPath}/login" method="post">
		<table>
			<tr>
				<td><label>µÇÂ¼Ãû</label></td>
				<td><input type="text" id="loginname" name="loginname"></td>
			</tr>
			<tr>
				<td><label>ÃÜÂë</label></td>
				<td><input type="password" id="loginpwd" name="loginpwd"></td>
			</tr>
			<tr>
				<td><input type="submit" value="µÇÂ¼" /></td>
			</tr>
		</table>
		<font color="red">${requestScope.message}</font>
	</form>
</body>
</html>
