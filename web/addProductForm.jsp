<%--
  Created by IntelliJ IDEA.
  User: vuanh
  Date: 2020-02-03
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">
<div class="row">
    <form method="post" action="${pageContext.request.contextPath}/product">
        <h2>Add new product</h2>

        <div class="form-group">
            <label>Name</label> <input class="form-control" type="text" name="name">
        </div>
        <div class="form-group">
            <label>Price</label> <input class="form-control" type="number" name="price">
        </div>
        <div class="form-group">
            <label>Quantity</label> <input class="form-control" type="text" name="quantity">
        </div>
        <div class="form-group">
            <label>Description</label> <input class="form-control" type="text" name="description">
        </div>

        <button class="btn btn-primary" type="submit" name="action" value="Add"
                onclick="return confirm('Are You Sure?')">Add
        </button>
        <button type="button" class="btn btn-info" location.href="product?action=view">Back</button>
    </form>

</div>

</body>
</html>
