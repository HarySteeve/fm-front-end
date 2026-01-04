<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Mix Params</title>
</head>
<body>

<h2>Test @PathVariable + @Param + Map</h2>

<form method="post"
      action="<%= request.getContextPath() %>/test-mix/42">

    <label>Nom :</label>
    <input type="text" name="name" /><br/><br/>

    <label>Age :</label>
    <input type="number" name="age" /><br/><br/>

    <label>Langages :</label><br/>
    <input type="checkbox" name="lang" value="Java" /> Java<br/>
    <input type="checkbox" name="lang" value="Python" /> Python<br/>
    <input type="checkbox" name="lang" value="C#" /> C#<br/><br/>

    <button type="submit">Envoyer</button>
</form>

</body>
</html>
