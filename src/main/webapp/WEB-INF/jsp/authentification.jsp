<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
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
</head>
<body style =" background-color: #c47e7e2b;" >
<div class="container" >
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center">Se connecter</h5>
                    <form class="form-signin" action="authentification" method="post">
                        <div class="form-label-group">
                            <label for="inputEmail">Identifiant</label>
                            <input type="text" id="inputEmail" class="form-control" name="login" placeholder="Identifiant" required autofocus>
                        </div>
                        <br>
                        <div class="form-label-group">
                            <label for="inputPassword">Mot de passe</label>
                            <input type="password" id="inputPassword" class="form-control" name="mdp" placeholder="Mot de passe" required>
                        </div>
                        <hr>
                        <button class="btn btn-lg btn-success btn-block " type="submit">Connexion</button>
                        <br>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

