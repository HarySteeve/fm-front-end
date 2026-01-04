<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Set"%>
<%@ page import="java.lang.Class"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Test Get et Post</h1>
    <p><a href="<%= request.getContextPath() %>/about">Voir la page About (GET)</a></p>
    <p><a href="<%= request.getContextPath() %>/pages/postForm.jsp">Aller au formulaire (POST)</a></p>
</body>
</html>