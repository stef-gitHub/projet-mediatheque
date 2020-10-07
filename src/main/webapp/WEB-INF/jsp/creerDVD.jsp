<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un DVD</title>
</head>
<%@include file="navbar.jsp" %>
<div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
    <div class="col-md-12 text-center">
        <hr>
        <h2 id="mon-texte" class="text-white font-weight-light"><span class="float-right"><i class="fas fa-sign-out-alt"></i></span></h2>
        <hr>
    </div>
</div>
<div class="container">
    <h2>Ajouter un DVD</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="creer_dvd" method="post" class="was-validated">
        <div class="form-group">
            <label for="creerTitreDvd">Titre</label>
            <input type="text" class="form-control" id="creerTitreDvd" placeholder="ex : Orange mécanique" name="creerTitreDvd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez le titre du DVD</div>
        </div>
        <div class="form-group">
            <label for="creerAuteurDvd">Auteur</label>
            <input type="text" class="form-control" id="creerAuteurDvd" placeholder="ex : Stanley Kubrick" name="creerAuteurDvd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez le nom et prénom du réalisateur</div>
        </div>
        <div class="form-group">
            <label for="creerAnneeDvd">Année</label>
            <input type="text" class="form-control" id="creerAnneeDvd" placeholder="ex : 1972" name="creerAnneeDvd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez l'année de sortie</div>
        </div>
        <div class="form-group">
            <label for="creerQuantiteDvd">Quantité</label>
            <input type="number" class="form-control" id="creerQuantiteDvd" placeholder="ex : 10" name="creerQuantiteDvd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une quantité</div>
        </div>

        <button type="submit" class="btn btn-primary">Créer</button>
    </form>
</div>
</main>
</body>
</html>
