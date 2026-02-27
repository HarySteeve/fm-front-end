<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="controller.Passenger" %>
<%@ page import="controller.ReservationRequest" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Résultat Binder</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; background: #f5f7fb; color: #1f2937; }
        .container { max-width: 1100px; margin: 32px auto; background: #fff; border-radius: 10px; box-shadow: 0 8px 24px rgba(0,0,0,0.08); padding: 24px; }
        h1 { margin-top: 0; }
        table { width: 100%; border-collapse: collapse; margin-top: 16px; }
        th, td { border: 1px solid #e5e7eb; padding: 10px; text-align: left; }
        th { background: #f9fafb; }
        .meta { display: grid; grid-template-columns: repeat(2, minmax(200px, 1fr)); gap: 10px; margin-bottom: 16px; }
        .card { border: 1px solid #e5e7eb; border-radius: 8px; padding: 12px; background: #fcfcfd; }
        .label { font-size: 12px; color: #6b7280; margin-bottom: 4px; }
        a { text-decoration: none; color: #2563eb; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Résultat du binding</h1>

        <%
            ReservationRequest reservation = (ReservationRequest) request.getAttribute("reservation");
            List<Passenger> passengers = (List<Passenger>) request.getAttribute("passengers");
            Integer totalPassengers = (Integer) request.getAttribute("totalPassengers");
            Passenger maitrePassager = (Passenger) request.getAttribute("maitrePassager");
        %>

        <div class="meta">
            <div class="card">
                <div class="label">Total passagers</div>
                <strong><%= totalPassengers == null ? 0 : totalPassengers %></strong>
            </div>
            <div class="card">
                <div class="label">Index maître</div>
                <strong><%= reservation != null && reservation.getMaitreIndex() != null ? reservation.getMaitreIndex() : "Non défini" %></strong>
            </div>
        </div>

        <h3>Passager maître détecté</h3>
        <p>
            <%= maitrePassager != null
                ? maitrePassager.getNom() + " " + maitrePassager.getPrenoms() + " | " + maitrePassager.getEmail()
                : "Aucun passager maître valide" %>
        </p>

        <h3>Liste des passagers bindés</h3>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nom</th>
                    <th>Prénoms</th>
                    <th>Email</th>
                    <th>Téléphone</th>
                    <th>Classe</th>
                    <th>Catégorie</th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (passengers != null && !passengers.isEmpty()) {
                        for (int i = 0; i < passengers.size(); i++) {
                            Passenger p = passengers.get(i);
                %>
                <tr>
                    <td><%= i %></td>
                    <td><%= p != null ? p.getNom() : "" %></td>
                    <td><%= p != null ? p.getPrenoms() : "" %></td>
                    <td><%= p != null ? p.getEmail() : "" %></td>
                    <td><%= p != null ? p.getTelephone() : "" %></td>
                    <td><%= p != null ? p.getClasse() : "" %></td>
                    <td><%= p != null ? p.getUsersCategorie() : "" %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="7">Aucun passager reçu.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

        <p style="margin-top:16px;">
            <a href="<%= request.getContextPath() %>/test-binder">Refaire un test</a> |
            <a href="<%= request.getContextPath() %>/">Retour accueil</a>
        </p>
    </div>
</body>
</html>