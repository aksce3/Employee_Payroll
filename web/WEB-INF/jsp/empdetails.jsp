


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
                           <form:input class="form-control" path="id" readonly="true"/>
                        </div>
                          
                        <div class="form-group col-sm-4">
                            <label for="fname">First Name</label>
                            <form:input class="form-control" path="fname" readonly="true"/>
                        </div>
                        
                        <div class="form-group col-sm-2">
                           <label for="fname">Middle Name</label>    
                           <form:input class="form-control" path="mname" readonly="true"/>
                        </div>
                        
                        <div class="form-group col-sm-4">
                           <label for="fname">Last Name</label>    
                          <form:input class="form-control" path="lname" readonly="true"/>
                        </div>
                      </div>     
                  </div>   
                  
                   <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-6">
                          <label for="email">Email Address</label>
                           <form:input class="form-control" path="email" readonly="true"/>
                        </div>
                          
                        <div class="form-group col-sm-3">
                            <label for="cno">Contact No</label>
                            <form:input class="form-control" path="cno" readonly="true"/>
                        </div>
                        
                        <div class="form-group col-sm-3">
                            <label for="bdate">Birth Date</label>
                           <form:input class="form-control" path="bdate" readonly="true"/>
                        </div>
                      </div> 
                   </div>       
                        
                   <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-4">
                          <label for="address">Address</label>
                           <form:input class="form-control" path="address" readonly="true"/>
                        </div>
                          
                        <div class="form-group col-sm-2">
                            <label for="pincode">Pincode</label>
                            <form:input class="form-control" path="pincode" readonly="true"/>
                        </div>
                        
                        <div class="form-group col-sm-3">
                            <label for="country">Country</label>
                            <form:input class="form-control" path="country" readonly="true"/>
                        </div>
                        
                        <div class="form-group col-sm-3">
                            <label for="state">State</label>
                            <form:input class="form-control" path="state" readonly="true"/>
                        </div>
                        
                        
                      </div> 
                   </div>  
                        
                   <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-3">
                          <label for="mstatus">Marital Status</label>
                           <form:input class="form-control" path="mstatus" readonly="true"/>
                        </div>
                          
                        <div class="form-group col-sm-3">
                            <label for="bgroup">Blood Group</label>
                            <form:input class="form-control" path="bgroup" readonly="true"/>
                        </div>
                      </div> 
                   </div>  
                        
                   <br><br>     
                   <div class="col-xs-12 text-center"> 
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Office Information</h1>
                            <hr class="hr">
                        </div> 
                   </div>
                        
                   <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-4">
                          <label for="designation">Designation</label>
                           <form:input class="form-control" path="designation" readonly="true"/>
                        </div>
                          
                        <div class="form-group col-sm-4">
                            <label for="department">Department</label>
                           <form:input class="form-control" path="department" readonly="true"/>
                        </div>  
                        
                        <div class="form-group col-sm-4">
                            <label for="emptype">Employee Type</label>
                            <form:input class="form-control" path="emptype" readonly="true"/>
                        </div>
                      </div> 
                   </div>   
                        
                   <br><br>  
                   
                   <div class="row">
                        <div class="col-sm-12 text-center">
                            <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Payment Information</h1>
                            <hr class="hr">
                        </div> 
                   </div>
                        
                   <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-4">
                          <label for="bname">Bank Name</label>
                           <form:input class="form-control" path="bname" readonly="true"/>
                        </div>
                          
                        <div class="form-group col-sm-4">
                            <label for="acno">Account No.</label>
                            <form:input class="form-control" path="acno" readonly="true"/>
                        </div>  
                        
                        <div class="form-group col-sm-4">
                            <label for="ptype">Payment Type</label>
                            <form:input class="form-control" path="ptype" readonly="true"/>
                        </div>
                      </div> 
                   </div> 
                        
                    <div class="col-xs-12">  
                      <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                        <div class="form-group col-sm-4">
                          <label for="panno">Pan Card Number</label>
                           <form:input class="form-control" path="panno" readonly="true"/>
                        </div>
                          
                        <div class="form-group col-sm-4">
                            <label for="salary">Salary</label>
                            <form:input class="form-control" path="salary" readonly="true"/>
                        </div>  
                        
                        <div class="form-group col-sm-2">
                            <label for="pf">Include PF</label>
                            <form:input class="form-control" path="pf" readonly="true"/>
                        </div> 
                      </div> 
                   </div>   
                        
                    <br><br>
                    <div class="form-group text-center">
                      <a href="updatemainemp.do?email=${employee.email}">
                                  <input type="button" class="btn btn-info" value="Update">
                              </a> 
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


