<%-- 
    Document   : Recharge
    Created on : Nov 27, 2023, 7:14:15 PM
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
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />

        <!-- responsive link -->

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />

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
            html,
            body {
                height: 100%;
            }
            /* 
        body{
                display: -ms-flexbox;
                display: -webkit-box;
                display: flex;
                -ms-flex-align: center;
                -ms-flex-pack: center;
                -webkit-box-align: center;
                align-items: center;
                -webkit-box-pack: center;
                justify-content: center;
                background-color: #f5f5f5;
        } */


            /* form {
              padding-top: 10px;
              font-size: 14px;
              margin-top: 30px;
            } */

            .card-title {
                font-weight: 300;
            }

            .btn {
                font-size: 14px;
                margin-top: 20px;
            }

            .login-form {
                width: 320px;
                margin: 20px;
            }

            .sign-up {
                text-align: center;
                padding: 20px 0 0;
            }

            span {
                font-size: 14px;
            }
        </style>

    </head>
    <body>
        <!-- ======= Header ======= -->
        <%@include file="navbar2.jsp" %>


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

            <section class="section dashboard">
                <div class="list-group">
                    <a style="background-color: #861F41" href="tables.jsp" class="list-group-item list-group-item-action active" aria-current="true">
                       Updation Request
                    </a>
                    <a href="updatename.jsp" class="list-group-item list-group-item-action">Name Update</a>
                    <a href="#" class="list-group-item list-group-item-action">Father Name And Mother Name Update</a>
                    <a href="#" class="list-group-item list-group-item-action">Contact Details Update</a>
                    <a href="#" class="list-group-item list-group-item-action">Nominee Update</a>
                </div>

            </section>
        </main>
        <!-- End #main -->
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

