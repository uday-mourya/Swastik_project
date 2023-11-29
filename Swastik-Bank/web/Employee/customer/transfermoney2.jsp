<%-- 
    Document   : transfermoney2
    Created on : Nov 27, 2023, 7:07:32 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>User-Dashboard</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Favicons -->
    <link href="assets/img/logo.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />


    <!-- fafa icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  

  <!-- form link -->



  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->



  <!-- css code -->
  <style>
    .box-custom {
    background-color: white;
    height: 150px;
    width: 120px;
    text-align: center;
    padding: 17px;
    margin-left: 15px;
}
body{
  text-decoration: none;
}

  </style>
</head>
  <body>
    <!-- ======= Header ======= -->
   <%@include file="navbar2.jsp" %>
   
   <!--fhhfh-->
    <main id="main" class="main">
      <div class="pagetitle">
        <h1>Dashboard</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active">Dashboard</li>
          </ol>
        </nav>
      </div>
      <!-- End Page Title -->

    

<!-- E-governance -->



<!-- <section class="section dashboard my-5 ml-3">
    <h2 class="text-center">Transfer Money</h2>
    
    <form class="form-horizontal">
     
      <div class="col-sm-6">
        <div class="form-group">
          <label class="col-sm-4 control-label">Enter Amount</label>
          <div class="col-sm-8">
            <input type="text" class="form-control">
          </div>
        </div>
      </div>
      
      <div class="col-sm-6">
        <div class="form-group">
          <label class="col-sm-4 control-label">Confirm Amount</label>
          <div class="col-sm-8">
            <input type="text" class="form-control">
          </div>
        </div>
      </div>
    
      <div class="col-sm-6">
        <div class="form-group">
          <label class="col-sm-4 control-label">Enter Pin</label>
        <div class="col-sm-8">
            <input type="text" class="form-control">
          </div>
        </div>
      </div>
    
      </div>
    
      <div class="text-center">
        <button class="btn btn-primary waves-effect waves-light " id="btn-submit">Submit</button>
      </div>
      <input type="hidden" name="action" id="action" value="event_dialog_add_newpartnerdata" />
    </form>
</section> -->


  <!-- shhshend -->

  <!-- E-governance -->
<section class="section dashboard my-5 ml-3">
  <h2 class="text-center mb-4">Transfer Money</h2>
  
  <form class="form-horizontal">
   
    <div class="row">
      <div class="col-sm-6 mx-auto">
        <div class="form-group">
          <label class="col-sm-4 control-label">Enter Amount</label>
          <div class="col-sm-8">
            <input type="text" class="form-control">
          </div>
        </div>
      </div>
    
      <div class="col-sm-6 mx-auto">
        <div class="form-group">
          <label class="col-sm-4 control-label">Confirm Amount</label>
          <div class="col-sm-8">
            <input type="text" class="form-control">
          </div>
        </div>
      </div>
    </div>
    
    <div class="row my-5">
      <div class="col-sm-6 mx-auto">
        <div class="form-group">
          <label class="col-sm-4 control-label">Enter Amount</label>
          <div class="col-sm-8">
            <input type="text" class="form-control">
          </div>
        </div>
      </div>


      <div class="col-sm-6 mx-auto my-4">
        <button class="btn btn-primary waves-effect waves-light" id="btn-submit">Submit</button>
      </div>



    </div>
  
  </form>
</section>
<!-- shhshend -->


    </main>
    <!-- End #main -->

    <!-- ======= Footer ======= -->
    <%@include file="footer.jsp" %>
    <!-- End Footer -->

    <a
      href="#"
      class="back-to-top d-flex align-items-center justify-content-center"
      ><i class="bi bi-arrow-up-short"></i
    ></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/chart.js/chart.umd.js"></script>
    <script src="assets/vendor/echarts/echarts.min.js"></script>
    <script src="assets/vendor/quill/quill.min.js"></script>
    <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
  </body>
</html>

