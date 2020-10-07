<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un livre numérique</title>
</head>
<%@include file="navbar.jsp" %>
<!-- Partie main -->
<!-- Informations et texte-->
<div class="container">
    <h2>Ajouter un livre numérique </h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="creer_livre_numerique" method="post" class="was-validated">
        <div class="form-group">
            <label for="creerTitreLivreNumerique">Titre</label>
            <input type="text" class="form-control" id="creerTitreLivreNumerique" placeholder="Titre du livre" name="creerTitreLivreNumerique" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un titre valide</div>
        </div>
        <div class="form-group">
            <label for="creerAuteurLivreNumerique">Auteur</label>
            <input type="text" class="form-control" id="creerAuteurLivreNumerique" placeholder="ex : Charles Beaudelaire" name="creerAuteurLivreNumerique" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un auteur valide</div>
        </div>
        <div class="form-group">
            <label for="creerAnneeLivreNumerique">Année</label>
            <input type="text" class="form-control" id="creerAnneeLivreNumerique" placeholder="Année de parution" name="creerAnneeLivreNumerique" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez l'année de parution</div>
        </div>
        <div class="form-group">
            <label for="creerQuantiteLivreNumerique">Quantité</label>
            <input type="number" class="form-control" id="creerQuantiteLivreNumerique" placeholder="ex : 10" name="creerQuantiteLivreNumerique" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une quantité</div>
        </div>

        <button type="submit" class="btn btn-primary">Créer</button>
    </form>
</div>
</main>
</body>
</html>
