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
    <title>DVD</title>
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

            <h2 class="text-center display-4 font-weight-light">Les DVD</h2>
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
                    List<Support> list = (ArrayList<Support>)request.getAttribute("dvds");
                    for (Support supportDVD : list) {
                %>
                <tr>
                    <td> <% out.print(supportDVD.getTitre().toUpperCase());%></td>
                    <td> <% out.print(supportDVD.getAuteur());%></td>
                    <td> <% out.print(supportDVD.getDate());%></td>
                    <td> <% out.print(supportDVD.getQuantite());%></td>
                    <td> <% out.print(supportDVD.getType().getLibelle_type());%></td>
                    <td>
                        <div class="float-right">
                            <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierDVD" type="button" class="btn btn-warning" onclick="modifier('<% out.print(supportDVD.getId_support());%>', '<% out.print(supportDVD.getTitre());%>', '<% out.print(supportDVD.getAuteur());%>', '<% out.print(supportDVD.getDate());%>', '<% out.print(supportDVD.getQuantite());%>', '<% out.print(supportDVD.getType().getId_type());%>')" value="Modifier"/>
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerDVD<%out.print(supportDVD.getId_support());%>">Archiver</button>
                            <!-- The Modal Professor DELETE -->
                            <div class="modal fade" id="supprimerDVD<% out.print(supportDVD.getId_support());%>">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal DELETE Header -->
                                        <div class="modal-header background-color-classe">
                                            <h4 class="modal-title text-color-items">Archiver un DVD</h4>
                                            <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal DELETE body -->
                                        <div class="modal-body text-center">
                                            <p>Etes-vous sûr de vouloir archiver ce DVD :</p>
                                            <p><span style="font-weight: bold; font-size: 20px"><% out.print(supportDVD.getTitre());%>  </span>? </p>
                                        </div>

                                        <!-- Modal DELETE footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-success mr-auto" data-dismiss="modal">Annuler</button>
                                            <form class="float-right" action="dvd" method="post">
                                                <input hidden type="text" name="idDVD" value="<% out.print(supportDVD.getId_support());%>"/>
                                                <input type="submit" class="btn btn-danger" name="supprimerDVD" value="Archiver"/>
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

            <div class="modal fade" id="modifierDVD">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="dvd" method="post">
                            <input hidden type="text" id="idDVDModifier" name="idDVDModifier">

                            <!-- Modal UPDATE Header -->
                            <div class="modal-header background-color-classe">
                                <h4 class="modal-title text-color-items">Modifier un DVD</h4>
                                <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal UPDATE body -->
                            <div class="modal-body">

                                <div class="form-group">
                                    <label for="modifierNomDVD">Titre</label>
                                    <input type="text" class="form-control" id="modifierNomDVD" name="modifierNomDVD" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierAuteurDVD">Auteur</label>
                                    <input type="text" class="form-control" id="modifierAuteurDVD" name="modifierAuteurDVD" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierAnneeDVD">Date</label>
                                    <input type="text" class="form-control" id="modifierAnneeDVD" name="modifierAnneeDVD" value="" required>
                                </div>
                                <div class="form-group">
                                    <label for="modifierQuantiteDVD">Quantité</label>
                                    <input type="number" value="" class="form-control" id="modifierQuantiteDVD" name="modifierQuantiteDVD" required>
                                </div>
                                <div class="form-group" id ="test">
                                    <label for="modifierTypeDVD">Type </label>
                                    <select id="modifierTypeDVD" name="modifierTypeDVD" class="form-control">
                                        <%
                                            List<Type> listeTypes = (ArrayList<Type>)request.getAttribute("types");
                                            for (Type type : listeTypes) {
                                        %>

                                        <option style="white-space: pre"  value=<%out.println(type.getId_type());%> <%= type.getId_type() == 3 ?" selected":"" %>>
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
    function modifier(id_dvd, titre_dvd, auteur_dvd, annee_dvd, quantite_dvd, type_dvd){
        //alert(id_classe+" "+nom_classe+" "+annee_classe+" "+id_niveau);
        $("#idDVDModifier").attr('value', id_dvd);
        $("#modifierNomDVD").attr('value', titre_dvd);
        $("#modifierAuteurDVD").attr('value', auteur_dvd);
        $("#modifierAnneeDVD").attr('value', annee_dvd);
        $("#modifierQuantiteDVD").attr('value', quantite_dvd);
        $("#modifierTypeDVD").attr('value', type_dvd);
    }
</script>

</body>
</html>
