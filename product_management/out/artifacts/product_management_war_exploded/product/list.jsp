<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 14/11/2019
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<a>
    <a href="/products?action=create">Create new product</a>
</a>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Quantity</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${requestScope['products']}" var="product">
        <tr>
            <td>
                <a href="/products?action=view&id=${product.getId()}">${product.getName()}</a>
            </td>
            <td>${product.getQuantity()}</td>
            <td>
                <a href="/products?action=edit&id=${product.getId()}">edit</a>
            </td>
            <td>
                <a href="/products?action=delete&id=${product.getId()}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
