<%-- 
    Document   : add_employee
    Author     : akshay
--%>


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
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">Employee Details</h1>
                        
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
                <form:form role="form" name="ajax-form" id="ajax-form" action="updateEmployee.do" 
                           method="post" class="form-main" commandName="edit_employee">
                    
                    
                    
                    
                        
                        
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">   
                            
                        <div class="form-group col-sm-2">
                           <label for="fname">Employee ID</label>
                           <form:input class="form-control" path="id" readonly="true" />
                           <form:errors path="id" cssStyle="color:red"></form:errors> 
                        </div>
                            
                        <div class="form-group col-sm-4">
                           <label for="fname">First Name</label>
                           <form:input class="form-control" path="fname"/>
                           <form:errors path="fname" cssStyle="color:red"></form:errors> 
                        </div>
                        
                        <div class="form-group col-sm-2">
                            <label for="mname">Middle Name</label>
                            <form:input class="form-control" path="mname"/>
                            <form:errors path="mname" cssStyle="color:red"></form:errors> 
                        </div>
                        
                        <div class="form-group col-sm-4">
                            <label for="lname">Last Name</label>
                            <form:input class="form-control" path="lname"/>
                            <form:errors path="lname" cssStyle="color:red"></form:errors> 
                        </div>
                    </div> 
                    </div>
                    
                  
                   <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                           <div class="form-group col-sm-6">
                             <label for="email">Email Address</label>
                             <form:input class="form-control" path="email"/>
                            <form:errors path="email"></form:errors>
                           </div>
                        
                            <div class="form-group col-sm-3">
                              <label for="cno">Contact No</label>
                              <form:input class="form-control" path="cno"/>
                              <form:errors path="cno"></form:errors>
                            </div>
                            
                            <div class="form-group col-sm-3">
                              <label for="bdate" class="control-label">Birth Date</label>
                              <form:input class="form-control" path="bdate" readonly="true"/>
                            </div>
                        </div> 
                    </div>  
                             
                                    
                   <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                           
                            <div class="form-group col-sm-3">
                                <label for="doj" class="control-label">Date Of Joining</label>
                                <form:input class="form-control" path="doj" readonly="true"/> 
                            </div>
                            
                            <div class="form-group col-sm-2">
                                <label for="gender" class="control-label">Gender</label>
                                <form:select class="form-control bfh-selectbox" path="gender">
                                    <form:option value="Male" label="Male"/>
                                    <form:option value="Female" label="Female"/>
                                </form:select>
                                <form:errors path="gender"></form:errors>    
                             </div>   
                            
                             <div class="form-group col-sm-2">
                                <label for="mstatus" class="control-label">Marital Status</label>
                                <form:select class="form-control bfh-selectbox" path="mstatus">
                                    <form:option value="Single" label="Single"/>
                                    <form:option value="Married" label="Married"/>
                                </form:select>
                                <form:errors path="mstatus"></form:errors>    
                             </div>   
                             
                             <div class="form-group col-sm-2">
                                <label for="bgroup" class="control-label">Blood Group</label>
                                <form:select class="form-control bfh-selectbox" path="bgroup">
                                    <form:option value="O+" label="O+"/>
                                    <form:option value="A+" label="A+"/>
                                    <form:option value="B+" label="B+"/>
                                </form:select>
                                <form:errors path="bgroup"></form:errors>    
                             </div>   
                             
                             <div class="form-group col-sm-2">
                                <label for="password">Password</label>
                                <form:input class="form-control" path="password" readonly="true"/>
                                <form:errors path="password"></form:errors>      
                            </div>
                             
                           
                        </div> 
                    </div>                   
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <div class="form-group col-sm-3">
                                 <label for="pincode">Pincode</label>
                                 <form:input class="form-control" path="pincode"/>
                                 <form:errors path="pincode"></form:errors>
                            </div>
                            
                            <div class="form-group col-sm-9">
                                 <label for="address">Address</label>
                                 <form:input class="form-control" path="address"/>
                                 <form:errors path="address"></form:errors>
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
                            <div class="form-group col-sm-2">
                                <label for="designation" class="control-label">Designation</label>
                                <form:select class="form-control bfh-selectbox" path="designation">
                                    <form:option value="developer" label="Developer"/>
                                    <form:option value="accountant" label="Accountant"/>
                                    <form:option value="manager" label="Manager"/>
                                </form:select>
                                <form:errors path="designation"></form:errors>    
                             </div>   
                      
                            <div class="form-group col-sm-2">
                                <label for="department" class="control-label">Department</label>
                                <form:select class="form-control bfh-selectbox" path="department">
                                    <form:option value="CRM" label="CRM"/>
                                    <form:option value="HR" label="HR"/>
                                    <form:option value="DATA" label="DATA"/>
                                </form:select>
                                <form:errors path="department"></form:errors>        
                                    
                            </div>       
                         
                            <div class="form-group col-sm-2">
                                <label for="emptype" class="control-label">Employee Type</label>
                                <form:select class="form-control bfh-selectbox" path="emptype">
                                    <form:option value="Permanent" label="Permanent"/>
                                    <form:option value="Temporary" label="Temporary"/>
                                </form:select>
                                <form:errors path="emptype"></form:errors>      
                            </div>      
                        </div>
                    </div>  
                    
                    <br><br>

                   <div class="row">
                        <div class="col-sm-12 text-center">
                            <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Other Information</h1>
                            <hr class="hr">
                        </div> 
                    </div>
                    
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">  
                           <div class="form-group col-sm-5">
                             <label for="pf">Include PF</label>
                                <form:input class="form-control" path="pf"/>
                                 <form:errors path="pf"></form:errors>      
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
                                <form:input class="form-control" path="bname"/>
                                <form:errors path="bname"></form:errors>      
                            </div>
                            
                            <div class="form-group col-sm-4">
                                <label for="acno">Account No.</label>
                                <form:input class="form-control" path="acno" />
                                <form:errors path="acno"></form:errors>      
                           </div>
                                
                            <div class="form-group col-sm-4">
                                <label for="salary">Salary</label>
                                <form:input class="form-control" path="salary" />
                                <form:errors path="salary"></form:errors>      
                            </div>    
                        </div>   
                     </div> 
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            
                            <div class="form-group col-sm-3">
                                <label for="salaryslab" class="control-label">Salary Slab</label>
                                <form:select class="selectpicker show-tick form-control" path="salaryslab">
                                    <form:option value="Basic Salary" label="Basic Salary"/>
                                    <form:option value="Gross Salary" label="Gross Salary"/>
                                </form:select>
                                <form:errors path="salaryslab"></form:errors>          
                            </div>     
                       
                            <div class="form-group col-sm-3">
                                <label for="ptype" class="control-label">Payment Type</label>
                                <form:select class="selectpicker show-tick form-control" path="ptype">
                                    <form:option value="Cash" label="Cash"/>
                                    <form:option value="Cheque" label="Cheque"/>
                                </form:select>
                                <form:errors path="ptype"></form:errors>          
                            </div>   
                            
                            <div class="form-group col-sm-2">
                                <label for="panno">Pan Card Number</label>
                                <form:input class="form-control" path="panno" readonly="true"/>
                                <form:errors path="panno"></form:errors>      
                            </div>
                       
                        </div>   
                    </div> 
                            
                      <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            
                       
                        </div>   
                     </div>         
                         
                            <input type="hidden" name="country" value="${employee1.country}"/>
                            <input type="hidden" name="state" value="${employee1.state}"/>
                            
                            
                            
                            
                    <br><br>
                    <div class="form-group text-center">
                        <input type="submit" class="btn btn-custom" value="Update">
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


