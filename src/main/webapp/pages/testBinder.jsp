<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Test Binder | Réservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: #f5f7fb;
            color: #1f2937;
        }
        .container {
            max-width: 1100px;
            margin: 32px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.08);
            padding: 24px;
        }
        h1 {
            margin-top: 0;
            margin-bottom: 8px;
        }
        .subtitle {
            margin-top: 0;
            color: #6b7280;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 16px;
        }
        th, td {
            border: 1px solid #e5e7eb;
            padding: 10px;
            vertical-align: middle;
        }
        th {
            background: #f9fafb;
            text-align: left;
            font-size: 13px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            border: 1px solid #d1d5db;
            border-radius: 6px;
            box-sizing: border-box;
        }
        input[type="radio"] {
            width: auto;
        }
        .actions {
            display: flex;
            gap: 10px;
            margin-top: 16px;
        }
        button {
            border: 0;
            border-radius: 8px;
            padding: 10px 16px;
            cursor: pointer;
            font-weight: 600;
        }
        .btn-primary {
            background: #2563eb;
            color: #fff;
        }
        .btn-light {
            background: #e5e7eb;
            color: #111827;
        }
        .btn-danger {
            background: #ef4444;
            color: #fff;
        }
        .header-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
        }
        .small {
            font-size: 12px;
            color: #6b7280;
        }
        a {
            text-decoration: none;
            color: #2563eb;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header-actions">
            <div>
                <h1>Test professionnel du Request Binder</h1>
                <p class="subtitle">Binding d'objet complexe + liste de passagers via <code>passengers[i].*</code></p>
            </div>
            <a href="<%= request.getContextPath() %>/">Retour accueil</a>
        </div>

        <form method="post" action="<%= request.getContextPath() %>/test-binder">
            <table>
                <thead>
                    <tr>
                        <th>Nom</th>
                        <th>Prénoms</th>
                        <th>Email</th>
                        <th>Téléphone</th>
                        <th style="text-align:center">Passager maître</th>
                        <th>Classe</th>
                        <th>Catégorie</th>
                    </tr>
                </thead>
                <tbody id="passengersBody"></tbody>
            </table>

            <div class="actions">
                <button class="btn-light" type="button" id="addBtn">+ Ajouter un passager</button>
                <button class="btn-danger" type="button" id="removeBtn">- Supprimer le dernier</button>
                <button class="btn-primary" type="submit">Envoyer la réservation</button>
            </div>
            <p class="small">Le nom des champs suit la syntaxe Spring-like : <code>passengers[0].email</code>, <code>passengers[1].prenoms</code>, etc.</p>
        </form>
    </div>

    <script>
        let rowIndex = 0;
        const tbody = document.getElementById('passengersBody');

        function makeRow(i) {
            const tr = document.createElement('tr');
            tr.innerHTML = '' +
                '<td><input type="text" name="passengers[' + i + '].nom" required /></td>' +
                '<td><input type="text" name="passengers[' + i + '].prenoms" required /></td>' +
                '<td><input type="email" name="passengers[' + i + '].email" required /></td>' +
                '<td><input type="text" name="passengers[' + i + '].telephone" required /></td>' +
                '<td style="text-align:center"><input type="radio" name="maitreIndex" value="' + i + '" /></td>' +
                '<td>' +
                    '<select name="passengers[' + i + '].classe" required>' +
                        '<option value="">--Choisir--</option>' +
                        '<option value="VIP">VIP</option>' +
                        '<option value="Premium">Premium</option>' +
                        '<option value="Economiques">Economiques</option>' +
                    '</select>' +
                '</td>' +
                '<td>' +
                    '<select name="passengers[' + i + '].usersCategorie" required>' +
                        '<option value="">--Categorie--</option>' +
                        '<option value="enfants">enfants</option>' +
                        '<option value="adultes">adultes</option>' +
                        '<option value="senior">senior</option>' +
                    '</select>' +
                '</td>';
            return tr;
        }

        function addRow() {
            tbody.appendChild(makeRow(rowIndex));
            rowIndex++;
        }

        function removeLastRow() {
            if (tbody.lastElementChild) {
                tbody.removeChild(tbody.lastElementChild);
                rowIndex = Math.max(0, rowIndex - 1);
            }
        }

        document.getElementById('addBtn').addEventListener('click', addRow);
        document.getElementById('removeBtn').addEventListener('click', removeLastRow);

        addRow();
        addRow();
    </script>
</body>
</html>