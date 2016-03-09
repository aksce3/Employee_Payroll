<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>
        <meta charset="utf-8">
       <link rel="shortcut icon" href="images/favicon.ico">
        <title>Iflexion Software solutions</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/animate.css" rel="stylesheet">

        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" type="text/css" href="css/ionicons.min.css">

        <link href="css/style.css" rel="stylesheet">

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="js/jquery.easing.1.3.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/wow.min.js"></script>
        <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>

       
        <script src="js/jquery.app.js"></script>
        
    </head>

    <body>
        
        <!-- Pre-loader -->
        <div class="preloader">
            <div class="status">&nbsp;</div>
        </div>


        <!-- HOME -->
    <section class="home bg-dark">   

        <!-- menu -->
        <%@include file="header.jsp" %>
        <!--/Menu -->

        <div class="clearfix"></div>

        <div class="container">
            <div class="row">
                <div class="col-sm-6 text-left">
                    <div class="home-wrapper">
                        <h1 class="animated fadeInDown wow home-title" data-wow-delay=".1s">Welcome to Your Software Development Happy Place</h1>
                        <h4 class="animated fadeInDown wow" data-wow-delay=".2s">You’ve taken a hard look at the software that powers your business and it’s time to develop next generation solutions.<br/> 
                            <h4 class="animated fadeInDown wow" data-wow-delay=".2s">Developing a competitive advantage calls for developing more intelligent software solutions.<br/> We’re with you.</h4>
                            <div class="clearfix"></div>
                    </div>
                </div>

                <div class="col-sm-4 col-sm-offset-2">
                    <div class="home-wrapper">
                        <form role="form" id="register_form" class="intro-form">
                            <h3 class="text-center"> SIGN IN</h3>

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="User name" required="required">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password" required="required">
                            </div>

                            <div class="form-group">
                                <label class="form-control">
                                    <input type="radio" name="optradio" required="required"> Admin
                                </label>      
                                <label class="form-control">
                                    <input type="radio" name="optradio" required="required"> Employee
                                </label>
                            </div>

                            <div class="form-group text-center">
                                <a href="admin.html"><button type="submit" class="btn btn-custom">submit</button></a>
                            </div>

                            <div class="form-group"> 
                                <a href="forgot_passwo`rd.do">Forgot password?</a>
                            </div>        
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END HOME -->

    <!-- FEATURES-1 -->
    <section class="section" id="features">
        <%@include file="features1.jsp" %>
    </section>
    <!-- END FEATURES-1 -->

    <!-- SERVICES -->
    <section class="section bg-gray" id="services">
        <%@include file="services.jsp" %>
    </section>
    <!-- END SERVICES -->


    <!-- TESTIMONIALS -->
    <section class="section">
        <%@include file="testimonials.jsp" %>
    </section>
    <!--END TESTIMONIALS -->

    <!-- FOOTER -->
    <footer class="section bg-gray footer">
        <%@include file="footer.jsp" %>
    </footer>
    <!-- END FOOTER -->

    



</body>


</html>

