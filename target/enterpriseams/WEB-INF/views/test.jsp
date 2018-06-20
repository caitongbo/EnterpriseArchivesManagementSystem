<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>员工列表</title>
  <%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
  %>
  <!-- web路径：
  不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
  以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:8080)；需要加上项目名
          http://localhost:3306/crud
   -->
  <script type="text/javascript"   src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
  <link href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
  <script  src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 搭建显示页面 -->
<div class="container">

  <!-- 标题 -->
  <div class="row">
    <div class="col-md-12">
      <h1 >SSM-CRUD</h1>
    </div>
  </div>

  <!-- 新增、删除按钮 -->
  <div class="row">
    <div class="col-md-4 col-md-offset-8">
      <button class="btn btn-primary">新增</button>
      <button class="btn btn-danger">删除</button>
    </div>
  </div>

  <br>

  <!-- 显示表格数据 -->
  <div class="row">
    <div class="col-md-12">
      <table class="table table-hover" id="emps_table">
        <thead>
        <tr>
          <th>#</th>
          <th>empName</th>
          <th>gender</th>
          <th>email</th>
          <th>deptName</th>
          <th>操作</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
      </table>
    </div>
  </div>

  <!-- 显示分页信息 -->
  <div class="row">
    <!-- 分页文字信息 -->
    <div class="col-md-6" id="page_info_area">
      <!--当前页,总共页,总共记录数  -->
    </div>

    <!-- 分页条信息 -->
    <div class="col-md-6" id="page_nav_area">

    </div>

  </div>
</div>
<script type="text/javascript">
    //1.页面加载完成之后，直接去发送一个ajax请求，要到分页数据
    $(function () {
        //去首页
        to_page(1);
    });
    //跳转页码的功能
    function to_page(pn){
        $.ajax({
            url:"${APP_PATH}/emps",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                //console.log(result);
                //1、解析并显示员工数据
                build_emps_table(result);
                //2、解析并显示分页信息
                build_page_info(result);
                //3、解析显示分页条数据
                build_page_nav(result);
            }
        });
    }
    //解析并显示员工数据
    function build_emps_table(result){
        //清空table表格
        $("#emps_table tbody").empty();
        var emps=result.data.pageInfo.list;//所有的员工数据
        //遍历所有的员工数据
        $.each(emps,function(index,item){
            //alert(item.empName);
            //构建表格
            var empIdTd=$("<td></td>").append(item.empId);
            var empNameTd=$("<td></td>").append(item.empName);
            var genderTd=$("<td></td>").append(item.gender=='M'?"男":"女");
            var emailTd=$("<td></td>").append(item.email);
            var deptNameTd=$("<td></td>").append(item.department.deptName);
            /**
             <button class="btn btn-primary btn-sm edit_btn">
             <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
             编辑
             </button>
             */
            var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            var delBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>").append(empIdTd)
                .append(empNameTd)
                .append(genderTd)
                .append(emailTd)
                .append(deptNameTd)
                .append(btnTd)
                .appendTo("#emps_table tbody");
        });
    }
    //解析显示分页信息的
    function build_page_info(result){
        //分页列表清空
        $("#page_info_area").empty();
        $("#page_info_area").append("当前"+result.data.pageInfo.pageNum+"页,总共"+result.data.pageInfo.pages+"页,总共"+result.data.pageInfo.total+"记录数");
    }
    /**
     <nav aria-label="Page navigation">
     <ul class="pagination">
     <li>
     <a href="#" aria-label="Previous">
     <span aria-hidden="true">«</span>
     </a>
     </li>
     <li><a href="#">1</a></li>
     <li><a href="#">2</a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">4</a></li>
     <li><a href="#">5</a></li>
     <li>
     <a href="#" aria-label="Next">
     <span aria-hidden="true">»</span>
     </a>
     </li>
     </ul>
     </nav>
     */
    //解析并显示分页条,点击分页能去下一页..
    function build_page_nav(result){
        //page_nav_area
        //清空列表
        $("#page_nav_area").empty();
        var ul=$("<ul></ul>").addClass("pagination");
        //首页
        var firstPageLi=$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        //前一页
        var prePageLi = $("<li></li>").append($("<a></a>").append("«"));
        //如果没有前页的话，首页和前页隐藏
        if(result.data.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            //首页的点击事件
            firstPageLi.click(function(){
                to_page(1);
            });
            //前一页的点击事件
            prePageLi.click(function(){
                to_page(result.data.pageInfo.pageNum -1);
            });
        }
        //后一页
        var nextPageLi = $("<li></li>").append($("<a></a>").append("»"));
        //末页
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        //如果没有下一页的话，下一页的末页隐藏
        if(result.data.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            //下一页的点击事件
            nextPageLi.click(function(){
                to_page(result.data.pageInfo.pageNum +1);
            });
            //末页的点击事件
            lastPageLi.click(function(){
                to_page(result.data.pageInfo.pages);
            });
        }
        //添加首页和前一页
        ul.append(firstPageLi).append(prePageLi);
        //遍历给ul添加页码提示
        $.each(result.data.pageInfo.navigatepageNums,function(index,item){
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            //按钮加深颜色
            if(result.data.pageInfo.pageNum==item){
                numLi.addClass("active");
            }
            //页码的点击事件
            numLi.click(function () {
                to_page(item);
            });
            //遍历给ul添加页码提示
            ul.append(numLi);
        });
        //添加下一页和末页的提示  
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入到nav元素中
        var navEle=$("<nav></nav>").append(ul);
        //把nav元素放到div中
        navEle.appendTo("#page_nav_area");
    }
</script>
</body>
</html>