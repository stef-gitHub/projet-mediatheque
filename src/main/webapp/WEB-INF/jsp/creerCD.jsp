<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un CD</title>
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
    <h2>Ajouter un CD</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="creer_cd" method="post" class="was-validated">
        <div class="form-group">
            <label for="creerTitreCd">Titre</label>
            <input type="text" class="form-control" id="creerTitreCd" placeholder="ex : The Dark side of the moon" name="creerTitreCd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez le titre du cd</div>
        </div>
        <div class="form-group">
            <label for="creerAuteurCd">Auteur</label>
            <input type="text" class="form-control" id="creerAuteurCd" placeholder="ex : Pink Floyd" name="creerAuteurCd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez le nom du groupe</div>
        </div>
        <div class="form-group">
            <label for="creerAnneeCd">Année</label>
            <input type="text" class="form-control" id="creerAnneeCd" placeholder="ex : 1973" name="creerAnneeCd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez l'année de sortie</div>
        </div>
        <div class="form-group">
            <label for="creerQuantiteCd">Quantité</label>
            <input type="number" class="form-control" id="creerQuantiteCd" placeholder="ex : 10" name="creerQuantiteCd" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une quantité</div>
        </div>

        <button type="submit" class="btn btn-primary">Créer</button>
    </form>
</div>
</main>
</body>
</html>
