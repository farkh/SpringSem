<%--
  Created by IntelliJ IDEA.
  User: viktoriya
  Date: 19.03.17
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang = "en">
<head>
    <title>Books Master</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <style type="text/css">

        h2 {
            text-align: center;
        }

    </style>
</head>
<body>
<ul class="nav navbar-nav navbar-right">
    <li><a href="#">Sign in</a></li>
    <li><a href="#">Sign up</a> </li>
</ul>
<ul class="nav nav-pills">
    <li role="presentation" class="active"><a href="#">BOOKSMASTER</a></li>
    <li role="presentation"><a href="/books">Bookslist</a></li>
    <li role="presentation"><a href="/books/add">Add a book</a></li>
    <li role="presentation"><a href="about.jsp">About</a></li>
    <li role="presentation"><a href="contacts.jsp">Contacts</a></li>
</ul>
<h2>Let's start with BookMaster!</h2>
<h2>Add your book <a href="/books/add" class="btn btn-link">here</a></h2>
</body>
</html>
