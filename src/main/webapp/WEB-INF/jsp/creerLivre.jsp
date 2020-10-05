<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un livre</title>
</head>
<%@include file="navbar.jsp" %>
<!-- Partie main -->
<main class="col-md-10 float-left col pl-md-2 main">
    <!-- Titre + logo connexion -->
    <div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
        <div class="col-md-12 text-center">
            <hr>
            <h2 id="mon-texte" class="text-white font-weight-light"><span class="float-right"><i class="text-white fas fa-user"></i></span></h2>
            <hr>
        </div>
    </div>
    <!-- Informations et texte-->
    <div class="container">
        <h2>Ajouter un livre</h2>
        <p>Les champs ci-dessous sont obligatoires</p>
        <form action="livre" class="was-validated">
            <div class="form-group">
                <label for="titreLivre">Titre</label>
                <input type="text" class="form-control" id="titreLivre" placeholder="Titre du livre" name="titreLivre" required>
                <div class="valid-feedback">Valide</div>
                <div class="invalid-feedback">Entrez un titre valide</div>
            </div>
            <div class="form-group">
                <label for="auteurLivre">Auteur</label>
                <input type="text" class="form-control" id="auteurLivre" placeholder="Auteur" name="auteurLivre" required>
                <div class="valid-feedback">Valide</div>
                <div class="invalid-feedback">Entrez un auteur valide</div>
            </div>
            <div class="form-group">
                <label for="anneeLivre">Année</label>
                <input type="date" class="form-control" id="anneeLivre" placeholder="Année de parution" name="anneeLivre" required>
                <div class="valid-feedback">Valide</div>
                <div class="invalid-feedback">Entrez une date valide</div>
            </div>

            <button type="submit" class="btn btn-primary">Créer</button>
        </form>
    </div>
</main>
</body>
</html>
