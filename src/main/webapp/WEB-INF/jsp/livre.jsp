<%@ page import="beans.Support" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Type" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Livre</title>
</head>

<%@include file="navbar.jsp" %>

            <!-- Informations et texte-->
            <div style ="background-color: white;margin-top: 50px; max-width: 80%" class="container">
                <div class="row">
                    <div class="col-md-12">
                        <br>
                        <div class="float-right"> <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#creerLivre">Ajouter un livre</button>

                            <!-- The Modal Classe CREATE -->
                            <div class="modal fade" id="creerLivre">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="livre" method="post">
                                            <!-- Modal CREATE Header -->
                                            <div class="modal-header background-color-professeur">
                                                <h4 class="modal-title text-color-items">Création d'un livre</h4>
                                                <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal CREATE body -->
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="nomLivre">Nom du livre</label>
                                                    <input type="text" class="form-control" id="nomLivre" name="nomLivre" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="nomAuteurLivre">Nom de l'auteur</label>
                                                    <input type="text" class="form-control" id="nomAuteurLivre" name="nomAuteurLivre" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="dateLivre">Date</label>
                                                    <input type="text" class="form-control" id="dateLivre" name="dateLivre" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="quantiteLivre">Quantité</label>
                                                    <input type="text" class="form-control" id="quantiteLivre" name="quantiteLivre" required>
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
                        <h2 class="text-center display-4 font-weight-light">Les livres</h2>
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th>Titre</th>
                                <th>Auteur</th>
                                <th>année</th>
                                <th>Quantité </th>
                                <th>Type</th>
                                <th><div style="text-align: center">Actions</div></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                List<Support> list = (ArrayList<Support>)request.getAttribute("livres");
                                for (Support supportLivres : list) {
                            %>
                            <tr>
                                <td> <% out.print(supportLivres.getTitre().toUpperCase());%></td>
                                <td> <% out.print(supportLivres.getAuteur());%></td>
                                <td> <% out.print(supportLivres.getDate());%></td>
                                <td> <% out.print(supportLivres.getQuantite());%></td>
                                <td> <% out.print(supportLivres.getType().getLibelle_type());%></td>
                                <td>
                                    <div class="float-right">
                                        <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierLivre" type="button" class="btn btn-warning" onclick="modifier('<% out.print(supportLivres.getId_support());%>', '<% out.print(supportLivres.getTitre());%>', '<% out.print(supportLivres.getAuteur());%>', '<% out.print(supportLivres.getDate());%>', '<% out.print(supportLivres.getQuantite());%>', '<% out.print(supportLivres.getType().getId_type());%>')" value="Modifier"/>
                                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerLivre<% // out.print(classe.getId_classe());%>">Archiver</button>
                                        <!-- The Modal Professor DELETE -->
                                        <div class="modal fade" id="supprimerLivre<% // out.print(livre.getId_livre());%>">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal DELETE Header -->
                                                    <div class="modal-header background-color-classe">
                                                        <h4 class="modal-title text-color-items">Archiver un livre</h4>
                                                        <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                                    </div>

                                                    <!-- Modal DELETE body -->
                                                    <div class="modal-body text-center">
                                                        <p>Etes-vous sûr de vouloir archiver ce livre :</p>
                                                        <p><span style="font-weight: bold; font-size: 20px"><% // out.print(livre.getTitre());%>  </span>? </p>
                                                    </div>

                                                    <!-- Modal DELETE footer -->
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-success mr-auto" data-dismiss="modal">Annuler</button>
                                                        <form class="float-right" action="livre" method="post">
                                                            <input hidden type="text" name="idLivre" value="<% // out.print(livre.getId_livre());%>"/>
                                                            <input type="submit" class="btn btn-danger" name="supprimerLivre" value="Archiver"/>
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

                        <div class="modal fade" id="modifierLivre">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="livre" method="post">
                                        <input hidden type="text" value="" name="idLivreModifier" id="idLivreModifier"/>

                                        <!-- Modal UPDATE Header -->
                                        <div class="modal-header background-color-classe">
                                            <h4 class="modal-title text-color-items">Modifier un livre</h4>
                                            <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal UPDATE body -->
                                        <div class="modal-body">

                                            <div class="form-group">
                                                <label for="modifierNomLivre">Titre</label>
                                                <input type="text" class="form-control" id="modifierNomLivre" name="modifierNomLivre" value="" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="modifierAuteurLivre">Auteur</label>
                                                <input type="text" class="form-control" id="modifierAuteurLivre" name="modifierAuteurLivre" value="" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="modifierAnneeLivre">Date</label>
                                                <input type="text" class="form-control" id="modifierAnneeLivre" name="modifierAnneeLivre" value="" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="modifierQuantiteLivre">Quantité</label>
                                                <input type="number" value="" class="form-control" id="modifierQuantiteLivre" name="modifierQuantiteLivre" required>
                                            </div>
                                            <div class="form-group" id ="test">
                                                <label for="modifierTypeLivre">Type de livre</label>
                                                <select id="modifierTypeLivre" name="modifierTypeLivre" class="form-control">
                                                    <%
                                                        List<Type> listeTypes = (ArrayList<Type>)request.getAttribute("types");
                                                        for (Type type : listeTypes) {
                                                    %>
                                                    <option style="white-space: pre" value=<%out.println(type.getId_type());%>>
                                                        <% out.println(type.getLibelle_type());%></option>
                                                    <% } %>
                                                </select>
                                            </div>
                                        </div>

                                        <!-- Modal UPDATE footer -->
                                        <div class="modal-footer">
                                            <input type="submit" class="btn btn-warning" name="submit" value="Modifier"/>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                </div>
            </div>
        </main>
    </div>
</div>
<script>
    function modifier(id_livre, titre_livre, auteur_livre, annee_livre, quantite_livre, type_livre){
        //alert(id_classe+" "+nom_classe+" "+annee_classe+" "+id_niveau);
        $("#idLivreModifier").attr('value', id_livre);
        $("#modifierNomLivre").attr('value', titre_livre);
        $("#modifierAuteurLivre").attr('value', auteur_livre);
        $("#modifierAnneeLivre").attr('value', annee_livre);
        $("#modifierQuantiteLivre").attr('value', quantite_livre);
        $("#modifierTypeLivre").attr('value', type_livre);
    }
</script>
</body>
</html>