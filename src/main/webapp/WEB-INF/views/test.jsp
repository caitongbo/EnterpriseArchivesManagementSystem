<%--
  Created by IntelliJ IDEA.
  User: SAMSUNG
  Date: 2018/6/19
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'test.jsp' starting page</title>
      <!--
      <link rel="stylesheet" type="text/css" href="styles.css">
      -->
      <%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/wdatepicker.css">--%>

  	  <script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
  </head>

  <body>



<input class="Wdate" type="text" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})">
  </body></html>
