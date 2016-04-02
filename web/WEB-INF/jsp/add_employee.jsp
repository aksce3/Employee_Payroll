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
                        <h1 class="animated fadeInDown wow" data-wow-delay=".1s">HR User</h1>
                        <h4 class="page-sub-title animated fadeInDown wow" data-wow-delay=".3s">The People behind Iflexion Software solutions</h4>
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
                <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Employee Detail</h1>
                <hr class="hr">
            </div> 
        </div>

        <div class="row">
            <div class="col-md-12 text-left">
                <form role="form" name="ajax-form" id="ajax-form" action="" method="post" class="form-main" >
                  <div class="col-xs-12">  
                    <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                        <div class="form-group col-sm-4">
                           <label for="name2">First Name</label>
                           <input class="form-control" id="name2" name="fname" 
                                  onblur="if(this.value == '') this.value='First Name'" 
                                  onfocus="if(this.value == 'First Name') this.value=''" type="text" value="First Name">
                           <div class="error" id="err-name" style="display: none;">Please Enter First Name</div>
                        </div>
                        
                        <div class="form-group col-sm-4">
                            <label for="name2">Middle Name</label>
                            <input class="form-control" id="name2" name="mname" 
                                  onblur="if(this.value == '') this.value='Middle Name'" 
                                  onfocus="if(this.value == 'Middle Name') this.value=''" type="text" value="Middle Name">
                           <div class="error" id="err-name" style="display: none;">Please Enter Middle Name</div>
                        </div>
                        
                        <div class="form-group col-sm-4">
                            <label for="name2">Last Name</label>
                            <input class="form-control" id="name2" name="lname" 
                                  onblur="if(this.value == '') this.value='Last Name'" 
                                  onfocus="if(this.value == 'Last Name') this.value=''" type="text" value="Last Name">
                           <div class="error" id="err-name" style="display: none;">Please Enter Last Name</div>
                        </div>
                    </div> 
                  </div>
                  
                  <div class="col-xs-12">  
                    <div class="row animated fadeInDown wow" data-wow-delay=".5s">       
                        <div class="form-group col-sm-6">
                           <label for="email">Email Address</label>
                           <input class="form-control" id="email" name="email" 
                                  onblur="if(this.value == '') this.value='Email Address'" 
                                  onfocus="if(this.value == 'Email Address') this.value=''" type="email" value="Email Address">
                           <div class="error" id="err-name" style="display: none;">Please Enter Email Address</div>
                        </div>
                        
                        <div class="form-group col-sm-3">
                            <label for="name2">Contact No</label>
                            <input class="form-control" id="cno" name="cno" 
                                  onblur="if(this.value == '') this.value='Contact No'" 
                                  onfocus="if(this.value == 'Contact No') this.value=''" type="number" value="Contact No">
                           <div class="error" id="err-name" style="display: none;">Please Enter Contact No</div>
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
                            </div>
                        </div>
                    </div> 
                  </div>  
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <div class="form-group col-sm-3">
                                <label for="mstatus" class="control-label">Marital Status</label>
                                <select class="selectpicker show-tick form-control">
                                    <option value=""></option>
                                    <option value="single">Single</option>
                                    <option value="married">Married</option>
                                </select>
                            </div>
                            
                            <div class="form-group col-sm-3">
                                <label for="bdate" class="control-label">Birth Date</label>
                                <div class="input-group input-append date" id="datePicker">
                                    <input type="text" class="form-control" name="date" />
                                    <span class="input-group-addon add-on">
                                    <span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                            </div>
                            
                            
                        </div>      
                    </div>   
                    
                  
                    
                    <div class="col-xs-12">
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">
                            <div class="form-group col-sm-3">
                                 <label for="pincode">Pincode</label>
                                 <input class="form-control" id="pincode" name="pincode" 
                                  onblur="if(this.value == '') this.value='Pinocode'" 
                                  onfocus="if(this.value == 'Pincode') this.value=''" type="number" value="Pincode">
                            </div>
                            
                            <div class="form-group col-sm-9">
                                 <label for="address">Address</label>
                                 <input class="form-control" id="address" name="address" 
                                  onblur="if(this.value == '') this.value='Address'" 
                                  onfocus="if(this.value == 'Address') this.value=''" type="text" value="Address">
                            </div>
                        </div>
                    </div>  
                    
                    <div class="col-xs-12">   
                        <div class="row animated fadeInDown wow" data-wow-delay=".5s">     
                            <script type= "text/javascript" src = "js/countries.js"></script>  
                            <script language="javascript">
                                 populateCountries("country", "state"); // first parameter is id of country drop-down and second parameter is id of state drop-down
                                 populateCountries("country2");
                                 populateCountries("country2");
                            </script>
                            <div class="form-group col-sm-4">
                                <label for="name2">Country</label> 
                                <select class="form-control" id="country" name ="country"></select>
                            </div> 

                            <div class="form-group col-sm-4">
                                <label for="name2">State</label> 
                                <select class="form-control" id="state" name="state"></select>
                            </div> 

                            <div class="form-group col-sm-4">
                                <label for="name2">City</label> 
                                <select class="form-control" id="city" name="city" class="form-group">

                                </select>
                            </div> 
                        </div>    
                    </div>  
                </form>
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


