<%--
  Created by IntelliJ IDEA.
  User: viktoriya
  Date: 20.04.17
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
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

<h1>edit a book</h1>
<form:form action="/books/update" method="POST" class="form-horizontal" id="fEdit" modelAttribute = "book">

    <form:input type="hidden" path="id" id="id" name="id" value="${book.id}" />

    <div class="control-group">
        <label for="bookTitle" class="control-label"></label>
        <div class="controls">
            <form:input type="text" id="bookTitle" path="bookTitle" name="bookTitle" value="${book.bookTitle}" data-validation-engine="validate[required]" />
        </div>
    </div>

    <div class="control-group">
    <label for="bookAuthor" class="control-label"></label>
    <div class="controls">
        <form:input type="text" path ="bookAuthor" id="bookAuthor" name="bookAuthor" value="${book.bookAuthor}" data-validation-engine="validate[required]" />
    </div>
</div>
    <div class="control-group">
        <label for="price" class="control-label"></label>
        <div class="controls">
            <input type="text" id="price" path = "price" name="price" value="${book.price}" data-validation-engine="validate[required,custom[email]]" />
        </div>
    </div>
 <br>
    <div class="control-group">
        <div class="controls">
            <form:button type="submit" class="btn btn-primary" > Save </form:button>
        </div>
    </div>
</form:form>
</body>
</html>