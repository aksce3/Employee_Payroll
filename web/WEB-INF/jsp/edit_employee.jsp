<%-- 
    Document   : add_employee
    Author     : akshay
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.entity.Employee"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 <%! java.util.Date doj;
 String d; Date d1;%>
                    <%    doj = (java.util.Date) session.getAttribute("date");
                     d = doj.toString();
                    //doj = emp.getDoj() ;
                    //SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
                    //doj= new Date(format.format(doj));
                  //  String d = format.format(date);
                   // doj = new Date(d);
                    
                    System.out.println("Date is : " + doj);
                        //Date d = new Date(doj);%>
        <div class="row">
            <div class="col-md-12 text-left">
                <form:form role="form" name="ajax-form" id="ajax-form" action="updateEmployee.do" 
                           method="post" class="form-main" commandName="employee">
                    
                    
                    <c:set var="employee1" value="${edit_employee1}"></c:set>
                    
                        
                        
                    <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">   
                            
                        <div class="form-group col-sm-2">
                           <label for="fname">Employee ID</label>
                           <input type="text" class="form-control" value="${employee1.id}" name="id" disabled />
                        <form:errors path="id" cssStyle="color:red"></form:errors> 
                        </div>
                            
                        <div class="form-group col-sm-4">
                           <label for="fname">First Name</label>
                           <input type="text" class="form-control" value="${employee1.fname}" name="fname"/>
                           <form:errors path="fname" cssStyle="color:red"></form:errors> 
                        </div>
                        
                        <div class="form-group col-sm-2">
                            <label for="mname">Middle Name</label>
                            <input class="form-control" type="text" value="${employee1.mname}" name="mname">
                            <form:errors path="mname" cssStyle="color:red"></form:errors> 
                        </div>
                        
                        <div class="form-group col-sm-4">
                            <label for="lname">Last Name</label>
                            <input class="form-control" type="text" value="${employee1.lname}" name="lname">
                            <form:errors path="lname" cssStyle="color:red"></form:errors> 
                        </div>
                    </div> 
                    </div>
                    
                  
                   <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                           <div class="form-group col-sm-6">
                             <label for="email">Email Address</label>
                             <input class="form-control" type="email" value="${employee1.email}" name="email">
                            <form:errors path="email"></form:errors>
                           </div>
                        
                            <div class="form-group col-sm-3">
                              <label for="cno">Contact No</label>
                              <input class="form-control" type="number" name="cno" value="${employee1.cno}">
                              <form:errors path="cno"></form:errors>
                            </div>
                            
                            <div class="form-group col-sm-3">
                                <label for="bdate" class="control-label">Birth Date</label>
                                <div class="input-group input-append date">
                                    <input type="text" class="form-control" name="bdate" id="bdate" value="${employee1.bdate}" disabled/>
                                    
                                </div>
                                
                            </div>
                        </div> 
                    </div>  
                             
                                    
                   <div class="col-xs-12">  
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                           
                            <div class="form-group col-sm-3">
                                <label for="doj" class="control-label">Date Of Joining</label>
                                <div class="input-group input-append date">
                                    <input type="text" class="form-control" name="doj" id="doj" value="<%=doj%>" disabled/>
                                </div>
                            </div>
                        </div> 
                    </div>                   
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <div class="form-group col-sm-3">
                                 <label for="pincode">Pincode</label>
                                 <input class="form-control" type="number" name="pincode" value="${employee1.pincode}">
                                 <form:errors path="pincode"></form:errors>
                            </div>
                            
                            <div class="form-group col-sm-9">
                                 <label for="address">Address</label>
                                 <input class="form-control" type="text" name="address" value="${employee1.address}">
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
                                <select class="form-control bfh-selectbox" id="designation" name="designation">
                                    <option value="${employee1.designation}"></option>
                                    <option value="developer">Developer</option>
                                    <option value="accountant">Accountant</option>
                                    <option value="manager">Manager</option>
                                </select>
                                <form:errors path="designation"></form:errors>    
                             </div>   
                            
                            <!--<div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="" disabled>
                            </div>--->
                       

                        <div class="form-group col-sm-2">
                                <label for="department" class="control-label">Department</label>
                                <select class="form-control bfh-selectbox" id="department" name="department">
                                    <option value="${employee1.department}"></option>
                                    <option value="CRM">CRM</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                                <form:errors path="department"></form:errors>        
                                    
                            </div>       
                            
                          <!--  <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" disabled>
                            </div>  -->

                           <div class="form-group col-sm-2">
                                <label for="emptype" class="control-label">Employee Type</label>
                                <select class="form-control bfh-selectbox" id="emptype" name="emptype">
                                    <option value="${employee1.emptype}"></option>
                                    <option value="permanent">Permanent</option>
                                    <option value="temporary">Temporary</option>
                                </select>
                                <form:errors path="emptype"></form:errors>      
                            </div>      
                            
                        <!--    <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" disabled>
                            </div>  -->
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
                                <input class="form-control" type="text" value="${employee1.pf}" name="pf">
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
                                <input class="form-control" type="text" value="${employee1.bname}" name="bname">
                                <form:errors path="bname"></form:errors>      
                            </div>
                            
                            <div class="form-group col-sm-4">
                                <label for="acno">Account No.</label>
                                <input class="form-control" type="number" value="${employee1.acno}" name="acno" >
                                <form:errors path="acno"></form:errors>      
                           </div>
                                
                            <div class="form-group col-sm-4">
                                <label for="salary">Salary</label>
                                <input class="form-control" type="number" value="${employee1.salary}" name="salary" min="0">
                                <form:errors path="salary"></form:errors>      
                            </div>    
                        </div>   
                     </div> 
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            
                            <div class="form-group col-sm-3">
                                <label for="salaryslab" class="control-label">Salary Slab</label>
                                <select class="selectpicker show-tick form-control" id="salaryslab" name="salaryslab">
                                    <option value="${employee1.salaryslab}"></option>
                                    <option value="basic salary">Basic Salary</option>
                                    <option value="gross salary">Gross Salary</option>
                                </select>
                                <form:errors path="salaryslab"></form:errors>          
                            </div>     
                            
                  <!--          <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="" disabled>
                            </div>  -->
                            
                            
                            
                            <div class="form-group col-sm-3">
                                <label for="ptype" class="control-label">Payment Type</label>
                                <select class="selectpicker show-tick form-control" id="ptype" name="ptype">
                                    <option value="${employee1.ptype}"></option>
                                    <option value="cash">Cash</option>
                                    <option value="cheque">Cheque</option>
                                </select>
                                <form:errors path="ptype"></form:errors>          
                            </div>     
                            
                            
                       <!--     <div class="form-group col-sm-2">
                                <br>
                                <input class="form-control" type="text" value="" disabled>
                            </div>  -->
                        </div>   
                    </div> 
                            
                            <input type="hidden" name="password" value="${employee1.password}"/>
                            <input type="hidden" name="gender" value="${employee1.gender}" />
                            
                            <input type="hidden" name="mstatus" value="${employee1.mstatus}" /> 
                            <input type="hidden" name="bgroup" value="${employee1.bgroup}" /> 
                            <input type="hidden" name="panno" value="${employee1.panno}" />
                        
                            <input type="hidden" name="doj" value="${employee1.doj}"/>
                            
                            <input type="hidden" name="country" value="${employee1.country}"/>
                            <input type="hidden" name="state" value="${employee1.state}"/>
                            <input type="hidden" name="salaryslab" value="${employee1.salaryslab}"/>
                            
                            
                            
                            
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


