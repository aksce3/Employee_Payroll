<%-- 
    Document   : add_employee
    Author     : akshay
--%>


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
        <%@include file="HR_header_div.jsp" %>
        <!--/Menu -->

        <div class="clearfix"></div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <div class="home-wrapper">
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">Employee Attendance</h1>
                        
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
                <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Upload Attendance</h1>
                <hr class="hr">
            </div> 
        </div>

        <div class="row">
            <div class="col-md-12 text-left">
                <form:form role="form" name="ajax-form" id="ajax-form" action="" 
                           method="post" class="form-main" commandName="">
                  
                    <div class="col-xs-12">  
                        <label for="fname">Upload csv File</label>
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                        <div class="form-group col-sm-6">
                           
                           <input type="file" class="form-control">
                        </div>
                          
                        <div class="form-group col-sm-4">    
                            <input type="submit" class="btn btn-custom" value="Upload"> 
                        </div>
                        </div>    
                    </div>    
                    
                     &nbsp;&nbsp;&nbsp;
                     
                    <div class="col-xs-12">
                        
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                            <div class="form-group col-sm-3">
                                <label for="fname">Employee</label>
                                <input type="text" class="form-control"> 
                            </div>
                            
                            <div class="form-group col-sm-3">
                                <label for="doj" class="control-label">From Date:</label>
                                <div class="input-group input-append date" id="dojPicker">
                                    <input type="text" class="form-control" name="doj" id="doj"/>
                                    <span class="input-group-addon add-on">
                                    <span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                            </div>
                            
                            <div class="form-group col-sm-3">
                                <label for="doj" class="control-label">To Date:</label>
                                <div class="input-group input-append date" id="dojPicker">
                                    <input type="text" class="form-control" name="doj" id="doj"/>
                                    <span class="input-group-addon add-on">
                                    <span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                            </div>
                            
                            <br>
                                 <input type="submit" class="btn btn-custom" value="Search"> 
                        </div>  
                        
                        
                    </div> 
                    
                    
                           
                </form:form>
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


