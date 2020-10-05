<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- impot CSS -->
    <style type="text/css">
        <%@include file="../../assets/css/all.min.css" %>
        <%@include file="../../assets/css/bootstrap.min.css" %>
        <%@include file="../../assets/css/style.css" %>
    </style>
    <!-- import Script -->
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="../../assets/js/all.min.js"></script>
    <script src="../../assets/js/popper.min.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/script.js"></script>

    <title>Livre</title>
</head>
<body style="background-color: #ffffff96">
<div class="container-fluid" >
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="accueil-bar-background-color col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            <div class="list-group border-0 text-center text-md-left">
                <!-- Abonnés -->
                <a href="#menuAbonne" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-id-card"></i>
                    <span class="d-none d-md-inline">Abonné<i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuAbonne" data-parent="#sidebar">
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="menuAbonne"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="menuAbonne"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Livre -->
                <a href="#menuLivre" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-book-open"></i>
                    <span class="d-none d-md-inline">Livre <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuLivre" data-parent="#sidebar">
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="#menuLivre"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="#menuLivre"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Digital-->
                <a href="#menuDigital" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-film"></i>
                    <span class="d-none d-md-inline">Digital<i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuDigital" data-parent="#sidebar">
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="#menuDigital"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="#menuDigital"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Emprunt -->
                <a href="#menuEmprunt" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-exchange-alt"></i>
                    <span class="d-none d-md-inline">Emprunt <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuEmprunt" data-parent="#sidebar">
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="#menuEmprunt"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="monItemHref hover-color list-group-item" data-parent="#menuEmprunt"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Profil -->
                <a href="#" class="monItemHref  list-group-item d-inline-block collapsed"><i class="fas fa-user"></i> <span class="d-none d-md-inline">Profil</span></a>
            </div>
        </div>
        <!-- Partie main -->
        <main class="col-md-10 float-left col pl-md-2 main">
            <!-- Titre + logo connexion -->
            <div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
                <div class="col-md-12 text-center">
                    <hr>
                    <h2 id="mon-texte" class="text-white font-weight-light"><span class="float-right"><i class="text-white fas fa-user"></i></span></h2>
                    <hr>
                </div>
            </div>
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
                                <th><div style="text-align: center">Actions</div></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                // List<Livre> list = (ArrayList<Livre>)request.getAttribute("livres");
                                // for (Livre livre : list) {
                            %>
                            <tr>
                                <td> <% // out.print(livre.getTitre().toUpperCase());%></td>
                                <td> <% // out.print(livre.getAuteur());%></td>
                                <td> <% // out.print(livre.getAnnee());%></td>
                                <td>
                                    <div class="float-right">
                                        <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierLivre" type="button" class="btn btn-warning" onclick="modifier('<% //out.print(livre.getId_livre());%>', '<% //out.print(livre.getLivre());%>', '<% // out.print(livre.getAuteur());%>', '<% //out.print(livre.getAnnee);%>')" value="Modifier"/>
                                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerLivre<% // out.print(classe.getId_classe());%>">Archiver</button>
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
                            <% //} %>
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
                                                <label for="modifierAnneeLivre">Année</label>
                                                <input type="date" class="form-control" id="modifierAnneeLivre" name="modifierAnneeLivre" value="" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="modifierQuantiteLivre">Quantité</label>
                                                <input type="number" min="1900" max="2099" step="1" value="" class="form-control" id="modifierQuantiteLivre" name="modifierQuantiteLivre" required>
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
    function modifier(id_livre, titre_livre, auteur_livre, annee_livre){
        //alert(id_classe+" "+nom_classe+" "+annee_classe+" "+id_niveau);
        $("#idLivreModifier").attr('value', id_livre);
        $("#modifierNomLivre").attr('value', titre_livre);
        $("#modifierAuteurLivre").attr('value', auteur_livre);
        $("#modifierAnneeLivre").attr('value', annee_livre);
    }
</script>
</body>
</html>