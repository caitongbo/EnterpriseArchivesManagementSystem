<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>��¼</title>
</head>
<body>
<div align="center">
	<form action="${pageContext.request.contextPath}/login" method="post">
		<table align="center">
			<tr>
				<td><label>��¼��</label></td>
				<td><input type="text" id="loginname" name="loginname"></td>
			</tr>
			<tr>
				<td><label>����</label></td>
				<td><input type="password" id="loginpwd" name="loginpwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="��¼" style="width: 100px"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>
