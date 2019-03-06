<html>

	<head>

    <?php

        include('includes/head.php');
        include('includes/configNavBar.php');        

    ?>

	</head>

	<body>
    <div class="container-fluid">
        <div class="row slider-row hidden-xs">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img class="slide-image" src="images/slider/slider1.png" alt="">                                        
                    </div>
                    <div class="item">
                        <img class="slide-image" src="images/slider/slider2.png" alt="">                                                                       
                    </div>
                    <div class="item">
                        <img class="slide-image" src="images/slider/slider3.png" alt="">                                                                           
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
    </div>


    <!-- Boton para subir -->

    <!-- /.container -->


    <!-- jQuery -->

    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/en.js"></script>          
	</body>



</html>