<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%--
  Created by IntelliJ IDEA.
  User: viktoriya
  Date: 05.04.17
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang = "en">
<head>
    <title>Books Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<ul class="nav nav-pills">
    <a href="index.jsp" class="navbar-brand">BOOKSMASTER</a>
    <li role="presentation"><a href="/books">Bookslist</a></li>
    <li role="presentation" class="active"><a href="#">Add a book</a></li>
    <li role="presentation"><a href="/about.jsp">About us</a></li>
    <li role="presentation"><a href="contacts.jsp">Contacts</a></li>
</ul>
<br>
<a href="../../index.jsp">Back to main menu</a>

<h1>Add a book</h1>
<form:form action="/books/add" method="post" modelAttribute="addBook" class = "adding">
    <p>Title: 
        <spring:bind path="bookTitle"> <form:input id="bookTitle" type="text" placeholder="title" path="bookTitle"/></p></spring:bind>

    <spring:bind path="bookAuthor"><p>Author: <form:input path="bookAuthor" placeholder="author" /></p></spring:bind>
    <p>Price: <spring:bind path="price"><form:input path="price" type="number"/></p></spring:bind>
    <form:button type="submit" >Add</form:button>
</form:form>

</body>
</html>

