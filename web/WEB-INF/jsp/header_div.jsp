<%-- 
    Document   : header.jsp
    Author     : akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                 <a class="navbar-brand logo" href="index.do">
                    <i class="ion-social-buffer"></i>
                    <span>Iflexion Software solutions</span>
                 </a>
             </div>
        
             <div class="navbar-collapse collapse">
                 <ul class="nav navbar-nav navbar-right"> 
                    <li>
                       <a href="index.do">Home</a>
                    </li>
                    
                    <li class="dropdown">
                        <a href="index.do" data-toggle="dropdown">
                            User Login
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu arrow">
                            <li><a href="hr.do">HR</a></li>
                            <li><a href="employee.do">Employee</a></li>
                        </ul>
                    </li> 
                    <li>
                       <a href="services.do">Services</a>
                    </li>
                    <li>
                       <a href="careers.do">Careers</a>
                    </li>
                    <li>
                       <a href="contact.do">Contact</a>
                    </li>
                    <li>
                       <a href="about.do">About Us</a>
                    </li>
            
                </ul>
             </div>
        </div>
        <!-- end container -->
    </div>
  </body>
</html>
