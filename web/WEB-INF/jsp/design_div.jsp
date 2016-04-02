<%-- 
    Document   : design_div.jsp
    Author     : akshay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="images/favicon.ico">
        <title>Iflexion Software solutions</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="css/ionicons.min.css">
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/addemp.css">
        <link rel="stylesheet" href="css/datepicker.min.css">
        <link rel="stylesheet" href="css/datepicker3.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">

         
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript" src="js/jquery.easing.1.3.min.js"></script>
        <script src="js/SmoothScroll.js"></script>
        <script src="js/wow.min.js"></script>
        <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
        <script type="text/javascript" src="js/addemp.js"></script>
        <script type="text/javascript" src="js/countries.js"></script>
        <script src="js/datepicker.min.js"></script>
        <script src="js/bootstrap-select.min.js"></script>
        
        <script>
         $(document).ready(function() {
         $('#datePicker')
              .datepicker({
               format: 'mm/dd/yyyy'
               })
              .on('changeDate', function(e) {
              // Revalidate the date field
              $('#eventForm').formValidation('revalidateField', 'date');
          });
       });
       
       

       </script>
        
        
        
        
        

       
        <script src="js/jquery.app.js"></script>
    </head>
    <body>
        
    </body>
</html>
