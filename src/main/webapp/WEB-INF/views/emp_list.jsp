<%--
  Created by IntelliJ IDEA.
  User: 86137
  Date: 2019/9/19
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //设置开句对路径
    String contextPath = request.getContextPath();
    request.setAttribute("APP_PATH", contextPath);
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.css">
</head>
<body>
<table class="table table-bordered">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>年龄</th>
        <th>部门</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.ename}</td>
            <td>${employee.sex}</td>
            <td>${employee.age}</td>
            <td>${employee.dname}</td>
            <td><a href="${APP_PATH}/getEmpById?id=${employee.id}" class="btn btn-success btn-sm">修改</a></td>
        </tr>
    </c:forEach>
</table>

</body>
<script src="${APP_PATH}/static/js/jquery-1.12.4.min.js"></script>
<script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</html>
