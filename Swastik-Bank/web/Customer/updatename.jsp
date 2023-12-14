<%-- 
    Document   : documentupdate
    Created on : Nov 27, 2023, 7:25:06 PM
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



        <script>
            function namevalidate()
            {
                var name = document.getElementById("name");
                var udisplay = document.getElementById("udisplay");
                if (name.value.trim() == "") {
                    udisplay.innerHTML = "Name Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "";
                        udisplay.style.color = "Green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Only letters are allowed";
                        udisplay.style.color = "red";
                        return false;
                    }
                     }
                    }
           

        </script>
    </head>



    <!-- responsive link -->

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

    </style>

    <body>
        <!-- ======= Header ======= -->
        <%@include file="navbar2.jsp" %>
        <!-- End Sidebar-->


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

            <section class="section dashboard my-3 ml-3">
                <div class="container border p-20">
                    <h4 class="text-center my-3 mb-4">Details Update</h4>
                    <fieldset>
                        <form class="row g-3 border mb-5" action="../UpdationServlet" method="post">
                            <h4 class="my-3 mb-4">Identity Details</h4>
                            <%@include file="../Components/alert_message.jsp" %>
                            <div class="col-md-6">
                                <label for="updateType" class="form-label">Select What you want to Update</label>
                                <select id="updateType"  class="form-select" name="updateType">
                                    <option selected disabled>Choose...</option>
                                    <option value="Name">Name</option>
                                    <option value="FatherName">Father Name</option>
                                    <option value="MotherName">Mother Name</option>
                                    <option value="Email">Email ID</option>
                                    <option value="MobileNumber">Mobile Number</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input onkeyup="namevalidate()" id="name" type="text" class="form-control" name="name" >
                                <span id="udisplay" style="color:red; font-size: 14px;">*</span>
                            </div>
                         <div class="text-center mb-3">
                                <button
                                    class="btn btn-danger waves-effect waves-light"
                                    id="btn-submit"
                                    >
                                    Submit
                                </button>
                            </div>
                        </form>
                    </fieldset>
                </div>
            </section>


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

