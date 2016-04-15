<%-- 
    Document   : HR_header_div.jsp
    Author     : akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
< % session.invalidate(); %>
<!DOCTYPE html>
<html>
    <body>
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
                                <li><a href="add_employee.do">Add Employee</a></li>
                                <li><a href="viewAllEmployees.do">View Employees</a></li>
                                <li><a href="delete_employee.do">Delete Employee</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown">
                                Attendance 
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu arrow">
                                <li><a href="#">View Daily Attendance</a></li>
                                <li><a href="#">Leave Management</a></li>
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
                            <a href="hr.do">Log out</a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>    
    </body>
</html>
