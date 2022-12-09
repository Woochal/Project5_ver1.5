<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Do Your Assignment</title>
  <link rel="stylesheet" href="${path}/resources/css/my.css" type="text/css">

    <script>
        function trueOrFalse(abc){
            var trueFalse = abc;
            if (trueFalse == 0){
                document.write("X") ;
            }
            else document.write("0");
        }

        function delete_ok(id){
            var a = confirm("정말로 삭제하시겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>

</head>
<div>
    <a href="login/logout" style="color: #222222; text-decoration: none">Log Out</a>
</div>

<body>

<div id="header">
  <a id="homeTitle" href="list" style="color: #225699">Do Your Assignment</a>
</div>

<div id="input">
    <input type="text">
    <input type="button" value="Search" id="search">
    <input type="button" value="Add" id="add" onclick="location.href = 'add'">
</div>

<div id="tablediv">
    <table class="table">
        <thead>
            <tr>
              <th>과제 번호</th>
              <th>&nbsp;난이도&nbsp;</th>
              <th>과제 이름</th>
              <th>해당 강의</th>
              <th>과제 배포 날짜</th>
              <th>과제 마감 날짜</th>
              <th>팀플 여부</th>
              <th>완료 여부</th>
              <th>삭제&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="u">
            <tr>
              <td><a href="editform/${u.assignNum}" style="color: #222222; text-decoration: none">${u.assignNum}</a></td>
              <td>${u.assignLevel}</td>
              <td>${u.assignName}</td>
              <td>${u.className}</td>
              <td>${u.createDate}</td>
              <td>${u.dueDate}</td>
              <td><script>trueOrFalse(${u.teamAssign});</script></td>
              <td><script>trueOrFalse(${u.complete});</script></td>
              <td><a href="javascript:delete_ok('${u.assignNum}')" style="color: #222222; text-decoration: none">Delete</a></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>


