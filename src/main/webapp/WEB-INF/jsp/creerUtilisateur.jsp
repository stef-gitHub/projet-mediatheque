<%@ page import="beans.Role" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
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
    <h2>Créer un utilisateur</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="utilisateur" method="post">

        <div class="form-group">
            <label for="nomUtilisateurCreer">Nom</label>
            <input type="text" class="form-control" id="nomUtilisateurCreer" required name="nomUtilisateurCreer">
        </div>
        <div class="form-group">
            <label for="prenomUtilisateurCreer">Prénom</label>
            <input type="text" class="form-control" id="prenomUtilisateurCreer" name="prenomUtilisateurCreer" required>
        </div>
        <div class="form-group">
            <label for="mailUtilisateurCreer">Mail</label>
            <input type="email" class="form-control" id="mailUtilisateurCreer" name="mailUtilisateurCreer" required>
        </div>
        <div class="form-group">
            <label for="adresseUtilisateurCreer">Adresse</label>
            <input type="text" class="form-control" id="adresseUtilisateurCreer" name="adresseUtilisateurCreer" required>
        </div>

        <div class="form-group row" style="margin-left:1px">
            <div class="col-xs-2">
                <label for="cpUtilisateurCreer">Code Postal</label>
                <input type="number" class="form-control" id="cpUtilisateurCreer" name="cpUtilisateurCreer" required>
            </div>
        </div>
        <div class="form-group">
            <label for="villeEleveCreate">Ville</label>
            <input type="text" class="form-control" id="villeEleveCreate" name="villeEleveCreate" required>
        </div>
        <div class="form-group">
            <label for="telUtilisateurCreer">Numéro de téléphone</label>
            <input type="text" class="form-control" id="telUtilisateurCreer" name="telUtilisateurCreer" required>
        </div>
        <div class="form-group">
            <label for="creerMdpUtilisateur">Mot de passe</label>
            <input type="password" class="form-control" id="creerMdpUtilisateur" placeholder="votre mot de passe" name="creerMdpUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un mot de passe d'au moins 8 caractères dont 1 majuscule, 1 chiffre, 1 caractère spécial (@?!#$)</div>
        </div>
        <div class="form-group">
            <label for="roleUtilisateurCreer">Role</label>
            <br>
            <select id="roleUtilisateurCreer" name="roleUtilisateurCreer">
                <%
                    List<Role> listRoles = (ArrayList<Role>)request.getAttribute("roles");
                    for (Role roles : listRoles) {
                %>
                <option style="white-space: pre" value=<%out.println(roles.getId_role());%>>
                    <% out.println(roles.getLibelle_role().toUpperCase());%> </option>

                <% } %>
            </select>
        </div>

        <!-- Modal CREATE footer -->
        <div>
            <div class="alert alert-secondary" role="alert">
                Créer un utilisateur entraine la création d'un abonnnement d'un an à partir d'aujourd'hui
            </div>
            <input type="submit" class="btn btn-success" name="creerUtilisateur" value="Créer"/>
        </div>
    </form>
</div>
</main>
</body>
</html>
