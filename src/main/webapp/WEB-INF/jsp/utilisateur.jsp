<%@ page import="beans.Utilisateur" %>
<%@ page import="beans.Role" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.concurrent.atomic.DoubleAccumulator" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.time.temporal.TemporalAccessor" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des utilisateurs</title>
</head>
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
                                            <label for="mailUtilisateurCreer">Mail</label>
                                            <input type="email" class="form-control" id="mailUtilisateurCreer" name="mailUtilisateurCreer" required>
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
                                        <div class="form-group">
                                            <label for="creerMdpUtilisateur">Mot de passe</label>
                                            <input type="password" class="form-control" id="creerMdpUtilisateur" placeholder="votre mot de passe" name="creerMdpUtilisateur" required>
                                            <div class="valid-feedback">Valide</div>
                                            <div class="invalid-feedback">Entrez un mot de passe d'au moins 8 caractères dont 1 majuscule, 1 chiffre, 1 caractère spécial (@?!#$)</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="roleUtilisateurCreer">Role</label>
                                            <br>
                                            <select id="roleUtilisateurCreer" name="roleUtilisateurCreer">
                                                <%
                                                    List<Role> listRoles = (ArrayList<Role>)request.getAttribute("roles");
                                                    for (Role roles : listRoles) {
                                                %>
                                                <option style="white-space: pre" value=<%out.println(roles.getId_role());%>>
                                                    <% out.println(roles.getLibelle_role().toUpperCase());%> </option>

                                                <% } %>
                                            </select>
                                        </div>
                                    </div>
                                    <!-- Modal CREATE footer -->
                                    <div class="modal-footer">
                                        <div class="alert alert-secondary" role="alert">
                                            Créer un utilisateur entraine la création d'un abonnnement d'un an à partir d'aujourd'hui
                                        </div>
                                        <input type="submit" class="btn btn-success" name="creerUtilisateur" value="Créer"/>
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
                        <th>Numero abonné</th>
                        <th>Date de fin d'abonnement</th>
                        <th>Role</th>
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
                        <td><% out.println(utilisateur.getAbonnement().getNumero_abonne());%></td>
                        <td><%
                            String string = utilisateur.getAbonnement().getDate_souscription();
                            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy", Locale.ENGLISH);
                            LocalDate date = LocalDate.parse(string, formatter);
                            ZoneId defaultZoneId = ZoneId.systemDefault();
                            Date date2 = Date.from(date.atStartOfDay(defaultZoneId).toInstant());
                            Calendar calendar = Calendar.getInstance();
                            calendar.setTime(date2);
                            calendar.add(Calendar.YEAR, 1);
                            date2 = calendar.getTime();
                            SimpleDateFormat formatterr = new SimpleDateFormat("dd/MM/yyyy");
                            String strDate= formatterr.format(date2);
                            out.println(strDate);
                        %></td>
                        <td><% out.println(utilisateur.getRole().getLibelle_role());%></td>
                        <td>
                            <div class="float-right">
                                <input style="margin-right: 50px;" data-toggle="modal" data-target="#modifierUtilisateur" type="button" class="btn btn-warning" onclick="modifierUtilisateur('<%=utilisateur.getId_utilisateur()%>', '<%=utilisateur.getNom().toUpperCase()%>', '<%=utilisateur.getPrenom().substring(0, 1).toUpperCase() + utilisateur.getPrenom().substring(1)%>', '<%=utilisateur.getEmail()%>','<%=utilisateur.getAdresse()%>', '<%=utilisateur.getVille()%>','<%=utilisateur.getCode_postal()%>', '<%=utilisateur.getNum_telephone()%>', '<%=utilisateur.getRole().getId_role()%>')" value="Détail"/>
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
                                    <label for="mailUtilisateurModifier">Mail</label>
                                    <input type="text" class="form-control" id="mailUtilisateurModifier" name="mailUtilisateurModifier">
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
                                    <label for="telUtilisateurModifier">Numéro de téléphone</label>
                                    <input type="text" class="form-control" id="telUtilisateurModifier" name="telUtilisateurModifier">
                                </div>
                                <div class="form-group">
                                    <label for="mdpUtilisateurModifier">Mot de passe</label>
                                    <input type="password" class="form-control" id="mdpUtilisateurModifier" placeholder="Changer de mot de passe" name="mdpUtilisateurModifier">
                                    <div class="valid-feedback">Valide</div>
                                    <div class="invalid-feedback">Entrez un mot de passe d'au moins 8 caractères dont 1 majuscule, 1 chiffre, 1 caractère spécial (@?!#$)</div>
                                </div>
                                <div class="form-group">
                                    <label for="roleUtilisateurModifier">Role</label>
                                    <br>
                                    <select id="roleUtilisateurModifier" name="roleUtilisateurModifier">
                                        <%
                                            for (Role roles : listRoles) {
                                        %>
                                        <option style="white-space: pre" value=<%out.println(roles.getId_role());%>>
                                            <% out.println(roles.getLibelle_role().toUpperCase());%> </option>

                                        <% } %>
                                    </select>
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <input type="submit" class="btn btn-warning" name="modifierUtilisateur" value="Modifier"/>
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
    function modifierUtilisateur(id_utilisateur, nom, prenom, mail, adresse, ville, code_postal, tel, role){
        //alert(id_classe+" "+nom_classe+" "+annee_classe+" "+id_niveau);
        $("#idUtilisateurModifier").attr('value', id_utilisateur);
        $("#nomUtilisateurModifier").attr('value', nom);
        $("#prenomUtilisateurModifier").attr('value', prenom);
        $("#mailUtilisateurModifier").attr('value', mail);
        $("#adresseUtilisateurModifier").attr('value', adresse);
        $("#villeUtilisateurModifier").attr('value', ville);
        $("#cpUtilisateurModifier").attr('value', code_postal);
        $("#telUtilisateurModifier").attr('value', tel);
        $('#roleUtilisateurModifier option[value="'+role+'"]').prop('selected', true);
    }
</script>

</body>
</html>
