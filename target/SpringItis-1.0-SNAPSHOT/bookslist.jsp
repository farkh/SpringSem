<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<%--
  Created by IntelliJ IDEA.
  User: viktoriya
  Date: 04.04.17
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html lang = "en">
<head>
    <title>List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</head>
<body>
<ul class="nav nav-pills">
    <a href="index.jsp" class="navbar-brand">BOOKSMASTER</a>
    <li role="presentation" class="active"><a href="#">BooksList</a></li>
    <li role="presentation"><a href="/books/add">Add a book</a></li>
    <li role="presentation"><a href="/about.jsp">About us</a></li>
    <li role="presentation"><a href="contacts.jsp">Contacts</a></li>
</ul>
<h1>Book list</h1>
<a href="../../index.jsp">Back to main menu</a>
<table class="table table-condensed">
    <thead>
    <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="book" items="${books}">
        <tr>
            <td> ${book.getBookTitle()}  <a href="<c:url value='/books/${book.getId()}'/>"><span class=" glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
            <td> ${book.getBookAuthor()}</td>
            <td> ${book.getPrice()}</td>
            <td>
            <form action='/books/${book.getId()}/delete' method="post" modelAttribute="deleteBook" class = "deleting">
                <input type="submit" value="delete" class="btn btn-danger" />
            </form>
            </td>
            <td>
                <spring:url value="/books/${book.getId()}/update" var="updateUrl" />
                <button class="btn btn-primary"
                        onclick="location.href='${updateUrl}'">Update</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>