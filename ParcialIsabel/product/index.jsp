<%@page import="Model.Product"%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("products");
%>
<h1>LISTADO</h1>
<a class="btn btn-success" href="gestionProduct?opt=agregar">Agregar Producto</a>&nbsp;
<a class="btn btn-info end" href="index.jsp">Volver</a>
<table border="" style="text-align: center">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Provider</th>
        <th>Description</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Online</th>
        <th>Category</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (Product product : products) {
    %>
    <tr>
        <td><%= product.getId() %>
        </td>
        <td><%= product.getName() %>
        </td>
        <td><%= product.getProvider() %>
        </td>
        <td><%= product.getDescription() %>
        </td>
        <td><%= product.getPrice() %>
        </td>
        <td><%= product.getStock() %>
        </td>
        <td><%= product.isOnline() %>
        </td>
        <td><%= product.getCategory().getName() %>
        </td>
        <td>
            <a href="gestionProduct?opt=eliminar&pos=<%= product.getId() %>">Eliminar</a>&nbsp;
            <a href="gestionProduct?opt=editar&pos=<%= product.getId() %>">Editar</a>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
