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
    <script src="../../assets/js/style.js"></script>

    <title>Accueil</title>
</head>
<body>
<div class="container-fluid">
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            <div class="list-group border-0 text-center text-md-left">
                <!-- Abonnés -->
                <a role="button" style="margin-bottom: 1px;" class="monBouton list-group-item d-inline-block collapsed" data-target="#menuAbonne" data-toggle="collapse" aria-expanded="false"><i class="fas fa-id-card"></i>
                    <span class="d-none d-md-inline">Abonné<i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuAbonne" data-parent="#sidebar">
                    <a href="#" class="hover-color list-group-item" data-parent="menuAbonne"><h6 class="ml-3"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="hover-color list-group-item" data-parent="menuAbonne"><h6 class="ml-3"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Livre -->
                <a role=button style="margin-bottom: 1px;" class="monBouton list-group-item d-inline-block collapsed" data-target="#menuLivre" data-toggle="collapse" aria-expanded="false"><i class="fas fa-book-open"></i>
                    <span class="d-none d-md-inline">Livre <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuLivre" data-parent="#sidebar">
                    <a href="#" class="hover-color list-group-item" data-parent="#menuLivre"><h6 class="ml-3"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="hover-color list-group-item" data-parent="#menuLivre"><h6 class="ml-3"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Digital-->
                <a role=button style="margin-bottom: 1px;" data-target="#menuDigital" class="monBouton list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-film"></i>
                    <span class="d-none d-md-inline">Digital<i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuDigital" data-parent="#sidebar">
                    <a href="#" class="hover-color list-group-item" data-parent="#menuDigital"><h6 class="ml-3"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="hover-color list-group-item" data-parent="#menuDigital"><h6 class="ml-3"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Emprunt -->
                <a role="button" style="margin-bottom: 1px;" class=" monBouton list-group-item d-inline-block collapsed" data-target="#menuEmprunt" data-toggle="collapse" aria-expanded="false"><i class="fas fa-exchange-alt"></i>
                    <span class="d-none d-md-inline">Emprunt <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuEmprunt" data-parent="#sidebar">
                    <a href="#" class="hover-color list-group-item" data-parent="#menumenuEmprunt"><h6 class="ml-3"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="#" class="hover-color list-group-item" data-parent="#menuEmprunt"><h6 class="ml-3"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Profil -->
                <a role="button" class="monBouton list-group-item d-inline-block collapsed" href="#"><i class="fas fa-user"></i> <span class="d-none d-md-inline">Profil</span></a>
            </div>
        </div>
        <!-- Partie main -->
        <main class="col-md-10 float-left col pl-md-2 main">
            <!-- Titre + logo connexion -->
            <div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
                <div class="col-md-12 text-center">
                    <hr>
                    <h3 class="text-white font-weight-light">Bienvenue sur votre interface de gestion de médiathèque <span class="float-right"><i class="text-white fas fa-user"></i></span></h3>
                    <hr>
                </div>
            </div>
            <!-- Informations et texte-->
            <div class="row">
                <div class="col-md-12 page-header">
                    <h2 class="display-4 font-weight-light">Bootstrap 4 Sidebar</h2>
                    <p class="lead">A responsive, multi-level vertical accordion menu.</p>
                    <hr>
                    <p>Responsive sidebar, vertical accordion menu on Bootstrap</p>
                </div>
            </div>
        </main>
    </div>
</div>
<script>
    // change la couleur des sous items de la sidebar en passant dessus
    $(".hover-color").hover(function(){
        $(this).css("background-color", "#8f58ad");
    }, function(){
        $(this).css("background-color", "#563d7c");
    });
</script>
</body>
</html>