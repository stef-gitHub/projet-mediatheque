<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="head.jsp" %>

<body style="background-color: #ffffff96">
<div class="container-fluid" >
    <div class="row d-flex d-md-block flex-nowrap wrapper">
        <div class="accueil-bar-background-color col-md-2 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
            <div class="list-group border-0 text-center text-md-left">
                <a href="" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-clock"></i>
                    <span class="d-none d-md-inline">Horaires</span>
                </a>

                <!-- Livre -->
                <a href="#menuLivre" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-mail-bulk"></i>
                    <span class="d-none d-md-inline">Newsletters</span>
                </a>
                <!-- CD -->
                <a href="#menuCD" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-phone"></i>
                    <span class="d-none d-md-inline">Nous contacter</span>
                </a>
                <!-- DVD -->
                <a href="#menuDVD" class="monHref list-group-item d-inline-block collapsed" data-toggle="collapse" aria-expanded="false"><i class="fas fa-map"></i>
                    <span class="d-none d-md-inline">Plan d'accès</span>
                </a>
            </div>
        </div>
        <!-- Partie main -->
        <main class="col-md-10 float-left col pl-md-2 main">
            <!-- Titre + logo connexion -->
            <div class="row accueil-bar-color" style="padding-top: 8px;padding-bottom: 8px;">
                <div class="col-md-12 text-center">
                    <hr>
                    <h2 id="mon-texte" class="text-white font-weight-light"><a href="/authentification"><span class="float-right"><i class=" text-white fas fa-user"></i></span></a></h2>
                    <hr>
                </div>
            </div>
            <div>
                <h1>Site vitrine</h1>
            </div>
        </main>
    </div>
</div>
</body>
</html>
