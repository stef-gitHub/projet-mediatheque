<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un utilisateur</title>
</head>
<%@include file="navbar.jsp" %>

    <!-- Informations et texte-->
    <div style ="background-color: white;margin-top: 50px; max-width: 80%" class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="float-right"> <!-- Button to Open the Modal -->
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#creerUtilisateur">Créer un utilisateur</button>

                    <!-- The Modal CREATE user-->
                    <div class="modal fade" id="creerUtilisateur">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="utilisateur" method="post">

                                    <!-- Modal Header -->
                                    <div class="modal-header background-color-eleve">
                                        <h4 class="modal-title text-color-items">Création d'un élève</h4>
                                        <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                    </div>

                                    <!-- Modal CREATE body -->
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="nomUtilisateurCreer">Nom</label>
                                            <input type="text" class="form-control" id="nomUtilisateurCreer" required name="nomUtilisateurCreer">
                                        </div>
                                        <div class="form-group">
                                            <label for="prenomUtilisateurCreer">Prénom</label>
                                            <input type="text" class="form-control" id="prenomUtilisateurCreer" name="prenomUtilisateurCreer" required>
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
                                    </div>
                                    <!-- Modal CREATE footer -->
                                    <div class="modal-footer">
                                        <input type="submit" class="btn btn-success" name="submit" value="Créer"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <h2 style="text-align: center">Les utilisateurs</h2>
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Adresse</th>
                        <th>Ville</th>
                        <th>Code postal</th>
                        <th>Numéro de téléphone</th>
                        <th><div style="text-align: center">Actions</div></th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        List<Utilisateur> listUtilisateur = (ArrayList<Utilisateur>)request.getAttribute("utilisateurs");
                        for (Utilisateur utilisateur : listUtilisateur){
                    %>
                    <tr>
                        <td><% out.println(utilisateur.getNom().toUpperCase());%></td>
                        <td><% out.println(utilisateur.getPrenom().substring(0, 1).toUpperCase() + utilisateur.getPrenom().substring(1));%></td>
                        <td><% out.println(utilisateur.getAdresse());%></td>
                        <td><% out.println(utilisateur.getVille());%></td>
                        <td><% out.println(utilisateur.getCode_postal());%></td>
                        <td><% out.println(utilisateur.getNum_telephone());%></td>
                        <td>
                            <div class="float-right">
                                <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierUtilisateur" type="button" class="btn btn-warning" onclick="modifierUtilisateur('<%=utilisateur.getId_utilisateur()%>', '<%=utilisateur.getNom().toUpperCase()%>', '<%=utilisateur.getPrenom().substring(0, 1).toUpperCase() + utilisateur.getPrenom().substring(1)%>', '<%=utilisateur.getAdresse()%>', '<%=utilisateur.getVille()%>','<%=utilisateur.getCode_postal()%>', '<%=utilisateur.getNum_telephone()%>')" value="Modifier"/>
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerUtilisateur<% out.print(utilisateur.getId_utilisateur());%>">Archiver</button>

                                <div class="modal fade" id="supprimerUtilisateur<% out.print(utilisateur.getId_utilisateur());%>">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal DELETE  Header -->
                                            <div class="modal-header background-color-eleve">
                                                <h4 class="modal-title text-color-items">Archiver un utilisateur</h4>
                                                <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal DELETE body -->
                                            <div class="modal-body text-center">
                                                <p>Etes-vous sûr de vouloir archiver l'utilisateur : </p>
                                                <p><span style="font-weight: bold; font-size: 20px"><% out.print(utilisateur.getPrenom());%> <% out.print(utilisateur.getNom().toUpperCase());%> </span>? </p>
                                            </div>

                                            <!-- Modal DELETE footer -->
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success mr-auto" data-dismiss="modal">Annuler</button>
                                                <form class="float-right"  action="utilisateur" method="post">
                                                    <input hidden type="text" name="idUtilisateur" value="<% out.print(utilisateur.getId_utilisateur());%>"/>
                                                    <input type="submit" class="btn btn-danger" name="archiverUtilisateur" value="Archiver"/>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>
            <br>
            <br>
            <!-- The Modal UPDATE user-->
            <div class="modal fade" id="modifierUtilisateur">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header background-color-eleve" >
                            <h4 class="modal-title text-color-items">Modifier un utilisateur</h4>
                            <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form action="utilisateur" method="post">
                                <input hidden type="text"  name="idUtilisateurModifier" value="" id="idUtilisateurModifier"/>

                                <div class="form-group">
                                    <label for="nomUtilisateurModifier">Nom</label>
                                    <input type="text" class="form-control" id="nomUtilisateurModifier" name="nomUtilisateurModifier">
                                </div>
                                <div class="form-group">
                                    <label for="prenomUtilisateurModifier">Prénom</label>
                                    <input type="text" class="form-control" id="prenomUtilisateurModifier" name="prenomUtilisateurModifier">
                                </div>
                                <div class="form-group">
                                    <label for="adresseUtilisateurModifier">Adresse</label>
                                    <input type="text" class="form-control" id="adresseUtilisateurModifier" name="adresseUtilisateurModifier">
                                </div>

                                <div class="form-group row" style="margin-left:1px">
                                    <div class="col-xs-2">
                                        <label for="cpUtilisateurModifier">Code Postal</label>
                                        <input type="number" class="form-control" id="cpUtilisateurModifier" name="cpUtilisateurModifier">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="villeUtilisateurModifier">Ville</label>
                                    <input type="text" class="form-control" id="villeUtilisateurModifier" name="villeUtilisateurModifier">
                                </div>
                                <div class="form-group">
                                    <label for="telUtilisateurModifier">Ville</label>
                                    <input type="text" class="form-control" id="telUtilisateurModifier" name="telUtilisateurModifier">
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <input type="submit" class="btn btn-warning" name="submit" value="Modifier"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    function modifierUtilisateur(id_utilisateur, nom, prenom, adresse, ville, code_postal, tel){
        //alert(id_classe+" "+nom_classe+" "+annee_classe+" "+id_niveau);
        $("#idUtilisateurModifier").attr('value', id_utilisateur);
        $("#nomUtilisateurModifier").attr('value', nom);
        $("#prenomUtilisateurModifier").attr('value', prenom);
        $("#adresseUtilisateurModifier").attr('value', adresse);
        $("#villeUtilisateurModifier").attr('value', ville);
        $("#cpUtilisateurModifier").attr('value', code_postal);
        $("#telUtilisateurModifier").attr('value', tel);
    }
</script>

</body>
</html>
