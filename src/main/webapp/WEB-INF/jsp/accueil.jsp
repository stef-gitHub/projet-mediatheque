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

    <title>Accueil</title>
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
                    <a href="livre" class="monItemHref hover-color list-group-item" data-parent="#menuLivre"><h6 class="monZoom ml-4"><i class="fab fa-whmcs"></i> Gérer</h6></a>
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
            <div class="row">
                <div class="col-md-12 ">
                    <h2 class="text-center display-4 font-weight-light">Tableau de bord</h2>
                    <p class="lead text-center ">Voici la synthèse des flux et activités de votre médiathèque</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header d-flex align-items-center justify-content-between">
                        <h4 class="card-title">Abonnés</h4>
                        </div>
                        <div class="card-body">Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                            Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,
                            quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de
                            polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié.
                            Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plu
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <h4 class="card-title">Emprunts</h4>
                        </div>
                        <div class="card-body">Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                            Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,
                            quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de
                            polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié.
                            Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plu
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <h4 class="card-title">Livres</h4>
                        </div>
                        <div class="card-body">Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                            Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,
                            quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de
                            polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié.
                            Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plu
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <h4 class="card-title">Digital</h4>
                        </div>
                        <div class="card-body">Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.
                            Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500,
                            quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de
                            polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié.
                            Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plu
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script>
</script>
</body>
</html>