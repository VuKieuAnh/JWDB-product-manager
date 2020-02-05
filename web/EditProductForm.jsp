<%@ page import="com.codegym.pm.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">
<%Product selectedProduct = (Product) request.getAttribute("selectedProduct");%>
<form style="padding-top: 15px" method="post" action="${pageContext.request.contextPath}/product">
    <legend><h2>Edit Product</h2></legend>

    <input type="number" name="id" readonly="true" hidden value="<%=selectedProduct.getId()%>"></p>
    <div class="form-group">
        <label>Name</label> <input class="form-control" type="text" name="name" value="<%=selectedProduct.getName()%>">
    </div>
    <div class="form-group">
        <label>Price</label> <input class="form-control" type="number" name="price"
                                    value="<%=selectedProduct.getPrice()%>">
    </div>

    <div class="form-group">
        <label>Quantity</label> <input class="form-control" type="number" name="quantity"
                                       value="<%=selectedProduct.getQuantity()%>">
    </div>
    <div class="form-group">
        <label>Color</label> <input class="form-control" type="text" name="color"
                                    value="<%=selectedProduct.getColor()%>">
    </div>
    <div class="form-group">
        <label>Description</label> <textarea class="form-control" name="description"
                                             ><%=selectedProduct.getDescription()%></textarea>
    </div>

    <button class="btn btn-success" type="submit" name="action" value="Edit" onclick="return confirm('Are You Sure?')">
         Update
    </button>
    |<a href="product?action=view">
    <button class="btn btn-secondary" type="button">Back</button>
</a>
</form>
</body>
</html>