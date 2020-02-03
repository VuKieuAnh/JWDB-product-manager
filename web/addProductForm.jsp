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
    <title>$Title$</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">
<div class="row">
    <form method="post" action="${pageContext.request.contextPath}/product">
        <fieldset style="width: fit-content; height: fit-content">
            <legend><h2>Add new product</h2></legend>
            <p>Name:&nbsp;<input type="text" name="name"></p>
            <p>Price:&nbsp;<input type="number" name="price"></p>
            <p>Quantity:&nbsp;<input type="number" name="quantity"></p>
            <p>Description:&nbsp;<input type="text" name="description"></p>
        </fieldset>
        <p>
            <button type="submit" name="action" value="Add" onclick="return confirm('Are You Sure?')">Add</button>
        </p>
    </form>
    <p><a href="product?action=view">
        <button type="button">Back</button>
    </a></p>
</div>

</body>
</html>
