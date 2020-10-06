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
                <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierEmprunt" type="button" class="btn btn-warning" onclick="modifier('<% //out.print(livre.getId_livre());%>', '<% //out.print(livre.getLivre());%>', '<% // out.print(livre.getAuteur());%>', '<% //out.print(livre.getAnnee);%>')" value="Modifier"/>
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerEmprunt<% // out.print(classe.getId_classe());%>">Archiver</button>
                <!-- The Modal Professor DELETE -->
                <div class="modal fade" id="supprimerLivre<% // out.print(livre.getId_livre());%>">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <!-- Modal DELETE Header -->
                            <div class="modal-header background-color-classe">
                                <h4 class="modal-title text-color-items">Arcgiver un livre</h4>
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

</body>
</html>
