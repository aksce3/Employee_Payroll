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
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">View Leave Type Details</h1>
                        
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

        
         
            
        <form role="form" name="ajax-form" id="ajax-form" action="searchLeave.do" 
              method="post" class="form-main">
           <div class="col-xs-12">  
                 <label for="fname">Enter Leave Name</label>    
                     <div class="row animated fadeInDown wow" data-wow-delay=".5s"> 
                          <div class="form-group col-sm-6">
                              <input type="text" class="form-control" name="ltype">&nbsp;&nbsp;
                          </div>   
                        
                          <div class="form-group col-sm-4">   
                              <input type="submit" value="Search" class="btn btn-info"/>
                              <input type="button" value="Back" class="btn btn-info" 
                                  onclick="javascript:go('viewAllLeaves.do');"/>
                              <input type="button" value="New Leave" class="btn btn-info" 
                                  onclick="javascript:go('add_leave.do');"/>
                          </div>   
                     </div>       
            </div>
            
        </form>    
            <table data-toggle="table"   id="tableSearchResults" 
                   class="table table-hover  table-striped table-condensed">
                <thead>
                  <tr>
                    
                    <th data-field="id">
                        <div class="th-inner sortable both">Leave ID</div>
                    </th>

                    <th>
                        <div class="th-inner ">Leave Type</div>
                    </th>

                    <th class="detail"></th>
                    
                    <th class="detail"></th>
                 </tr>
              
                 <c:if test="${empty SEARCH_LEAVES_RESULTS_KEY}">
	           <tr>
			<td colspan="7">No Results found</td>
		   </tr>
	         </c:if>
               </thead> 
               
              
             
                <tbody>
                  <c:if test="${! empty SEARCH_LEAVES_RESULTS_KEY}">
                    <c:forEach var="leave" items="${SEARCH_LEAVES_RESULTS_KEY}">
                       <tr id="package1" class="accordion-toggle" data-toggle="collapse" 
                            data-parent="#OrderPackages" data-target="#${leave.id}">
                         
                           <td style="text-align:center;">
                               ${leave.id}
                           </td>
                        
                           <td style="text-align: center; ">
                              ${leave.ltype}
                           </td>
                        
                          <td style="text-align: center; ">
                              <a href="updateLeave.do?id=${leave.id}">
                                  <input type="button" class="btn btn-info" value="Edit">
                              </a> 
                                  
                               
                          </td>
                           <td style="text-align: center; ">
                               <a href="delete_leave.do?id=${leave.id}">
                                  <input type="button" value="Delete" class="btn btn-info">
                               </a>
                           </td>
                          
                           
                      </tr> 
                    
                    </c:forEach>
                  </c:if>
                </tbody>
            </table>
             
             
           
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