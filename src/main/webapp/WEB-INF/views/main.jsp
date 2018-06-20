<%@ page language="java" import="java.util.*" pageEncoding="GBk"%>
<%@page import ="com.enterpriseams.entity.UserInfo" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>��ҳ</title>
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
	</script>
</head>
<body>

<div class="font_content" align ="center">
	<form name ="search"  method ="post" action="${pageContext.request.contextPath}/search">
			<tr>
				<select class="selectpicker" multiple data-live-search="false" title="���ߺ�">
					<option value="2">���ߺ�</option>
				</select>
				<td><input type="text" id="keyword" name="keyword"></td>
				<td >��ʼʱ�䣺<input type="text" id="timeStart" name="timeStart"></td>
				<td >����ʱ�䣺<input type="text" id="timeEnd" name="timeEnd"></td>
				<td><input type="submit" value="����" class="btn btn-default"/></td>
			</tr>
	</form>
</div>

<div align="center">
	<table class="table table-bordered" >
		<tr>
			<th  style="text-align:center;">���</th>
			<th  style="text-align:center;">����id</th>
			<th  style="text-align:center;">����id</th>
			<th  style="text-align:center;">����id</th>
			<th  style="text-align:center;">����ʱ��</th>
			<th  style="text-align:center;">����ԭ��</th>
			<th  style="text-align:center;">��ע</th>
			<th  style="text-align:center;">����</th>
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
						<td align="center" valign="middle">
					<button type="button" class="btn btn-danger btn-sm" aria-label="Left Align" >
						<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
						ɾ��
					</button>
						</td>
			</tr>
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>
