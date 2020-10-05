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

    <title>Utilisateur</title>
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
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#creerClasse">Créer une classe</button>

                            <!-- The Modal Classe CREATE -->
                            <div class="modal fade" id="creerClasse">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="classe" method="post">

                                            <!-- Modal CREATE Header -->
                                            <div class="modal-header background-color-classe">
                                                <h4 class="modal-title text-color-items">Création d'une classe</h4>
                                                <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal CREATE body -->
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="creerNomClasse">Nom</label>
                                                    <input type="text" class="form-control" id="creerNomClasse" name="creerNomClasse" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="creerAnneeClasse">Année</label>
                                                    <input type="number" min="1900" max="2099" step="1" value="2020" class="form-control" id="creerAnneeClasse" name="creerAnneeClasse" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Niveau</label>
                                                    <div>
                                                        <input type="radio" id="cp"
                                                               name="creerNiveauClasse" value="1">
                                                        <label for="cp">CP</label>

                                                        <input type="radio" id="ce1"
                                                               name="creerNiveauClasse" value="2">
                                                        <label for="ce1">CE1</label>

                                                        <input type="radio" id="ce2"
                                                               name="creerNiveauClasse" value="3">
                                                        <label for="ce2">CE2</label>

                                                        <input type="radio" id="cm1"
                                                               name="creerNiveauClasse" value="4">
                                                        <label for="cm1">CM1</label>

                                                        <input type="radio" id="cm2"
                                                               name="creerNiveauClasse" value="5">
                                                        <label for="cm2">CM2</label>
                                                    </div>
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
                        <h2 style="text-align: center">Les classes</h2>
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th>Nom</th>
                                <th>Année</th>
                                <th>Niveau</th>
                                <th>Professeur </th>
                                <th><div style="text-align: center">Actions</div></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                               // List<Classe> list = (ArrayList<Classe>)request.getAttribute("classes");
                               // for (Classe classe : list) {
                            %>
                            <tr>
                                <td> <% // out.print(classe.getNom().toUpperCase());%></td>
                                <td> <% // out.print(classe.getAnnee());%></td>
                                <td> <% // out.print(classe.getNiveau().getLibelle().toUpperCase());%></td>
                                <td> <% // out.print(classe.getProfesseur().getNom());%> <% //out.print(classe.getProfesseur().getPrenom());%></td>
                                <td>
                                    <div class="float-right">
                                        <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierProf" type="button" class="btn btn-warning" onclick="modifier('<% //out.print(classe.getId_classe());%>', '<% //out.print(classe.getNom());%>', '<% // out.print(classe.getAnnee());%>', '<% //out.print(classe.getNiveau().getId_niveau());%>', '<% //out.print(classe.getProfesseur().getId_professeur());%>')" value="Modifier"/>
                                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#supprimerClasse<% // out.print(classe.getId_classe());%>">Supprimer</button>
                                        <!-- The Modal Professor DELETE -->
                                        <div class="modal fade" id="supprimerClasse<% // out.print(classe.getId_classe());%>">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal DELETE Header -->
                                                    <div class="modal-header background-color-classe">
                                                        <h4 class="modal-title text-color-items">Supprimer une classe</h4>
                                                        <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                                    </div>

                                                    <!-- Modal DELETE body -->
                                                    <div class="modal-body text-center">
                                                        <p>Etes-vous sûr de vouloir supprimer cette classe :</p>
                                                        <p><span style="font-weight: bold; font-size: 20px"><% // out.print(classe.getNom());%>  </span>? </p>
                                                    </div>

                                                    <!-- Modal DELETE footer -->
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-success mr-auto" data-dismiss="modal">Annuler</button>
                                                        <form class="float-right" action="classe" method="post">
                                                            <input hidden type="text" name="idClasse" value="<% // out.print(classe.getId_classe());%>"/>
                                                            <input type="submit" class="btn btn-danger" name="supprimerClasse" value="Supprimer"/>
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

                        <div class="modal fade" id="modifierProf">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="classe" method="post">
                                        <input hidden type="text" value="" name="idclasseModifier" id="idclasseModifier"/>

                                        <!-- Modal UPDATE Header -->
                                        <div class="modal-header background-color-classe">
                                            <h4 class="modal-title text-color-items">Modifier une classe</h4>
                                            <button type="button" class="close text-color-items" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal UPDATE body -->
                                        <div class="modal-body">

                                            <div class="form-group">
                                                <label for="modifierNomClasse">Nom</label>
                                                <input type="text" class="form-control" id="modifierNomClasse" name="modifierNomClasse" value="" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="modifierAnneeClasse">Année</label>
                                                <input type="number" min="1900" max="2099" step="1" value="" class="form-control" id="modifierAnneeClasse" name="modifierAnneeClasse" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Niveau</label>
                                                <div>
                                                    <input type="radio" id="cpmodifier"
                                                           name="modifierNiveauClasse" value="1">
                                                    <label for="cpmodifier">CP</label>

                                                    <input type="radio" id="ce1modifier"
                                                           name="modifierNiveauClasse" value="2">
                                                    <label for="ce1modifier">CE1</label>

                                                    <input type="radio" id="ce2modifier"
                                                           name="modifierNiveauClasse" value="3">
                                                    <label for="ce2modifier">CE2</label>

                                                    <input type="radio" id="cm1modifier"
                                                           name="modifierNiveauClasse" value="4">
                                                    <label for="cm1modifier">CM1</label>

                                                    <input type="radio" id="cm2modifier"
                                                           name="modifierNiveauClasse" value="5">
                                                    <label for="cm2modifier">CM2</label>
                                                </div>
                                            </div>
                                            <div class="form-group" id ="test">
                                                <h4>Sélectionnez un professeur</h4>
                                                <select id="selectProfesseurs" name="selectProf">
                                                    <%
                                                     //   List<Professeur> listProfs = (ArrayList<Professeur>)request.getAttribute("profs");
                                                     //   for (Professeur profs : listProfs) {
                                                    %>
                                                    <option style="white-space: pre" value=<% //out.println(profs.getId_personne());%>>
                                                       <% //out.println(profs.getNom().toUpperCase());%> <% //out.println(profs.getPrenom().substring(0, 1).toUpperCase() + profs.getPrenom().substring(1));%></option>
                                                    <% //} %>
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
</script>
</body>
</html>