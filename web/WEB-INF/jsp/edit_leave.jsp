

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.entity.Employee"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">Update Leave Type Details</h1>
                        
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
                <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Basic Information</h1>
                <hr class="hr">
            </div> 
        </div>
 
        <div class="row">
            <div class="col-md-12 text-left">
                <form:form role="form" name="ajax-form" id="ajax-form" action="updateLeave.do" 
                           method="post" class="form-main" commandName="edit_leave">
                     
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">   
                            
                        <div class="form-group row">
                           <label for="id" class="col-sm-2 form-control-label">Leave ID</label>
                           <div class="col-sm-4">
                               <form:input class="form-control" path="id" readonly="true" />
                               <form:errors path="id" cssStyle="color:red"></form:errors> 
                           </div>
                        </div>
                            
                        <div class="form-group row">
                           <label for="fname" class="col-sm-2 form-control-label">Leave Type</label>
                           <div class="col-sm-8">
                               <form:input class="form-control" path="ltype"/>
                               <form:errors path="ltype" cssStyle="color:red"></form:errors> 
                           </div>
                        </div>
                       
                    </div> 
                    </div>
                    
               
                    <br><br>
                    <div class="form-group text-center">
                        <input type="submit" class="btn btn-custom" value="Update">
                        <input type="button" value="Back" class="btn btn-info" 
                                  onclick="javascript:go('viewAllLeaves.do');"/>
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


