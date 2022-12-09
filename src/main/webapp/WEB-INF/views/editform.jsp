<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Do Your Assignment</title>
    <link rel="stylesheet" href="${path}/resources/css/my.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function validationCheck() {
            var fname = document.getElementById("name").value;
            if(fname.length < 2){
                alert("이름은 2자 이상 입력하세요");
                fname.focus();
                return false;
            }

            var indate = document.getElementById("createDate").value;
            var outdate = document.getElementById("dueDate").value;
            if(indate > outdate){
                alert("마감 날짜가 생성 날짜 보다 더 느립니다.");
                indate.focus();
                return false;
            }
        }

        //Double Validation Check by bootstrap
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByClassName('needs-validation');
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();


    </script>
    <script>
        function trueOrFalse(abc){
            var trueFalse = abc;
            if (trueFalse == 0){
                document.write("X") ;
            }
            else document.write("0");
        }
    </script>
</head>
<body>


<div>
    <div id="header">
        <a id="homeTitle" href="list" style="color: #225699">Do Your Assignment</a>
    </div>

</div>

<div id="space" style="margin-top: 7%"></div>

<div id="resTitle" class="container">
    <div class="row">
        <div class="col-12">Assignment Update</div>
    </div>
    <hr>
</div>

<div id="formdiv" class="container">
    <form:form  modelAttribute="u" action="../editok" method="POST" class="needs-validation" name="assignment" onsubmit="return validationCheck()" >
        <form:hidden path="assignNum"/>
        <div class="row mb-5">
            <div class="col-md-4">
                <label class="form-label" for="assignLevel">난이도</label>
                <form:input path="assignLevel" id="assignLevel" cssClass="form-control"/>
                <div class="invalid-feedback">과제 난이도를 알려 주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="assignName">과제 이름</label>
                <form:input path="assignName" id="assignName" cssClass="form-control" />
                <div class="invalid-feedback">과제 이름을 알려 주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="className">해당 강의</label>
                <form:input path="className" id="className" cssClass="form-control"/>
                <div class="invalid-feedback">강의 이름을 알려 주세요</div>
            </div>
        </div>
        <div class="row mb-5">
            <div class="col-md-4">
                <label class="form-label" for="createDate">과제 배포 날짜</label>
                <form:input type="date" path="createDate" id="createDate" cssClass="form-control"/>
                <div class="invalid-feedback">과제 베포 날짜를 알려 주세요</div>
            </div>
            <div class="col-md-4">
                <label class="form-label" for="dueDate">과제 마감 날짜</label>
                <form:input type="date" path="dueDate" id="dueDate" cssClass="form-control"/>
                <div class="invalid-feedback">과제 마감 날짜를 알려 주세요</div>
            </div>
            <div class="col-md-2">
                <p>팀플 여부</p>
                <form:radiobutton path="teamAssign" id="teamAssignTrue" value="true" />
                <label class="form-label" for="teamAssignTrue">&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:radiobutton path="teamAssign" id="teamAssignFalse" value="false" />
                <label class="form-label" for="teamAssignFalse">&nbsp;&nbsp;X&nbsp;&nbsp;</label>
                <div class="invalid-feedback">팀플 여부를 알려 주세요</div>
            </div>
            <div class="col-md-2">
                <p>완료 여부</p>
                <form:radiobutton path="complete" id="completeTrue" value="true"/>
                <label class="form-label" for="completeTrue">&nbsp;&nbsp;O&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                <form:radiobutton path="complete" id="completeFalse" value="false"/>
                <label class="form-label" for="completeFalse">&nbsp;&nbsp;X&nbsp;&nbsp;</label>
                <div class="invalid-feedback">완료 여부를 알려 주세요</div>
            </div>
        </div>
        <hr>
        <div class="row mb-5">
            <div class="col-12 d-flex justify-content-end">
                <input type="reset" name="reset" value="Reset" id="add">
                <input type="submit" name="add" value="Update" id="search">
            </div>
        </div>
    </form:form>

</div>

</body>
</html>






