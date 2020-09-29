<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        <%@include file="../../assets/css/bootstrap.min.css" %>
        <%@include file="../../assets/css/style.css" %>
    </style>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/popper.min.js"></script>
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="../../assets/js/style.js"></script>

    <title>Accueil</title>
</head>
<body>
<div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
        <div class="sidebar-heading"><a href = "accueil">Médiathèque</a></div>
        <div class="list-group list-group-flush">
            <a style="background-color: #563d7c;" href="#" class="items-navbar list-group-item list-group-item-action "><span style="color : white">Les ressources</span></a>
            <a style="background-color: #563d7c;" href="#" class="items-navbar list-group-item list-group-item-action "><span style="color : white">Vos emprunts</span></a>
            <a style="background-color: #563d7c;" href="#" class="items-navbar list-group-item list-group-item-action "><span style="color : white">Profile</span></a>
            <a style="background-color: #563d7c;" href="#" class="items-navbar list-group-item list-group-item-action "><span style="color : white">FAQ</span></a>
            <a style="background-color: #563d7c;" href="#" class="items-navbar list-group-item list-group-item-action "><span style="color : white">Notre sélection</span></a>
        </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
            <button class="btn btn-primary" id="menu-toggle">cacher la side bar</button>
            <span class="navbar-nav ml-auto mt-2 mt-lg-0">Logo connexion</span>
        </nav>

        <div class="container-fluid">
            <h1 class="mt-4">Simple Sidebar</h1>
            <p>The starting state of the menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will change.</p>
            <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>. The top navbar is optional, and just for demonstration. Just create an element with the <code>#menu-toggle</code> ID which will toggle the menu when clicked.</p>
        </div>
    </div>
    <!-- /#page-content-wrapper -->
</div>
<!-- /#wrapper -->

<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    $(".items-navbar").hover(function(){
        $(this).css("background-color", "#8f58ad" );
    }, function(){
        $(this).css("background-color", "#563d7c");
    });
</script>

</body>
</html>
