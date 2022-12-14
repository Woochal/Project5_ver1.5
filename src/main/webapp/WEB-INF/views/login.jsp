<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Do Your Assignment</title>
    <link rel="stylesheet" href="${path}/resources/css/my.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<div id="header" style="margin-top: 3%">
    <a id="homeTitle" href="list" style="color: #225699">Do Your Assignment</a>
</div>

<div style="margin-bottom: 7%"></div>

<%--    <img src='../img/star1.png' height="250">--%>
<div id="formdiv" class="container">
    <form method="post" action="loginOk">
        <div class="row mb-5">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <label class="form-label" for="userid">User ID</label>
                <input type="text" name="userid" id="userid" class="form-control" required>
                <div class="invalid-feedback">아이디를 입력하란 말이야!!</div>
            </div>
            <div class="col-md-4"></div>
        </div>
        <div class="row mb-5">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <label class="form-label" for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control" required>
                <div class="invalid-feedback">비밀번호를 입력하란 말이야!!</div>
            </div>
            <div class="col-md-4"></div>
        </div>
        <div id="input" class="row mb-5">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="margin-left: 10%">
                <input type="submit" value="Log In" id="add">
            </div>
            <div class="col-md-4"></div>

        </div>
    </form>
</div>
</body>
</html>