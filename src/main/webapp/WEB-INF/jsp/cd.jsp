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
    <title>CD</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<!-- Informations et texte-->
<div style ="background-color: white;margin-top: 50px; max-width: 80%" class="container">
    <div class="row">
        <div class="col-md-12">
            <br>

            <h2 class="text-center display-4 font-weight-light">Les CD</h2>
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
                    List<Support> list = (ArrayList<Support>)request.getAttribute("cds");
                    for (Support supportCD : list) {
                %>
                <tr>
                    <td> <% out.print(supportCD.getTitre().toUpperCase());%></td>
                    <td> <% out.print(supportCD.getAuteur());%></td>
                    <td> <% out.print(supportCD.getDate());%></td>
                    <td> <% out.print(supportCD.getQuantite());%></td>
                    <td> <% out.print(supportCD.getType().getLibelle_type());%></td>
                    <td>
                        <div class="float-right">
                            <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierCD" type="button" class="btn btn-warning" onclick="modifier('<% out.print(supportCD.getId_support());%>', '<% out.print(supportCD.getTitre());%>', '<% out.print(supportCD.getAuteur());%>', '<% out.print(supportCD.getDate());%>', '<% out.print(supportCD.getQuantite());%>', '<% out.print(supportCD.getType().getId_type());%>')" value="Modifier"/>
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerCD<%out.print(supportCD.getId_support());%>">Archiver</button>
                            <!-- The Modal Professor DELETE -->
                            <div class="modal fade" id="supprimerCD<% out.print(supportCD.getId_support());%>">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal DELETE Header -->
                                        <div class="modal-header background-color-classe">
                                            <h4 class="modal-title text-color-items">Archiver un CD</h4>
                                            <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal DELETE body -->
                                        <div class="modal-body text-center">
                                            <p>Etes-vous sûr de vouloir archiver ce CD :</p>
                                            <p><span style="font-weight: bold; font-size: 20px"><% out.print(supportCD.getTitre());%>  </span>? </p>
                                        </div>

                                        <!-- Modal DELETE footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success mr-auto" data-dismiss="modal">Annuler</button>
                                            <form class="float-right" action="cd" method="post">
                                                <input hidden type="text" name="idCD" value="<% out.print(supportCD.getId_support());%>"/>
                                                <input type="submit" class="btn btn-danger" name="supprimerCD" value="Archiver"/>
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

            <div class="modal fade" id="modifierCD">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="cd" method="post">
                            <input hidden type="text" id="idCDModifier" name="idCDModifier">

                            <!-- Modal UPDATE Header -->
                            <div class="modal-header background-color-classe">
                                <h4 class="modal-title text-color-items">Modifier un CD</h4>
                                <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal UPDATE body -->
                            <div class="modal-body">

                                <div class="form-group">
                                    <label for="modifierNomCD">Titre</label>
                                    <input type="text" class="form-control" id="modifierNomCD" name="modifierNomCD" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierAuteurCD">Auteur</label>
                                    <input type="text" class="form-control" id="modifierAuteurCD" name="modifierAuteurCD" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierAnneeCD">Date</label>
                                    <input type="text" class="form-control" id="modifierAnneeCD" name="modifierAnneeCD" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierQuantiteCD">Quantité</label>
                                    <input type="number" value="" class="form-control" id="modifierQuantiteCD" name="modifierQuantiteCD" required>
                                </div>
                                <div class="form-group" id ="test">
                                    <label for="modifierTypeCD">Type </label>
                                    <select id="modifierTypeCD" name="modifierTypeCD" class="form-control">
                                        <%
                                            List<Type> listeTypes = (ArrayList<Type>)request.getAttribute("types");
                                            for (Type type : listeTypes) {
                                        %>

                                        <option style="white-space: pre"  value=<%out.println(type.getId_type());%>>
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
    function modifier(id_cd, titre_cd, auteur_cd, annee_cd, quantite_cd, type_cd){
        //alert(id_classe+" "+nom_classe+" "+annee_classe+" "+id_niveau);
        $("#idCDModifier").attr('value', id_cd);
        $("#modifierNomCD").attr('value', titre_cd);
        $("#modifierAuteurCD").attr('value', auteur_cd);
        $("#modifierAnneeCD").attr('value', annee_cd);
        $("#modifierQuantiteCD").attr('value', quantite_cd);
        $("#modifierTypeCD").attr('value', type_cd);
    }
</script>

</body>
</html>
