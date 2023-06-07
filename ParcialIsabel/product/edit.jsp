<%@page import="Model.Category"%>
<%@page import="Model.Product"%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulario de Producto</title>
</head>
<body>
<%
    ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");
    Product product = (Product) request.getAttribute("product");
    int pos = (Integer) request.getAttribute("pos");
%>
<h1>Formulario de Producto</h1>
<form action="gestionProduct?opt=actualizar&pos=<%= pos %>" method="POST">
    <label for="name">Nombre:</label>
    <input type="text" id="name" name="name" value="<%= product.getName() %>" required><br><br>
    <label for="provider">Proveedor:</label>
    <input type="text" id="provider" name="provider" value="<%= product.getProvider() %>" required><br><br>
    <label for="description">Descripción:</label>
    <textarea id="description" name="description" rows="4" cols="50" required><%= product.getDescription() %></textarea><br><br>
    <label for="price">Precio:</label>
    <input type="number" id="price" name="price" step="0.01" value="<%= product.getPrice() %>" required><br><br>
    <label for="stock">Stock:</label>
    <input type="number" id="stock" name="stock" value="<%= product.getStock() %>" required><br><br>
    <span>Disponible online:</span>
    <label for="online1">Si </label>
    <input type="checkbox" id="online1" name="online" <% if (product.isOnline()) { %> checked="checked" <% } %> value="si">&nbsp;&nbsp;
    <label for="online2">No </label>
    <input type="checkbox" id="online2" name="online" <% if (!product.isOnline()) { %> checked="checked" <% } %> value="no"><br><br>
    <label for="category">Categoría:</label>
    <select id="category" name="category">
        <%
            for (Category category : categories) {
        %>
        <option value="<%= category.getId() %>" <% if (product.getCategory().getId() == category.getId()) { %>selected<% } %>><%= category.getName() %></option>
        <%
            }
        %>
    </select><br><br>
    <input type="submit" value="Enviar">
</form>
</body>
</html>
