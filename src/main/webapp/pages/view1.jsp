<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Bienvenue dans view1</h1>

    <h3>Liste des fruits :</h3>

    <ul>
        <% 
            // Récupération de la liste envoyée par le contrôleur
            List<String> fruits = (List<String>) request.getAttribute("fruits"); 
            if (fruits != null) {
                for (String f : fruits) { 
        %>
                    <li><%= f %></li>
        <% 
                }
            } else { 
        %>
                <li>Aucun fruit reçu</li>
        <% 
            } 
        %>
    </ul>

</body>
</html>
