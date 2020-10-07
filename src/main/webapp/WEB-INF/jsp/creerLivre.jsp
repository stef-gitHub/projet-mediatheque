<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un livre</title>
</head>
<%@include file="navbar.jsp" %>
<div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
    <div class="col-md-12 text-center">
        <hr>
        <h2 id="mon-texte" class="text-white font-weight-light"><a href="/accueil"><span class="float-right"><i class=" text-white fas fa-sign-out-alt"></i></span></a></h2>
        <hr>
    </div>
</div>
<div class="container">
    <h2>Ajouter un livre</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="creer_livre" method="post" class="was-validated">
        <div class="form-group">
            <label for="creerTitreLivre">Titre</label>
            <input type="text" class="form-control" id="creerTitreLivre" placeholder="ex : Voyage au bout de la nuit" name="creerTitreLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un titre valide</div>
        </div>
        <div class="form-group">
            <label for="creerAuteurLivre">Auteur</label>
            <input type="text" class="form-control" id="creerAuteurLivre" placeholder="ex : Louis Ferdinand Céline" name="creerAuteurLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un auteur valide</div>
        </div>
        <div class="form-group">
            <label for="creerAnneeLivre">Année</label>
            <input type="text" class="form-control" id="creerAnneeLivre" placeholder="ex : 1932" name="creerAnneeLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez l'année de parution</div>
        </div>
        <div class="form-group">
            <label for="creerQuantiteLivre">Quantité</label>
            <input type="number" class="form-control" id="creerQuantiteLivre" placeholder="ex : 10" name="creerQuantiteLivre" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une quantité</div>
        </div>

        <button type="submit" class="btn btn-primary">Créer</button>
    </form>
</div>
</main>
</body>
</html>
