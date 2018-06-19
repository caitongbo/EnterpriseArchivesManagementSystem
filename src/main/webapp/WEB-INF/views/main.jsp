<%@ page language="java" import="java.util.*" pageEncoding="GBk"%>
<%@page import ="com.enterpriseams.entity.UserInfo" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>首页</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/My97DatePicker/skin/WdatePicker.css">
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="font_content" align ="center">
	<form name ="search"  method ="post" action="${pageContext.request.contextPath}/search"  autocomplete="off">
		<table border="0" align="center" width="100%">
			<tr>
				<td>关键字:</td><td><input type="text" id="keyword" name="keyword"></td>
				<td >开始时间:</td><td><input type="text" id="timeStart" name="timeStart"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"></td>
				<td >结束时间:</td><td><input type="text" id="timeEnd" name="timeEnd"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"></td>
				<td><input type="submit" value="搜索" /></td>
			</tr>
		</table>
	</form>
</div>

<div align="center" >
	<table class="table table-bordered" >
		<tr>
			<th  style="text-align:center;">序号</th>
			<th  style="text-align:center;">销毁id</th>
			<th  style="text-align:center;">档案id</th>
			<th  style="text-align:center;">作者id</th>
			<th  style="text-align:center;">销毁时间</th>
			<th  style="text-align:center;">销毁原因</th>
			<th  style="text-align:center;">备注</th>
		</tr>
		<c:forEach items="${requestScope.destroys}" var="destroy"  varStatus="status">
			<tr>
					<%--<td><img src=images/${book.image} height="60"></td>--%>
				<td align="center" valign="middle">${requestScope.offset+status.index}</td>
				<td align="center" valign="middle">${destroy.destroyid}</td>
				<td align="center" valign="middle">${destroy.archiveid}</td>
				<td align="center" valign="middle">${destroy.loginid}</td>
				<td align="center" valign="middle"><fmt:formatDate value='${destroy.destroytime}' pattern='yyyy-MM-dd  HH:mm:ss '/></td>
				<td align="center" valign="middle">${destroy.reason}</td>
				<td align="center" valign="middle">${destroy.remark}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
