<%@page import="Model.Category"%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Formulario de Producto</title>
</head>
<body>
<%
    ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");
%>
<h1>Formulario de Producto</h1>
<form action="gestionProduct?opt=guardar" method="POST">
    <label for="name">Nombre:</label>
    <input type="text" id="name" name="name" required><br><br>
    <label for="provider">Proveedor:</label>
    <input type="text" id="provider" name="provider" required><br><br>
    <label for="description">Descripción:</label>
    <textarea id="description" name="description" rows="4" cols="50" required></textarea><br><br>
    <label for="price">Precio:</label>
    <input type="number" id="price" name="price" step="0.01" required><br><br>
    <label for="stock">Stock:</label>
    <input type="number" id="stock" name="stock" required><br><br>
    <span>Disponible online:</span>
    <label for="online1">Si </label>
    <input type="checkbox" id="online1" name="online" value="si">&nbsp;&nbsp;
    <label for="online2">No </label>
    <input type="checkbox" id="online2" name="online" value="no"><br><br>
    <label for="category">Categoría:</label>
    <select id="category" name="category">
        <%
            for (Category category : categories) {
        %>
        <option value="<%= category.getId() %>"><%= category.getName() %></option>
        <%
            }
        %>
    </select><br><br>
    <input type="submit" value="Enviar">
</form>
</body>
</html>
