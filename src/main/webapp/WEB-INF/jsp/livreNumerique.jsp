<%@ page import="beans.Support" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Type" %><%--
  Created by IntelliJ IDEA.
  User: Meunier
  Date: 06/10/2020
  Time: 09:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Livres numériques</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
    <div class="col-md-12 text-center">
        <hr>
        <h2 id="mon-texte" class="text-white font-weight-light"><a href="/accueil"><span class="float-right"><i class=" text-white fas fa-sign-out-alt"></i></span></a></h2>
        <hr>
    </div>
</div>
<div style ="background-color: white;margin-top: 50px; max-width: 80%" class="container">
    <div class="row">
        <div class="col-md-12">
            <br>

            <h2 class="text-center display-4 font-weight-light">Les livres numériques</h2>
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
                    List<Support> list = (ArrayList<Support>)request.getAttribute("livresNumeriques");
                    for (Support supportLivreNumerique : list) {
                %>
                <tr>
                    <td> <% out.print(supportLivreNumerique.getTitre().toUpperCase());%></td>
                    <td> <% out.print(supportLivreNumerique.getAuteur());%></td>
                    <td> <% out.print(supportLivreNumerique.getDate());%></td>
                    <td> <% out.print(supportLivreNumerique.getQuantite());%></td>
                    <td> <% out.print(supportLivreNumerique.getType().getLibelle_type());%></td>
                    <td>
                        <div class="float-right">
                            <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierLivreNumerique" type="button" class="btn btn-warning" onclick="modifier('<% out.print(supportLivreNumerique.getId_support());%>', '<% out.print(supportLivreNumerique.getTitre());%>', '<% out.print(supportLivreNumerique.getAuteur());%>', '<% out.print(supportLivreNumerique.getDate());%>', '<% out.print(supportLivreNumerique.getQuantite());%>', '<% out.print(supportLivreNumerique.getType().getId_type());%>')" value="Modifier"/>
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerLivreNumerique<%out.print(supportLivreNumerique.getId_support());%>">Archiver</button>
                            <!-- The Modal Professor DELETE -->
                            <div class="modal fade" id="supprimerLivreNumerique<% out.print(supportLivreNumerique.getId_support());%>">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal DELETE Header -->
                                        <div class="modal-header background-color-classe">
                                            <h4 class="modal-title text-color-items">Archiver un livre numérique</h4>
                                            <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal DELETE body -->
                                        <div class="modal-body text-center">
                                            <p>Etes-vous sûr de vouloir archiver ce livre numérique :</p>
                                            <p><span style="font-weight: bold; font-size: 20px"><% out.print(supportLivreNumerique.getTitre());%>  </span>? </p>
                                        </div>

                                        <!-- Modal DELETE footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success mr-auto" data-dismiss="modal">Annuler</button>
                                            <form class="float-right" action="livre_numerique" method="post">
                                                <input hidden type="text" name="idLivreNumerique" value="<% out.print(supportLivreNumerique.getId_support());%>"/>
                                                <input type="submit" class="btn btn-danger" name="supprimerLivreNumerique" value="Archiver"/>
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

            <div class="modal fade" id="modifierLivreNumerique">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="livre_numerique" method="post">
                            <input hidden type="text" id="idLivreNumeriqueModifier" name="idLivreNumeriqueModifier">

                            <!-- Modal UPDATE Header -->
                            <div class="modal-header background-color-classe">
                                <h4 class="modal-title text-color-items">Modifier un livre numérique</h4>
                                <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal UPDATE body -->
                            <div class="modal-body">

                                <div class="form-group">
                                    <label for="modifierNomLivreNumerique">Titre</label>
                                    <input type="text" class="form-control" id="modifierNomLivreNumerique" name="modifierNomLivreNumerique" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierAuteurLivreNumerique">Auteur</label>
                                    <input type="text" class="form-control" id="modifierAuteurLivreNumerique" name="modifierAuteurLivreNumerique" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierAnneeLivreNumerique">Date</label>
                                    <input type="text" class="form-control" id="modifierAnneeLivreNumerique" name="modifierAnneeLivreNumerique" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierQuantiteLivreNumerique">Quantité</label>
                                    <input type="number" value="" class="form-control" id="modifierQuantiteLivreNumerique" name="modifierQuantiteLivreNumerique" required>
                                </div>
                                <div class="form-group" id ="test">
                                    <label for="modifierTypeLivreNumerique">Type </label>
                                    <select id="modifierTypeLivreNumerique" name="modifierTypeLivreNumerique" class="form-control">
                                        <%
                                            List<Type> listeTypes = (ArrayList<Type>)request.getAttribute("types");
                                            for (Type type : listeTypes) {
                                        %>

                                        <option style="white-space: pre"  value=<%out.println(type.getId_type());%> <%= type.getId_type() == 4 ?" selected":"" %>>
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
<script>
    function modifier(id_LivreNumerique, titre_LivreNumerique, auteur_LivreNumerique, annee_LivreNumerique, quantite_LivreNumerique, type_LivreNumerique){
        //alert(id_classe+" "+nom_classe+" "+annee_classe+" "+id_niveau);
        $("#idLivreNumeriqueModifier").attr('value', id_LivreNumerique);
        $("#modifierNomLivreNumerique").attr('value', titre_LivreNumerique);
        $("#modifierAuteurLivreNumerique").attr('value', auteur_LivreNumerique);
        $("#modifierAnneeLivreNumerique").attr('value', annee_LivreNumerique);
        $("#modifierQuantiteLivreNumerique").attr('value', quantite_LivreNumerique);
        $("#modifierTypeLivreNumerique").attr('value', type_LivreNumerique);
    }
</script>

</body>
</html>
