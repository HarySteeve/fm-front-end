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
    <h1>Listes des classes annotes</h1>
    <ul>
        <%
            Set<Class<?>> classes = 
                (Set<Class<?>>)application.getAttribute("annotatedClasses");

            if(classes == null) {
                out.println("<li>Aucune classe annotée trouvée.</li>");
            } else {
                for(Class<?> c : classes) {
                    out.println("<li>" + c.getName() + "</li>");
                }
            }
        %>
    </ul>
</body>
</html>