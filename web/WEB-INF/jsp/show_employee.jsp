
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
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">Search Employee Details</h1>
                        
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

        
         
            
        <form role="form" name="ajax-form" id="ajax-form" action="show_employee.do" 
              method="post" class="form-main" commandName="show_employee">
            
             <div class="col-xs-12">  
                 <label for="fname">Enter Employee Name</label>    
                     <div class="row animated fadeInDown wow" data-wow-delay=".5s"> 
                          <div class="form-group col-sm-6">
                             <input type="text" class="form-control">&nbsp;&nbsp;
                          </div>   
                        
                          <div class="form-group col-sm-4">   
                              <input type="submit" value="Search" class="btn btn-info"/>
                              <input type="button" value="New Contact" class="btn btn-info" 
                                  onclick="javascript:go('add_employee.do');"/>
                          </div>   
                     </div>       
            </div>
           
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
                    
                    <th class="detail"></th>
                 </tr>
                 
                 <c:if test="${empty SEARCH_CONTACTS_RESULTS_KEY}">
		<tr>
			<td colspan="7">No Results found</td>
		</tr>
		</c:if>
              </thead> 
                
              
                <tbody>
                   
                    <c:forEach var="employee" items="${employee}">
                       <c:if test="${! empty SEARCH_CONTACTS_RESULTS_KEY}"> 
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
                                  <input type="button" class="btn btn-info" value="Edit">
                              </a> 
                                  
                               
                          </td>
                           <td style="text-align: center; ">
                               <a href="delete_employee.do?id=${employee.id}">
                                  <input type="button" value="Delete" class="btn btn-info">
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
                     </c:if>
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



