
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
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

        
            
        <form role="form" name="ajax-form" id="ajax-form" action="updateEmployee.do" 
              method="post" class="form-main" commandName="editEmployee">
            <table data-toggle="table">
                <thead>
                  <tr>
                    <th class="detail" rowspan="2"></th>
                    
                    <th class="detail"></th>
                    
                    <th class="bs-checkbox " rowspan="2" tabindex="0">
                        <div class="th-inner ">
                            <input name="btSelectAll" type="checkbox">
                        </div>
                    </th>

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
                  </tr>
                </thead> 
                
                <tbody>
                    <c:forEach var="employee" items="${employee}">
                        <tr data-index="${employee.id}">
                        <td>
                            <a class="detail-icon" href="javascript:">
                              <i class="glyphicon glyphicon-plus icon-plus"></i>
                            </a>  
                            
                        </td>
                        
                        <td style="text-align: center; ">
                            <a class="remove" href="javascript:void(0)" title="Remove">
                                <i class="glyphicon glyphicon-remove"></i>
                            </a>
                        </td>
                        
                        <td class="bs-checkbox ">
                            <input data-index="0" name="btSelectItem" type="checkbox" value="0">
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
                    </tr> 
                    <tr class="detail-view">
                        <td>
                            <p>
                        Name = ${employee.fname}
                            </p>
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



