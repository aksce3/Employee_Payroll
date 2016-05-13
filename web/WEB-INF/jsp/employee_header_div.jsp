<%-- 
    Document   : employee_header_div.jsp
    Author     : akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
< % session.invalidate(); %>
<!DOCTYPE html>
<html>
    <body>
        <%
            String email = (String)session.getAttribute("email");
        %>
        <div class="navbar navbar-custom sticky navbar-abs" role="navigation">
            <div class="container">

                <!-- Navbar-header -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <i class="ion-navicon"></i>
                    </button>

                    <!-- LOGO -->
                    <a class="navbar-brand logo" href="admin.do">
                        <i class="ion-social-buffer"></i>
                        <span>Iflexion Software solutions</span>
                    </a>
                </div>


                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right"> 
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">
                                Employee
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu arrow">
                                <li><a href="empdetails.do?email=<%=email%>">View Employee Details</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">
                                Attendance 
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu arrow">
                                <li><a href="#">View Daily Attendance</a></li>
                            </ul>
                        </li>
                        
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">
                                Leave 
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu arrow">
                                <li><a href="#">Manage Leave Type</a></li>
                                <li><a href="#">Manage Leave Detail</a></li>
                                <li><a href="#">Manage Current Used Leave</a></li>
                            </ul>
                        </li>
                        
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">
                                Salary 
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu arrow">
                                <li><a href="#">Add Salary</a></li>
                                <li><a href="#">Generate Salary</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="employee.do">Log out</a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>    
    </body>
</html>
