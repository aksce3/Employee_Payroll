<%-- 
    Document   : add_employee
    Author     : akshay
--%>

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
        <%@include file="HR_header_div.jsp" %>
        <!--/Menu -->

        <div class="clearfix"></div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <div class="home-wrapper">
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">HR User</h1>
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
                    <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Employee Detail</h1>
                    <hr class="hr">
                </div> 
            </div>

            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <form role="form" id="register_form" class="form-horizontal">
                        <h3 class="text-center">Basic Information</h3>

                        <div class="form-group">
                            <div class="col-xs-4">
                                <input type="text" class="form-control" placeholder="First Name" required="required">
                            </div>

                            <div class="col-xs-4">  
                                <input type="text" class="form-control" placeholder="Middle Name" required="required">
                            </div>

                            <div class="col-xs-4">  
                                <input type="text" class="form-control" placeholder="Last Name" required="required">
                            </div>
                        </div>   

                        
                          <div class="bfh-datepicker">
                                <input  id="datepickers" type="text" class="datepicker">
                          </div>
                        </div>    

                    </form>
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


