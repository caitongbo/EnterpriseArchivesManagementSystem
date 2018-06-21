<%@ page language="java" import="java.util.*" pageEncoding="GBk"%>
<%@page import ="com.enterpriseams.entity.UserInfo" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>首页</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="${pageContext.request.contextPath}/css/bootstrap-select.min.css" rel="stylesheet" />
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/laydate/laydate.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
        laydate.render({
            elem: '#timeStart'
            ,type: 'datetime'
        });
        laydate.render({
            elem: '#timeEnd'
            ,type: 'datetime'
        });
        function del(){
            if(confirm("确认删除吗？")){
                return true;
            }
            return false;
        }
        function exit(){
            if(confirm("确认退出吗？")){
                return true;
            }
            return false;
        }
	</script>
</head>
<body>

<div class="font_content" align ="center">
	<form name ="search"  method ="post" action="${pageContext.request.contextPath}/search">
		<table>
			<td>用户ID：<input type="text" id="keyword" name="keyword"></td>
			<td>&nbsp开始时间：<input type="text" id="timeStart" name="timeStart"></td>
			<td>&nbsp结束时间：<input type="text" id="timeEnd" name="timeEnd"></td>
			<td>&nbsp&nbsp&nbsp<input type="submit" value="搜索" class="btn btn-default"/></td>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<td style="text-align:right">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="${pageContext.request.contextPath}/login" onclick="return exit();">退出系统</a></td>
		</tr>
		</table>
	</form>
</div>

<div align="center">
	<%--<form action="${pageContext.request}"--%>
	<table class="table table-bordered" >
		<tr>
			<th  style="text-align:center;">编号</th>
			<th  style="text-align:center;">销毁ID</th>
			<th  style="text-align:center;">档案ID</th>
			<th  style="text-align:center;">用户ID</th>
			<th  style="text-align:center;">销毁时间</th>
			<th  style="text-align:center;">销毁原因</th>
			<th  style="text-align:center;">备注</th>
			<th  style="text-align:center;">操作</th>
		</tr>
		<c:forEach items="${requestScope.destroys}" var="destroy"  varStatus="status">
			<tr>
				<td align="center" valign="middle">${requestScope.offset+status.index+1}</td>
				<td align="center" valign="middle">${destroy.destroyid}</td>
				<td align="center" valign="middle">${destroy.archiveid}</td>
				<td align="center" valign="middle">${destroy.loginid}</td>
				<td align="center" valign="middle"><fmt:formatDate value='${destroy.destroytime}' pattern='yyyy-MM-dd  HH:mm:ss '/></td>
				<td align="center" valign="middle">${destroy.reason}</td>
				<td align="center" valign="middle">${destroy.remark}</td>
				<td align="center" valign="middle" ><a href="${pageContext.request.contextPath}/delete/${destroy.destroyid}" onclick="return del();"> 删除</a>
				</td>
			</tr>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
