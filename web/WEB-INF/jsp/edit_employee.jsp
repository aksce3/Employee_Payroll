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
                <form:form role="form" name="ajax-form" id="ajax-form" action="viewAllEmployees.do" 
                           method="post" class="form-main" commandName="updateEmployee">
                    
                    <c:forEach var="employee" items="${edit_employee}">
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">   
                            
                        <div class="form-group col-sm-2">
                           <label for="fname">Employee ID</label>
                           <input type="text" class="form-control" value="${edit_employee.id}" disabled/>
                        </div>
                            
                        <div class="form-group col-sm-4">
                           <label for="fname">First Name</label>
                           <input type="text" class="form-control" value="${edit_employee.fname}" name="fname"/>
                        </div>
                        
                        <div class="form-group col-sm-2">
                            <label for="mname">Middle Name</label>
                            <input class="form-control" type="text" value="${edit_employee.mname}" name="mname">
                        </div>
                        
                        <div class="form-group col-sm-4">
                            <label for="lname">Last Name</label>
                            <input class="form-control" type="text" value="${edit_employee.lname}" name="lname">
                        </div>
                    </div> 
                    </div>
                    </c:foreach>
                  
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                           <div class="form-group col-sm-6">
                             <label for="email">Email Address</label>
                             <input class="form-control" type="email" value="${edit_employee.email}" name="email">
                           </div>
                        
                            <div class="form-group col-sm-3">
                              <label for="cno">Contact No</label>
                              <input class="form-control" type="number" name="cno" value="${edit_employee.cno}">
                            </div>
                        </div> 
                    </div>  
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <div class="form-group col-sm-3">
                                 <label for="pincode">Pincode</label>
                                 <input class="form-control" type="number" name="pincode" value="${edit_employee.pincode}">
                                 
                            </div>
                            
                            <div class="form-group col-sm-9">
                                 <label for="address">Address</label>
                                 <input class="form-control" type="text" name="address" value="${edit_employee.address} ${edit_employee.country} ${edit_employee.state}">
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
                                <select class="form-control bfh-selectbox" id="designation" name="designation">
                                    <option></option>
                                    <option value="developer">Developer</option>
                                    <option value="accountant">Accountant</option>
                                    <option value="manager">Manager</option>
                                </select>
                             </div>
                            
                            <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="${edit_employee.designation}" disabled>
                            </div>

                            <div class="form-group col-sm-2">
                                <label for="department" class="control-label">Department</label>
                                <select class="form-control bfh-selectbox" id="department" name="department">
                                    <option></option>
                                    <option value="CRM">CRM</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </div>
                            
                            <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="${edit_employee.department}" disabled>
                            </div>

                            <div class="form-group col-sm-2">
                                <label for="emptype" class="control-label">Employee Type</label>
                                <select class="form-control bfh-selectbox" id="emptype" name="emptype">
                                    <option></option>
                                    <option value="permanent">Permanent</option>
                                    <option value="temporary">Temporary</option>
                                </select>
                            </div>
                            
                            <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="${edit_employee.emptype}" disabled>
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
                                <input class="form-control" type="text" value="${edit_employee.pf}" name="pf">
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
                                <input class="form-control" type="text" value="${edit_employee.bname}" name="bname">
                            </div>
                            
                            <div class="form-group col-sm-4">
                                <label for="acno">Account No.</label>
                                <input class="form-control" type="number" value="${edit_employee.acno}" name="acno" >
                           </div>
                                
                            <div class="form-group col-sm-4">
                                <label for="salary">Salary</label>
                                <input class="form-control" type="number" value="${edit_employee.salary}" name="salary" min="0">
                            </div>    
                        </div>   
                     </div> 
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            
                            <div class="form-group col-sm-3">
                                <label for="salaryslab" class="control-label">Salary Slab</label>
                                <select class="selectpicker show-tick form-control" id="salaryslab" name="salaryslab">
                                    <option></option>
                                    <option value="basic salary">Basic Salary</option>
                                    <option value="gross salary">Gross Salary</option>
                                </select>
                            </div>
                            
                            <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="${edit_employee.salaryslab}" disabled>
                            </div>
                            
                            
                            
                            <div class="form-group col-sm-3">
                                <label for="ptype" class="control-label">Payment Type</label>
                                <select class="selectpicker show-tick form-control" id="ptype" name="ptype">
                                    <option></option>
                                    <option value="cash">Cash</option>
                                    <option value="cheque">Cheque</option>
                                </select>
                            </div>
                            
                            
                            <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="${edit_employee.ptype}" disabled>
                            </div>
                        </div>   
                    </div> 
                    
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


