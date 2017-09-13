<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: viktoriya
  Date: 04.04.17
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book ID</title>
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
    <li role="presentation" class="active"><a href="#">Show book</a></li>
</ul>
<a href="../../index.jsp">Back to main menu</a>
<div class="row">
    <div class="text-center">
        <table class="table table-stripped">
            <tr>
                <th> Book name</th>
                <th> Author </th>
                <th> Price </th>
            </tr>
            <tr>
                <td>
                    ${book.bookTitle}
                </td>
                <td>
                    ${book.bookAuthor}
                </td>
                <td>
                    ${book.price}
                </td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>