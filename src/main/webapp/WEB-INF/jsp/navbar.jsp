<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="head.jsp" %>

<body style="background-color: #ffffff96">
<div class="container-fluid" >
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="accueil-bar-background-color col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            <div class="list-group border-0 text-center text-md-left">
                <!-- Abonnés -->
                <a href="#menuAbonne" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-id-card"></i>
                    <span class="d-none d-md-inline">Abonné<i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuAbonne" data-parent="#sidebar">
                    <a href="creer_utilisateur" class="monItemHref hover-color list-group-item" data-parent="menuAbonne"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="utilisateur" class="monItemHref hover-color list-group-item" data-parent="menuAbonne"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Livre -->
                <a href="#menuLivre" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-book-open"></i>
                    <span class="d-none d-md-inline">Livre <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuLivre" data-parent="#sidebar">
                    <a href="creer_livre" class="monItemHref hover-color list-group-item" data-parent="#menuLivre"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="livre" class="monItemHref hover-color list-group-item" data-parent="#menuLivre"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- CD -->
                <a href="#menuCD" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-compact-disc"></i>
                    <span class="d-none d-md-inline">CD <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuCD" data-parent="#sidebar">
                    <a href="creer_cd" class="monItemHref hover-color list-group-item" data-parent="#menuCD"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="cd" class="monItemHref hover-color list-group-item" data-parent="#menuCD"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- DVD -->
                <a href="#menuDVD" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-film"></i>
                    <span class="d-none d-md-inline">DVD <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuDVD" data-parent="#sidebar">
                    <a href="creer_dvd" class="monItemHref hover-color list-group-item" data-parent="#menuDVD"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="dvd" class="monItemHref hover-color list-group-item" data-parent="#menuDVD"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Livre numérique -->
                <a href="#menuLivreNumerique" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-tablet-alt"></i>
                    <span class="d-none d-md-inline">Livre numérique <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuLivreNumerique" data-parent="#sidebar">
                    <a href="creer_livre_numerique" class="monItemHref hover-color list-group-item" data-parent="#menuLivreNumerique"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="livre_numerique" class="monItemHref hover-color list-group-item" data-parent="#menuLivreNumerique"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Emprunt -->
                <a href="#menuEmprunt" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-exchange-alt"></i>
                    <span class="d-none d-md-inline">Emprunt <i class="ml-1 fas fa-caret-down"></i></span></a>
                <div style="margin-bottom: 1px;" class="collapse" id="menuEmprunt" data-parent="#sidebar">
                    <a href="creer_emprunt" class="monItemHref hover-color list-group-item" data-parent="#menuEmprunt"><h6 class="monZoom ml-4"><i class="fas fa-plus"></i> Créer</h6></a>
                    <a href="emprunt" class="monItemHref hover-color list-group-item" data-parent="#menuEmprunt"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
                </div>
                <!-- Profil -->
                <a href="profil" class="monItemHref  list-group-item d-inline-block collapsed"><i class="fas fa-user"></i> <span class="d-none d-md-inline">Profil</span></a>
            </div>
        </div>
        <!-- Partie main -->
        <main class="col-md-10 float-left col pl-md-2 main">
            <!-- Titre + logo connexion -->


