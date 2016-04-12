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
                <form:form role="form" name="ajax-form" id="ajax-form" action="saveEmployee.do" 
                           method="post" class="form-main" commandName="updateEmployee">
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                            
                        <div class="form-group col-sm-2">
                           <label for="fname">Employee ID</label>
                           <form:input class="form-control" path="id"/>
                           <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                <form:errors  path="fname"></form:errors>
                           </font>
                        </div>
                           
                        <div class="form-group col-sm-4">
                           <label for="fname">First Name</label>
                           <form:input class="form-control" path="fname"/>
                           <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                <form:errors  path="fname"></form:errors>
                           </font>
                        </div>
                        
                        <div class="form-group col-sm-2">
                            <label for="mname">Middle Name</label>
                            <input class="form-control" id="mname" name="mname" 
                                   type="text">
                            <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                 <form:errors path="mname"></form:errors>
                            </font>
                        </div>
                        
                        <div class="form-group col-sm-4">
                            <label for="lname">Last Name</label>
                            <input class="form-control" id="lname" name="lname" 
                                  type="text">
                           <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                 <form:errors path="lname"></form:errors>
                            </font>
                        </div>
                    </div> 
                    </div>
                  
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                        <div class="form-group col-sm-6">
                           <label for="email">Email Address</label>
                           <input class="form-control" id="email" name="email" 
                                   type="email" >
                            <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                 <form:errors path="email"></form:errors>
                            </font>
                        </div>
                        
                        <div class="form-group col-sm-3">
                            <label for="cno">Contact No</label>
                            <input class="form-control" id="cno" name="cno" 
                                   type="number">
                            
                        </div>
                        
                        <div class="form-group col-sm-3">
                            <label for="gender" class="control-label">Gender</label>
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default">
                                    <input type="radio" name="gender" value="male" /> Male
                                </label>
                                <label class="btn btn-default">
                                    <input type="radio" name="gender" value="female" /> Female
                                </label>
                                <label class="btn btn-default">
                                    <input type="radio" name="gender" value="other" /> Other
                                </label>
                                <br>
                                <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                 <form:errors path="gender"></form:errors>
                                </font>
                            </div>
                        </div>
                    </div> 
                    </div>  
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <div class="form-group col-sm-3">
                                 <label for="pincode">Pincode</label>
                                 <input class="form-control" id="pincode" name="pincode" 
                                  type="number">
                                 
                            </div>
                            
                            <div class="form-group col-sm-9">
                                 <label for="address">Address</label>
                                 <input class="form-control" id="address" name="address" 
                                   type="text">
                                 <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                       <form:errors path="address"></form:errors>
                                 </font>
                            </div>
                        </div>
                    </div>  
                    
                    <div class="col-xs-12">   
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                            
                            <div class="form-group col-sm-6">
                                <label for="country">Country</label>  
                                <select name="country" id="countries_states1" class="form-control bfh-countries"></select>
                                 <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                       <form:errors path="country"></form:errors>
                                 </font>
                            </div> 

                            <div class="form-group col-sm-6">
                                <label for="state">State</label> 
                                <select name="state" id="countries_states_city1" class="form-control bfh-states" data-country="countries_states1"></select>
                                <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                       <form:errors path="state"></form:errors>
                                 </font>
                            </div> 

                        </div>    
                    </div>  
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <div class="form-group col-sm-3">
                                <label for="mstatus" class="control-label">Marital Status</label>
                                <select class="form-control bfh-selectbox" id="mstatus" name="mstatus">
                                    <option></option>
                                    <option value="single">Single</option>
                                    <option value="married">Married</option>
                                </select>
                                <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                       <form:errors path="mstatus"></form:errors>
                                 </font>
                            </div>
                            
                            <div class="form-group col-sm-3">
                                <label for="bdate" class="control-label">Birth Date</label>
                                <div class="input-group input-append date" id="datePicker">
                                    <input type="text" class="form-control" name="bdate" id="bdate"/>
                                    <span class="input-group-addon add-on">
                                    <span class="glyphicon glyphicon-calendar"></span></span>
                                    
                                </div>
                                
                            </div>
                            
                            <div class="form-group col-sm-3">
                                <label for="bgroup" class="control-label">Blood Group</label>
                                <select class="form-control bfh-selectbox" id="bgroup" name="bgroup">
                                    <option></option>
                                    <option value="all">All</option>
                                    <option value="a+">A+</option>
                                    <option value="b+">B+</option>
                                </select>
                                
                            </div>
                            
                            <div class="form-group col-sm-3">
                                <label for="doj" class="control-label">Date Of Joining</label>
                                <div class="input-group input-append date" id="dojPicker">
                                    <input type="text" class="form-control" name="doj" id="doj"/>
                                    <span class="input-group-addon add-on">
                                    <span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                            </div>
                            
                        </div>      
                    </div>  
                    
                    <br><br>

                    
                    <!--<div class="row">-->
                    <div class="col-xs-12 text-center"> 
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Office Information</h1>
                            <hr class="hr">
                        </div> 
                    </div>
                    
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">  
                            <div class="form-group col-sm-4">
                                <label for="designation" class="control-label">Designation</label>
                                <select class="form-control bfh-selectbox" id="designation" name="designation">
                                    <option></option>
                                    <option value="developer">Developer</option>
                                    <option value="accountant">Accountant</option>
                                    <option value="manager">Manager</option>
                                </select>
                            </div>

                            <div class="form-group col-sm-4">
                                <label for="department" class="control-label">Department</label>
                                <select class="form-control bfh-selectbox" id="department" name="department">
                                    <option></option>
                                    <option value="CRM">CRM</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                            </div>

                            <div class="form-group col-sm-4">
                                <label for="emptype" class="control-label">Employee Type</label>
                                <select class="form-control bfh-selectbox" id="emptype" name="emptype">
                                    <option></option>
                                    <option value="permanent">Permanent</option>
                                    <option value="temporary">Temporary</option>
                                </select>
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
                           <label for="panno">Pan Card Number</label>
                           <input class="form-control" id="panno" name="panno" 
                                  type="text">
                           <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                       <form:errors path="panno"></form:errors>
                           </font>
                          </div>
                         
                          <div class="form-group col-sm-5">
                             <label for="pf">Include PF</label>
                                <input class="form-control" id="pf" name="pf" 
                                      type="text">
                                <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                       <form:errors path="pf"></form:errors>
                                </font>
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
                            <div class="form-group col-sm-6">
                                <label for="bname">Bank Name</label>
                                <input class="form-control" id="bname" name="bname" 
                                       type="text">
                                <font color="red" family="Comic Sans, Comic Sans MS, cursive">
                                       <form:errors path="bname"></form:errors>
                                </font>                            
                            </div>
                            
                            <div class="form-group col-sm-4">
                                <label for="acno">Account No.</label>
                                <input class="form-control" id="acno" name="acno" 
                                       type="number">
                                
                            </div>
                        </div>   
                     </div> 
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            
                            <div class="form-group col-sm-4">
                                <label for="salaryslab" class="control-label">Salary Slab</label>
                                <select class="selectpicker show-tick form-control" id="salaryslab" name="salaryslab">
                                    <option></option>
                                    <option value="basic salary">Basic Salary</option>
                                    <option value="gross salary">Gross Salary</option>
                                </select>
                            </div>
                            
                            <div class="form-group col-sm-4">
                                <label for="salary">Salary</label>
                                <input class="form-control" id="salary" name="salary" 
                                       type="number" min="0">
                                
                            </div>
                            
                            <div class="form-group col-sm-4">
                                <label for="ptype" class="control-label">Payment Type</label>
                                <select class="selectpicker show-tick form-control" id="ptype" name="ptype">
                                    <option></option>
                                    <option value="cash">Cash</option>
                                    <option value="cheque">Cheque</option>
                                </select>
                            </div>
                        </div>   
                    </div> 
                    
                    <br><br>
                    <div class="form-group text-center">
                        <input type="submit" class="btn btn-custom" value="Add">
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


