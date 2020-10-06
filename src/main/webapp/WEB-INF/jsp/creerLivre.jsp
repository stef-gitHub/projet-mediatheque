<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un livre</title>
</head>
<%@include file="navbar.jsp" %>
<!-- Partie main -->
<!-- Informations et texte-->
<div class="container">
    <h2>Ajouter un livre</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="creer_livre" method="post" class="was-validated">
        <div class="form-group">
            <label for="creerTitreLivre">Titre</label>
            <input type="text" class="form-control" id="creerTitreLivre" placeholder="Titre du livre" name="creerTitreLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un titre valide</div>
        </div>
        <div class="form-group">
            <label for="creerAuteurLivre">Auteur</label>
            <input type="text" class="form-control" id="creerAuteurLivre" placeholder="Auteur" name="creerAuteurLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un auteur valide</div>
        </div>
        <div class="form-group">
            <label for="creerAnneeLivre">Année</label>
            <input type="text" class="form-control" id="creerAnneeLivre" placeholder="Année de parution" name="creerAnneeLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une date valide</div>
        </div>
        <div class="form-group">
            <label for="creerQuantiteLivre">Quantité</label>
            <input type="number" class="form-control" id="creerQuantiteLivre" placeholder="Année de parution" name="creerQuantiteLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une quantité valide</div>
        </div>

        <button type="submit" class="btn btn-primary">Créer</button>
    </form>
</div>
</main>
</body>
</html>
