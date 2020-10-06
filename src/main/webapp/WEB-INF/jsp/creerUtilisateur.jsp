<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un livre</title>
</head>
<%@include file="navbar.jsp" %>
<!-- Partie main -->
<!-- Informations et texte-->
<div class="container">
    <h2>Créer un utilisateur</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="creer_livre" method="post" class="was-validated">
        <div class="form-group">
            <label for="creerTitreLivre">Nom</label>
            <input type="text" class="form-control" id="creerTitreLivre" placeholder="Nom" name="creerNomUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un nom</div>
        </div>
        <div class="form-group">
            <label for="creerPrenomUtilisateur">Prénom</label>
            <input type="text" class="form-control" id="creerPrenomUtilisateur" placeholder="Prénom" name="creerPrenomUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un prénom</div>
        </div>
        <div class="form-group">
            <label for="creerMdpUtilisateur">Mot de passe</label>
            <input type="password" class="form-control" id="creerMdpUtilisateur" placeholder="votre mot de passe" name="creerMdpUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un mot de passe d'au moins 8 caractères dont 1 majuscule, 1 chiffre, 1 caractère spécial (@?!#$)</div>
        </div>
        <div class="form-group">
            <label for="creerAdresseUtilisateur">Adresse</label>
            <input type="text" class="form-control" id="creerAdresseUtilisateur" placeholder="ex : 12 rue du cesi" name="creerAdresseUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une adresse</div>
        </div>
        <div class="form-group">
            <label for="creerVilleUtilisateur">Ville</label>
            <input type="text" class="form-control" id="creerVilleUtilisateur" placeholder="ex: LE MANS" name="creerVilleUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une ville</div>
        </div>
        <div class="form-group">
            <label for="creerCpUtilisateur">Code postal</label>
            <input type="number" class="form-control" id="creerCpUtilisateur" placeholder="ex : 72000" name="creerCpUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un code postal</div>
        </div>
        <div class="form-group">
            <label for="creerTelUtilisateur">Téléphone</label>
            <input type="text" class="form-control" id="creerTelUtilisateur" placeholder="ex : 0607080906" name="creerTelUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une quantité valide</div>
        </div>
        <div class="form-group">
            <label for="creerEmailUtilisateur">Email</label>
            <input type="email" class="form-control" id="creerEmailUtilisateur" placeholder="ex : stephane@viacesi.fr" name="creerEmailUtilisateur" required>
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une adresse email valide</div>
        </div>
        <div class="form-group" id ="test">
            <h5>Sélectionnez son rôle</h5>
            <select id="selectRoleUtilisateur" name="selectRoleUtilisateur">
                <%
                    // List<Role> listRoles = (ArrayList<Role>)request.getAttribute("roles");
                    // for (Role roles : listRoles) {
                %>
                <option style="white-space: pre" value=<%//out.println(roles.getId_role());%>>
                    <%// out.println(roles.getLibelle_role().toUpperCase());%> </option>

                <% //} %>
            </select>
        </div>


        <button type="submit" class="btn btn-primary">Créer</button>
    </form>
</div>
</main>
</body>
</html>
