<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire POST</title>
</head>
<body>
    <h1>Envoyer un message (POST)</h1>
    <form method="post" action="<%= request.getContextPath() %>/about">
        <label for="message">Message :</label>
        <input type="text" id="message" name="message" required />
        <button type="submit">Envoyer</button>
    </form>

    <p><a href="<%= request.getContextPath() %>/">Retour</a></p>
</body>
</html>
