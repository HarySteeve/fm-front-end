<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Framework Demo</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background: #f5f7fb; color: #111827; }
        .container { max-width: 900px; margin: 40px auto; background: #fff; border-radius: 10px; box-shadow: 0 8px 24px rgba(0,0,0,.08); padding: 24px; }
        h1 { margin-top: 0; }
        .desc { color: #6b7280; }
        .links { display: grid; gap: 10px; margin-top: 20px; }
        .links a { display: block; padding: 12px 14px; border: 1px solid #e5e7eb; border-radius: 8px; text-decoration: none; color: #1d4ed8; background: #f9fafb; }
        .links a:hover { background: #eef2ff; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Tests du mini framework MVC</h1>
        <p class="desc">Espace de démonstration des routes GET/POST, des paramètres simples et du binding objet complexe.</p>

        <div class="links">
            <a href="<%= request.getContextPath() %>/about">GET + ModelAndView (liste de fruits)</a>
            <a href="<%= request.getContextPath() %>/test-rest-get">NOUVEAU: GET @Rest (JSON direct navigateur)</a>
            <a href="<%= request.getContextPath() %>/pages/postForm.jsp">POST simple avec @Param</a>
            <a href="<%= request.getContextPath() %>/pages/testMap.jsp">POST Map&lt;String, Object[]&gt;</a>
            <a href="<%= request.getContextPath() %>/pages/testMix.jsp">POST mix PathVariable + @Param + Map</a>
            <a href="<%= request.getContextPath() %>/test-binder">NOUVEAU: test RequestBinder (passengers[i].*)</a>
        </div>
    </div>
</body>
</html>