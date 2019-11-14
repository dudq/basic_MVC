<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 14/11/2019
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Information</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Quantity </td>
        <td>${requestScope["product"].getQuantity()}</td>
    </tr>
</table>

</body>
</html>
