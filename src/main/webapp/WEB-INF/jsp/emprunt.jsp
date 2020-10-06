<%@ page import="beans.Emprunt" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Emprunt</title>
</head>
<%@include file="navbar.jsp" %>
<h2 class="text-center display-4 font-weight-light">Les emprunts</h2>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th>Nom utilisateur</th>
        <th>Prénom utilisateur</th>
        <th>Titre</th>
        <th>Date de début</th>
        <th>Date de fin</th>
        <th><div style="text-align: center">Actions</div></th>
    </tr>
    </thead>
    <tbody>
    <%
        List<Emprunt> listEmprunt = (ArrayList<Emprunt>)request.getAttribute("emprunts");
        for (Emprunt emprunt : listEmprunt) {
    %>
    <tr>
        <td> <% out.print(emprunt.getUtilisateur().getNom());%></td>
        <td> <% out.print(emprunt.getUtilisateur().getPrenom());%></td>
        <td> <% out.print(emprunt.getSupport().getTitre());%></td>
        <td> <% out.print(emprunt.getDate_debut());%></td>
        <td> <% out.print(emprunt.getDate_fin());%></td>
        <td>
            <div class="float-right">
                <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierEmprunt" type="button" class="btn btn-warning" onclick="modifier('<% out.print(emprunt.getId_emprunt());%>','<% out.print(emprunt.getDate_debut());%>', '<% out.print(emprunt.getDate_fin());%>' )" value="Modifier"/>
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerEmprunt<% out.print(emprunt.getId_emprunt());%>">Archiver</button>
                <!-- The Modal Emprunt DELETE -->
                <div class="modal fade" id="supprimerEmprunt<% out.print(emprunt.getId_emprunt());%>">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal DELETE Header -->
                            <div class="modal-header background-color-classe">
                                <h4 class="modal-title text-color-items">Archiver un emprunt</h4>
                                <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal DELETE body -->
                            <div class="modal-body text-center">
                                <p>Etes-vous sûr de vouloir archiver cet emprunt :</p>
                                <p><span style="font-weight: bold; font-size: 20px"><% out.print(emprunt.getId_emprunt());%>  </span>? </p>
                            </div>

                            <!-- Modal DELETE footer -->
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success mr-auto" data-dismiss="modal">Annuler</button>
                                <form class="float-right" action="emprunt" method="post">
                                    <input hidden type="text" name="idEmprunt" value="<% out.print(emprunt.getId_emprunt());%>"/>
                                    <input type="submit" class="btn btn-danger" name="supprimerEmprunt" value="Archiver"/>
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
<div class="modal fade" id="modifierEmprunt">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="emprunt" method="post">
                <input hidden type="text" id="idEmpruntModifier" name="idEmpruntModifier">

                <!-- Modal UPDATE Header -->
                <div class="modal-header background-color-classe">
                    <h4 class="modal-title text-color-items">Modifier un emprunt</h4>
                    <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal UPDATE body -->
                <div class="modal-body">
                    <div class="form-group">
                        <label for="modifierDateDebutEmprunt">Date de début</label>
                        <input type="text" value="" class="form-control" id="modifierDateDebutEmprunt" name="modifierDateDebutEmprunt" value="" required>
                    </div>
                    <div class="form-group">
                        <label for="modifierDateFinEmprunt">Date de fin</label>
                        <input type="text" value="" class="form-control" id="modifierDateFinEmprunt" name="modifierDateFinEmprunt" value="" required>
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
</main>
<script>
    function modifier(id_emprunt, date_debut, date_fin){
        $("#idEmpruntModifier").attr('value', id_emprunt);
        $("#modifierDateDebutEmprunt").attr('value', date_debut);
        $("#modifierDateFinEmprunt").attr('value', date_fin);
    }
</script>
</body>
</html>
