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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <%--    <div class="row">--%>
    <div style="padding-top: 20px">
        <a href="addProductForm.jsp">
            <button type="button" class="btn btn-info"><i class="fa fa-plus"></i> Add new product</button>
        </a>
        <div style="float: right">
            <form class="form-inline" method="get" action="${pageContext.request.contextPath}/product">
                <div class="form-group mx-sm-3 mb-2">
                    <input type="text" name="nameSearch" class="form-control" placeholder="Search">
                </div>
                <button class="btn btn-primary mb-2" type="submit" name="action" value="search"><i
                        class="fa fa-search"></i> Search
                </button>
            </form>
        </div>
    </div>


    <div class="panel panel-default" style="margin-top: 20px;">
        <div class="panel-heading">
            <h2 class="panel-title"><i class='fas fa-list'></i> Product List </h2>
        </div>
        <div class="panel-body">
            <table class="table table-bordered">

                <thead>
                <tr>
                    <th>#</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Color</th>
                    <th>Action</th>
                </tr>

                </thead>
                <tbody>
                <c:forEach var="product" items="${productList}">
                    <tr>
                        <td scope="row">${product.getId()}</td>
                        <td>${product.getName()}</td>
                        <td style="text-align: right">${product.getPrice()}</td>
                        <td style="text-align: right">${product.getQuantity()}</td>
                        <td>${product.getColor()}</td>
                        <td>
                            <a
                                    href="${pageContext.request.contextPath}/product?action=getSelected&id=${product.getId()}">
                                <button class="btn btn-info" type="button"><i class='fas fa-pencil-alt'></i></button>
                            </a>|
                            <a href="${pageContext.request.contextPath}/product?action=delete&id=${product.getId()}"
                               onclick="return confirm('Are You Sure?')">
                                <button class="btn btn-danger" type="button"><i class='fas fa-trash-alt'></i></button>
                            </a></td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>
</div>

<%--</div>--%>


</body>
</html>
