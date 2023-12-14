<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: nisar
  Date: 22-11-2023
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Home Page</title>
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center"> Welcome to Todo manager</h1>

    <c:if test="${not empty msg}">
    <div class="alert alert-success">
        <b><c:out value="${msg}"/></b>
    </div>
    </c:if>

    <div class="row mt-4">
        <div class="col-md-2">
<%--            <h3 class="text-center">Options</h3>--%>
    <div class="list-group">
        <button type="button" class="list-group-item list-group-item-action active">
            Menu
        </button>

        <a class="list-group-item list-group-item-action" href="<c:url value='/add'/>">Add TODO</a>
        <a type="button" class="list-group-item list-group-item-action"  href="<c:url value='/viewTodo'/>">View TODO</a>
    </div>
        </div>
        <div class="col-md-10">
<%--            <c:out value="${name}"/>--%>
            <c:if test="${name.equals(\"home\") || name.equals(\"viewTodo\")}">
                <h1 class="text-center"> All Todos</h1>
                    <c:forEach var="i" items="${todoList}">
                    <div class="card">
                        <div class="card-body">
                            <h3><c:out value="${i.title}" /></h3>
                            <p><c:out value="${i.content}"/> <br/>
                            <c:out value="${i.todoDate}"/></p>
                        </div>
                    </div>
                    </c:forEach>
            </c:if>



    <c:if test="${name.equals(\"add\")}"> <h1 class="text-center">Add Todo</h1>

        <form:form action="saveTodo" method="post" modelAttribute="todo">
            <div class="form-group">
                <form:input path="title" cssClass="form-control" placeholder="Title"/>
            </div>

            <div class="form-group">
                <form:textarea rows="5" cols="10" cssStyle="height: 10vw" path="content" cssClass="form-control" placeholder="Description"/>
            </div>
            <div class="container text-center">
                <button class="btn btn-outline-success">Add Todo</button>
            </div>

        </form:form>
    </c:if>


        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>