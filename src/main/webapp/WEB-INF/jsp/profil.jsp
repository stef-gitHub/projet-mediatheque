<%@ page import="beans.Role" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="beans.Utilisateur" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un livre</title>
</head>
<%@include file="navbar.jsp" %>
<div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
    <div class="col-md-12 text-center">
        <hr>
        <h2 id="mon-texte" class="text-white font-weight-light"><a href="/accueil"><span class="float-right"><i class="fas fa-sign-out-alt"></i></span></a></h2>
        <hr>
    </div>
</div>
<div class="container">
    <h2>Modifier votre profil</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="profil" method="post">
        <%
            Utilisateur u = (Utilisateur)request.getAttribute("utilisateur");
        %>
        <div class="form-group">
            <label for="mailUtilisateurProfil">Mail</label>
            <input type="email" class="form-control" id="mailUtilisateurProfil" name="mailUtilisateurProfil" value="<% out.println(u.getEmail());%>" required>
        </div>
        <div class="form-group">
            <label for="adresseUtilisateurProfil">Adresse</label>
            <input type="text" class="form-control" id="adresseUtilisateurProfil" name="adresseUtilisateurProfil" value="<% out.println(u.getAdresse());%>" required>
        </div>
        <div class="form-group row" style="margin-left:1px">
            <div class="col-xs-2">
                <label for="cpUtilisateurModifier">Code Postal</label>
                <input type="number" class="form-control" id="cpUtilisateurModifier" name="cpUtilisateurModifier" value="<%out.print(u.getCode_postal());%>" required>
            </div>
        </div>
        <div class="form-group">
            <label for="villeEleveProfil">Ville</label>
            <input type="text" class="form-control" id="villeEleveProfil" name="villeEleveProfil" value="<% out.println(u.getVille());%>" required>
        </div>
        <div class="form-group">
            <label for="telUtilisateurProfil">Numéro de téléphone</label>
            <input type="text" class="form-control" id="telUtilisateurProfil" name="telUtilisateurProfil" value="<% out.println(u.getNum_telephone());%>" required>
        </div>
        <div class="form-group">
            <label for="mdpUtilisateurProfil">Mot de passe</label>
            <input type="password" class="form-control" id="mdpUtilisateurProfil" placeholder="changer mot de passe" name="mdpUtilisateurProfil">
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un mot de passe d'au moins 8 caractères dont 1 majuscule, 1 chiffre, 1 caractère spécial (@?!#$)</div>
        </div>

        <!-- Modal CREATE footer -->
        <div>
            <input type="submit" class="btn btn-success" name="utilisateurProfil" value="Modifier"/>
        </div>
    </form>
</div>
</main>
</body>
</html>
