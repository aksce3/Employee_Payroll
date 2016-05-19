


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
        <%@include file="employee_header_div.jsp" %>
        <!--/Menu -->

        <div class="clearfix"></div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <div class="home-wrapper">
                        
                          <h1 class="animated fadeInDown wow" data-wow-delay=".1s">
                              Welcome 
                          </h1>
                       
                        <h4 class="page-sub-title animated fadeInDown wow" data-wow-delay=".3s">The People behind Iflexion Software solutions</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END HOME -->

    <!-- FEATURES-1 -->
    <section class="section" id="features">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Our Story</h1>
                    <hr class="hr">
                </div> 
            </div>

            <div class="row">
                <div class="col-md-10 col-md-offset-1 text-center">
                    <p class="features-txt animated fadeInRight wow" data-wow-delay=".5s">We are primarily consultants, not hardware or software salesmen, and are genuinely interested in your business results. Our ultimate goal is always to increase the efficiency of your entire infrastructure....</p>
                </div>
            </div>
        </div>
    </section>
    <!-- END FEATURES-1 -->

    


    

    <!-- FOOTER -->
    <footer class="section bg-gray footer">
        <%@include file="footer_div.jsp" %>
    </footer>
    <!-- END FOOTER -->

    



</body>


</html>

