<%@ page import="com.codegym.pm.model.product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">
<%product selectedProduct = (product) request.getAttribute("selectedProduct");%>
<form method="post" action="${pageContext.request.contextPath}/product">
    <legend><h2>Add new product</h2></legend>

    <input type="number" name="id" readonly="true" hidden value="<%=selectedProduct.getId()%>"></p>
    <div class="form-group">
        <label>Name</label> <input class="form-control" type="text" name="name" value="<%=selectedProduct.getName()%>">
    </div>
    <div class="form-group">
        <label>Quantity</label> <input class="form-control" type="number" name="quantity"
                                       value="<%=selectedProduct.getQuantity()%>">
    </div>
    <div class="form-group">
        <label>Description</label> <input class="form-control" name="description"
                                          value="<%=selectedProduct.getDescription()%>">
    </div>
    <div class="form-group">
        <label>Price</label> <input class="form-control" type="number" name="price"
                                    value="<%=selectedProduct.getPrice()%>">
    </div>
    <button class="btn btn-info" type="submit" name="action" onclick="return confirm('Are You Sure?')">Edit</button>
    |<a href="product?action=view">
        <button class="btn btn-info" type="button">Back</button>
    </a>
</form>

</body>
</html>