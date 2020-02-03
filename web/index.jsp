<%--
  Created by IntelliJ IDEA.
  User: vuanh
  Date: 2020-02-03
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>List of Product</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">
<div class="row">
    <table class="table table-striped">
      <h2>Product List</h2>
      <thead>
        <tr>
          <th>#</th>
          <th>Product Name</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Description</th>
          <th>Action</th>
        </tr>

      </thead>
      <tbody>
      <c:forEach var="product" items="${productList}">
        <tr>
          <td scope="row">${product.getId()}</td>
          <td>${product.getName()}</td>
          <td>${product.getPrice()}</td>
          <td>${product.getQuantity()}</td>
          <td>${product.getDescription()}</td>
          <td><a href="${pageContext.request.contextPath}/product?action=delete&id=${product.getId()}" onclick="return confirm('Are You Sure?')">
            <button type="button">Delete</button>
          </a>| <a href="${pageContext.request.contextPath}/product?action=getSelected&id=${product.getId()}">
            <button type="button">Edit</button>
          </a></td>
        </tr>
      </c:forEach>
      </tbody>

    </table>
  <p><a href="addProductForm.jsp"><button type="button">Add new product</button></a></p>
</div>

</body>
</html>
