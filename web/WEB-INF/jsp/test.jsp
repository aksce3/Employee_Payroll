<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="images/favicon.ico">
    <title>Iflexion Software solutions</title>
    <!-- Bootstrap core CSS -->
    <link href="/../css/bootstrap.min.css" rel="stylesheet">
    <!-- Animate -->
    <link href="/../css/animate.css" rel="stylesheet">
    <!-- Magnific-popup -->
    <link rel="stylesheet" href="../css/magnific-popup.css">
    <!-- Icon-font -->
    <link rel="stylesheet" type="text/css" href="../css/ionicons.min.css">
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>

  <!-- Pre-loader -->
  <div class="preloader">
     <div class="status">&nbsp;</div>
  </div>


  <!-- HOME -->
  <section class="home bg-dark">   
    
        <!-- end navbar-header -->
           

        <!-- menu -->
        <%@include file="header.jsp" %>
        <!--/Menu -->
      
    <!-- End navbar -->
    <div class="clearfix"></div>

   
    <div class="container">
      <div class="row">
        <div class="col-sm-6 text-left">
          <div class="home-wrapper">
            <h1 class="animated fadeInDown wow home-title" data-wow-delay=".1s">Welcome to Your Software Development Happy Place</h1>
            <h4 class="animated fadeInDown wow" data-wow-delay=".2s">You’ve taken a hard look at the software that powers your business and it’s time to develop next generation solutions.<br/> 
            <h4 class="animated fadeInDown wow" data-wow-delay=".2s">Developing a competitive advantage calls for developing more intelligent software solutions.<br/> We’re with you.</h4>
            <div class="clearfix"></div>
          </div>
        </div>
        <div class="col-sm-4 col-sm-offset-2">
          <div class="home-wrapper">
              <form role="form" id="register_form" class="intro-form">
                <h3 class="text-center"> SIGN IN</h3>
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="User name" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="required">
                </div>

                <div class="form-group">
                  <label class="form-control">
                        <input type="radio" name="optradio" required="required"> Admin
                  </label>      
                  <label class="form-control">
                        <input type="radio" name="optradio" required="required"> Employee
                  </label>
                </div>
                <div class="form-group text-center">
                  <a href="admin.html"><button type="submit" class="btn btn-custom">submit</button></a>
                </div>

                <div class="form-group"> 
                      <a href="forgot-password.html">
                         Forgot password?
                      </a>
              </div>        
              </form>
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
        <div class="col-sm-6">
          <div class="feature-1">
              <img src="../images/features-1.png" class="img-responsive" alt="features-img">
          </div>
        </div>
        <div class="col-sm-6">
          <div class="feature-detail">
            <h1 class="title animated fadeInRight wow" data-wow-delay=".1s">Developing Serious Software Solutions</h1>
            <h4 class="animated fadeInRight wow" data-wow-delay=".3s">Secure, Cost effective software development</h4>
            <p class="features-txt animated fadeInRight wow" data-wow-delay=".5s">We are primarily consultants, not hardware or software salesmen, and are genuinely interested in your business results. Our ultimate goal is always to increase the efficiency of your entire infrastructure....</p>
          </div>
          
        </div>
      </div>
    </div>
  </section>
  <!-- END FEATURES-1 -->
  <!-- SERVICES -->
  <section class="section bg-gray" id="services">
    <div class="container">

      <div class="row">
        <div class="col-sm-12 text-center">
          <h1 class="title zoomIn animated wow" data-wow-delay=".1s">Discover All The Ways Its Can Serve Your Growing Needs</h1>
          <p class="sub-title zoomIn animated wow" data-wow-delay=".2s">But once you decide to get help, how do you know where to start?</p>
        </div> 
      </div>

      <div class="row">
        <div class="col-sm-4">
          <div class="service-item animated fadeInLeft wow" data-wow-delay=".1s">
            <i class="ion-social-buffer"></i>
            <div class="service-detail">
              <h4>Application Development</h4>
              <p>Company is providing effective Custom Software solutions, ensuring your Application developed is well responsive in any environment meeting all the challenges.</p>
            </div> <!-- /service-detail -->
          </div> <!-- /service-item -->
        </div> <!-- /col -->

        <div class="col-sm-4">
          <div class="service-item animated fadeInDown wow" data-wow-delay=".3s">
            <i class="ion-ipad"></i>
            <div class="service-detail">
              <h4>Mobile Applications</h4>
              <p>Company is reputed for developing Mobile Applications for Smart phones, Android and iPhone mobile phones. Our services include remote data....</p>
            </div> <!-- /service-detail -->
          </div> <!-- /service-item -->
        </div> <!-- /col -->

        <div class="col-sm-4">
          <div class="service-item animated fadeInRight wow" data-wow-delay=".5s">
            <i class="ion-wand"></i>
            <div class="service-detail">
              <h4>Database Design</h4>
              <p>We put a lot of effort in design in MongoDB, Oracle, PostgreSQL, MS SQL, as it’s the most important ingredient of successful databse design.</p>
            </div> <!-- /service-detail -->
          </div> <!-- /service-item -->
        </div> <!-- /col -->       
      </div> <!--end row -->


      <div class="row">
        <div class="col-sm-4">
          <div class="service-item animated fadeInLeft wow" data-wow-delay=".7s">
            <i class="ion-coffee"></i>
            <div class="service-detail">
              <h4>Big Data</h4>
              <p>Company has strong skill sets in various Big Data technologies, platforms, and tools which are a mix of open-source and commercial offerings..</p>
            </div> <!-- /service-detail -->
          </div> <!-- /service-item -->
        </div> <!-- /col -->

        <div class="col-sm-4">
          <div class="service-item animated fadeInUp wow" data-wow-delay=".9s">
            <i class="ion-stats-bars"></i>
            <div class="service-detail">
              <h4>QA & Testing</h4>
              <p>Company ensures Quality and Cost-effectiveness, Provides a good return on investment and guarantees effective test automation.</p>
            </div> <!-- /service-detail -->
          </div> <!-- /service-item -->
        </div> <!-- /col -->

        <div class="col-sm-4">
          <div class="service-item animated fadeInRight wow" data-wow-delay="1.1s">
            <i class="ion-help-buoy"></i>
            <div class="service-detail">
              <h4>Dedicated Support</h4>
              <p>Company is providing complete, yet flexible offshore, maintenance and support options to meet your requirement.</p>
            </div> <!-- /service-detail -->
          </div> <!-- /service-item -->
        </div> <!-- /col -->         
      </div> <!-- end row -->
    </div>
  </section>
  <!-- END SERVICES -->

 <!-- TESTIMONIALS -->

  <section class="section">
    <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2 text-center">
          <div class="zoomIn animated wow" data-wow-delay=".1s">
              <img src="../images/quote-icon.png" alt="quote">
            <blockquote>I have been using this template for all my company needs for the last 3 years and couldn’t be happier with their service and expertise. They’ve surpassed all of my expectations and customer service!</blockquote>
            <div class="clientblock">
                <img src="../images/testi-1.jpg" alt="." class="img-circle">
              <p><strong>Akshay Parmar</strong> <br>
               Web Developer & Designer</p>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>

  <!--END TESTIMONIALS -->

  <!-- FOOTER -->
  <footer class="section bg-gray footer">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <h5>Iflexion Business solutions</h5>
          <ul class="list-unstyled">
            <li><a href="#">Home</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Careers</a></li>
          </ul>
        </div>

        <div class="col-md-3 col-sm-6">
          <h5>Social</h5>
          <ul class="list-unstyled">
            <li><a href="#">Facebook</a></li>
            <li><a href="#">Twitter</a></li>
            <li><a href="#">Behance</a></li>
            <li><a href="#">Dribbble</a></li>
          </ul>
        </div>

        <div class="col-md-3 col-sm-6">
          <h5>Support</h5>
          <ul class="list-unstyled">
            <li><a href="#">Help & Support</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms & Conditions</a></li>
          </ul>
        </div>

        <div class="col-md-3 col-sm-6">
          <h5>Contact</h5>
          <address>
            <br>
            <br>
            <abbr title="Phone">P:</abbr> (+91) 9925152<br/>
            E: <a href="mailto:iflexion@iflexion.com">iflexion@iflexion.com</a>
          </address>
        </div>

      </div>

      <div class="row">
        <div class="col-sm-12">
          <div class="footer-alt">
            <p class="pull-right">2016 © Iflexion Software solutions</p>
            <p class="logo"><i class="ion-social-buffer"></i>Iflexion Software solutions</p>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- END FOOTER -->

  <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <!-- Jquery easing -->                                                      
    <script type="text/javascript" src="../js/jquery.easing.1.3.min.js"></script>
    <script src="../js/SmoothScroll.js"></script>
    <script src="../js/wow.min.js"></script>
    <script type="text/javascript" src="../js/jquery.magnific-popup.min.js"></script>
        
    <!--common script for all pages-->
    <script src="../js/jquery.app.js"></script>


    
  </body>


</html>

