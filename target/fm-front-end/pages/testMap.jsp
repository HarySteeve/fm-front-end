<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Test Map Params</title>
</head>
<body>

<h2>Test Map&lt;String, Object[]&gt;</h2>

<form method="post" action="<%= request.getContextPath() %>/test-map">
    <label>Nom :</label>
    <input type="text" name="name" /><br/><br/>

    <label>Age :</label>
    <input type="number" name="age" /><br/><br/>

    <label>Hobbies :</label><br/>
    <input type="checkbox" name="hobby" value="sport" /> Sport<br/>
    <input type="checkbox" name="hobby" value="music" /> Music<br/>
    <input type="checkbox" name="hobby" value="coding" /> Coding<br/><br/>

    <button type="submit">Envoyer</button>
</form>

</body>
</html>
