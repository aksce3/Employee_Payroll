<%-- 
    Document   : add_employee
    Author     : akshay
--%>


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
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">View Employee Details</h1>
                        
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
                <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Employee Information</h1>
                <hr class="hr">
            </div> 
        </div>

    <div class="row">
        <div class="col-md-12 text-left">
            <form:form role="form" name="ajax-form" id="ajax-form" method="post" class="form-main" >
             
               <c:forEach items="${EMP_EMAIL}" var="employee">
                  <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-2">
                           <label for="fname">Employee ID</label>    
                           <input type="text" class="form-control" value="${employee.id}" disabled/>
                        </div>
                          
                        <div class="form-group col-sm-4">
                            <label for="fname">First Name</label>
                            <input type="text" class="form-control" value="${employee.fname}" disabled/>
                        </div>
                        
                        <div class="form-group col-sm-2">
                           <label for="fname">Middle Name</label>    
                           <input type="text" class="form-control" value="${employee.mname}" disabled/>
                        </div>
                        
                        <div class="form-group col-sm-4">
                           <label for="fname">Last Name</label>    
                           <input type="text" class="form-control" value="${employee.lname}" disabled/>
                        </div>
                      </div>     
                  </div>   
                  
                  <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-6">
                          <label for="email">Email Address</label>
                           <input type="text" class="form-control" value="${employee.email}" disabled/>
                        </div>
                          
                        <div class="form-group col-sm-3">
                            <label for="cno">Contact No</label>
                            <input type="text" class="form-control" value="${employee.cno}" disabled/>
                        </div>
                        
                        <div class="form-group col-sm-3">
                            <label for="bdate">Birth Date</label>
                            <input type="text" class="form-control" value="${employee.bdate}" disabled/>
                        </div>
                       
                  </div>         
               </c:forEach>
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


