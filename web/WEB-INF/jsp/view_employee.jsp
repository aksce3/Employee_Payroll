
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>
        <meta charset="utf-8">
        <%@include file="design_div.jsp" %>
        
        <script type="text/javascript">
          $('#accordion1').on('shown.bs.collapse', function () {
          $("#package1 i.indicator").removeClass("glyphicon-chevron-up").addClass("glyphicon-chevron-down");
         });
         
         $('#accordion1').on('hidden.bs.collapse', function () {
         $("#package1 i.indicator").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-up");
        });
            
            
        </script>
       
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

        
         
            
        <form role="form" name="ajax-form" id="ajax-form" action="updateEmployee.do" 
              method="post" class="form-main" commandName="viewAllEmployees">
            <table data-toggle="table"   id="tableSearchResults" 
                   class="table table-hover  table-striped table-condensed">
                <thead>
                  <tr>
                    <th class="detail" rowspan="2"></th>
                  
                    <th data-field="id">
                        <div class="th-inner sortable both">Employee ID</div>
                    </th>

                    <th>
                        <div class="th-inner ">First Name</div>
                    </th>

                    <th>
                        <div class="th-inner ">Middle Name</div>
                    </th>

                    <th>
                        <div class="th-inner ">Last Name</div>
                    </th>
                    
                    <th class="detail"></th>
                    
                    
                  </tr>
                </thead> 
                
                <tbody>
                  <c:forEach var="employee" items="${employee}">
                       <tr id="package1" class="accordion-toggle" data-toggle="collapse" 
                            data-parent="#OrderPackages" data-target="#${employee.id}">
                           
                           <td>
                               <i class="indicator glyphicon glyphicon-chevron-up pull-right"></i>
                           </td>
                        
                           <td style="text-align: center; ">
                               ${employee.id}
                           </td>
                        
                           <td style="text-align: center; ">
                              ${employee.fname}
                           </td>
                        
                           <td style="text-align: center; ">
                              ${employee.mname}
                           </td>
                        
                           <td style="text-align: center; ">
                             ${employee.lname}
                           </td>
                          
                        
                          <td style="text-align: center; ">
                              <a href="edit_employee.do?id=${employee.id}">
                                  <button type="button" class="btn btn-info">Edit</button>
                              </a>
                          </td>
                          
                           
                      </tr> 
                      
                      
                    <tr>
                       <td colspan="7" class="hiddenRow">
                           <div class="accordion-body collapse packageDetails1" id="${employee.id}">
                             <p><b> <font color="blue">Full Name:</font></b> 
                                ${employee.fname} ${employee.mname} ${employee.lname} 
                             </p>
                                 
                             <p><b> <font color="blue">Email Address:</font></b> 
                                 ${employee.email} 
                             </p>
                             
                             <p><b> <font color="blue">Contact No:</font></b> 
                                 ${employee.cno}  
                             </p>
                             
                             <p><b> <font color="blue">Gender:</font></b> 
                                 ${employee.gender}  
                             </p>
                             
                             <p><b> <font color="blue">Pincode:</font></b> 
                                 ${employee.pincode}  
                             </p>
                             
                             <p><b> <font color="blue">Address:</font></b> 
                                 ${employee.address}  
                             </p>
                                 
                             <p><b> <font color="blue">Country:</font></b> 
                                 ${employee.country}
                             </p>
                             
                             <p><b> <font color="blue">State:</font></b> 
                                 ${employee.state}  
                             </p>
                             
                             <p><b> <font color="blue">Marital Status:</font></b> 
                                 ${employee.mstatus}  
                             </p>
                             
                             <p><b> <font color="blue">Blood Group:</font></b> 
                                 ${employee.bgroup}  
                             </p>
                             
                             <p><b> <font color="blue">Designation:</font></b> 
                                 ${employee.designation}
                             </p>
                             
                             <p><b> <font color="blue">Department:</font></b> 
                                 ${employee.department}  
                             </p>
                             
                             <p><b> <font color="blue">Employee Type:</font></b> 
                                 ${employee.emptype}   
                             </p>
                             
                             <p><b> <font color="blue">Pan Card No:</font></b> 
                                 ${employee.panno}  
                             </p>
                             
                             <p><b> <font color="blue">PF:</font></b> 
                                 ${employee.pf}   
                             </p>
                             
                             <p><b> <font color="blue">Bank Name:</font></b> 
                                 ${employee.bname}   
                             </p>
                             
                             <p><b> <font color="blue">Account No:</font></b> 
                                 ${employee.acno}   
                             </p>
                             
                             <p><b> <font color="blue">Salary Slab:</font></b> 
                                 ${employee.salaryslab}   
                             </p>
                             
                             <p><b> <font color="blue">Salary:</font></b> 
                                 ${employee.salary}   
                             </p>
                             
                              <p><b> <font color="blue">Payment Type:</font></b> 
                                 ${employee.ptype}   
                             </p>
                        </div>   
                       </td>       
                    </tr>
                    
                      </c:forEach>
                        
                    
                    
                    
                </tbody>
            </table>
                </form>
             
           
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



