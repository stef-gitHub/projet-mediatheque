<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Type" %>
<%@ page import="beans.Support" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un livre</title>
</head>
<%@include file="navbar.jsp" %>
<!-- Partie main -->
<!-- Informations et texte-->
<div class="container">
    <h2>Ajouter un emprunt</h2>
    <p>Les champs ci-dessous sont obligatoires</p>
    <form action="creer_emprunt" method="POST" class="was-validated">
        <div class="form-group" id ="abonnees">
            <label for="afficherAbonnees">Abonnées </label>
            <select id="afficherAbonnees" name="afficherAbonnees" class="form-control">
                <%
                    List<Utilisateur> listeAbonnees = (ArrayList<Utilisateur>)request.getAttribute("abonnees");
                    for (Utilisateur abonnee : listeAbonnees) {
                %>

                <option style="white-space: pre"  value=<%out.println(abonnee.getId_utilisateur());%>>
                    <% out.println(abonnee.getPrenom() + " - " + abonnee.getNom());%></option>
                <% } %>
            </select>
        </div>
        <div class="form-group" id ="types">
            <label for="afficherTypes">Types </label>
            <select id="afficherTypes" name="afficherTypes" class="form-control" onchange="myFunction()">
                <%
                    List<Type> listeTypes = (ArrayList<Type>)request.getAttribute("types");
                    for (Type type : listeTypes) {
                %>

                <option style="white-space: pre" value=<%out.println(type.getId_type());%> >
                    <% out.println(type.getLibelle_type());%> </option>
                <% } %>
            </select>


        </div>
        <div class="form-group" id ="support" >

            <label for="afficherSupport">Supports </label>
            <select id="afficherSupport" name="afficherSupport" class="form-control">

            </select>
        </div>
        <div class="form-group">
            <label for="creerAuteurLivre">Auteur</label>
            <input type="text" class="form-control" id="creerAuteurLivre" placeholder="ex : Charles Beaudelaire" name="creerAuteurLivre" >
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez un auteur valide</div>
        </div>
        <div class="form-group">
            <label for="creerAnneeLivre">Année</label>
            <input type="text" class="form-control" id="creerAnneeLivre" placeholder="Année de parution" name="creerAnneeLivre" >
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez l'année de parution</div>
        </div>
        <div class="form-group">
            <label for="creerQuantiteLivre">Quantité</label>
            <input type="number" class="form-control" id="creerQuantiteLivre" placeholder="ex : 10" name="creerQuantiteLivre" >
            <div class="valid-feedback">Valide</div>
            <div class="invalid-feedback">Entrez une quantité</div>
        </div>

        <button type="submit" class="btn btn-primary">Créer</button>
    </form>
</div>
</main>
<script type="text/javascript">
    function myFunction() {
        var x = document.getElementById("afficherTypes").value;
        console.log("x", x);

        $.ajax({
            type:"GET",
            url: "creer_emprunt?demo=" + x,
            data: {"demo":x},
            success: function(data) {

                var objList = '<%=session.getAttribute("supports")%>';
                $("afficherTypes").append(objList);
                console.log(objList);

            }
        });

        /*$.get("creer_emprunt", function(x, status){
            alert(x);
        })*/
    }
</script>
</body>
</html>
