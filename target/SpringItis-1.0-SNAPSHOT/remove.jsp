<%--
  Created by IntelliJ IDEA.
  User: viktoriya
  Date: 19.04.17
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Remove book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<ul class="nav nav-pills">
    <a href="index.jsp" class="navbar-brand">BOOKSMASTER</a>
    <li role="presentation"><a href="/books">Bookslist</a></li>
    <li role="presentation"><a href="/books/add">Add a book</a></li>
    <li role="presentation"><a href="about.jsp">About us</a></li>
    <li role="presentation"><a href="contacts.jsp">Contacts</a></li>
</ul>
<br>
<a href="../../index.jsp">Back to main menu</a>
<h3> Book was successfully deleted</h3>
<br>
<a href="/books/add" class="btn btn-link">Add new book</a>

</body>
</html>
