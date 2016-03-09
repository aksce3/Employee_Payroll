<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>
        <meta charset="utf-8">
        <%@include file="design_div.jsp" %>
    </head>

    <body>

        <!-- Pre-loader -->
        <div class="preloader">
            <div class="status">&nbsp;</div>
        </div>


        <!-- HOME -->
    <section class="home bg-dark">   

        <!-- menu -->
        <%@include file="header_div.jsp" %>
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
                            <h3 class="text-center">Enter Your Email</h3>

                            <p>Enter your email address below and we'll send a special reset password link to your inbox.</p>

                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Email" required="required">
                            </div>

                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-custom">Reset password</button>
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
        <%@include file="features1_div.jsp" %>
    </section>
    <!-- END FEATURES-1 -->

    <!-- SERVICES -->
    <section class="section bg-gray" id="services">
        <%@include file="services_div.jsp" %>
    </section>
    <!-- END SERVICES -->


    <!-- TESTIMONIALS -->
    <section class="section">
        <%@include file="testimonials_div.jsp" %>
    </section>
    <!--END TESTIMONIALS -->

    <!-- FOOTER -->
    <footer class="section bg-gray footer">
        <%@include file="footer_div.jsp" %>
    </footer>
    <!-- END FOOTER -->

   



</body>


</html>

