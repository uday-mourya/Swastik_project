<%-- 
    Document   : loanform
    Created on : Dec 2, 2023, 4:38:26 PM
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
        <!-- fa fa link -->
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <!-- fa fac cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
            .box {
                border: 2px solid #9F1945;
                padding: 20px;
                text-align: center;
                margin-top: 15px;
                margin-bottom: 20px;
                background-color: #fefefe;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease-in-out;
            }

            .box:hover {
                transform: scale(1.05);
            }
            h2 {
                text-align: center;
                color: #9F1945;
                margin-top: 100px;
                margin-bottom: 10px;
            }
            #ba {
                background-color: #fff0e6;
            }

            #top-nav {
                font-size: 20px;
                color: black;
            }

            #top-nav:hover {
                color: blue;
            }

            .navbar {
                background-color: #9F1945;
            }

            .btn {
                background-color: #9F1945;
            }
            .btn:hover {
                background-color: #9F1945;
            }
            h3 {
                font-size: 20px;
            }

            h4 {
                font-size: 17px;
            }

            #internet {
                margin-top: 30px;
            }

            .back-img {
                height: 80vh;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }

            .lead {
                font-size: 20px;
            }

            #icon {
                color: #FF9933;
                font-size: 25px;
                margin-left: 30px;
            }

            .img-fluid {
                height: 250px;
                width: 400px;
                border-radius: 15px;
                transition: 1s;
            }

            .img-fluid:hover {
                color: #FF9933;
                transform: scale(1.1);
            }

            #butcenter {
                margin-left: 70px;
                border-radius: 20px;
            }

            #navbarDropdownMenuLink {
                font-size: 20px;
            }

            .foot {
                margin-top: 35px;
                color: white;
            }

            div a {
                color: white;
            }

            .footer-desc {
                color: white;
            }

            .icon {
                font-size: 25px;
                margin-left: 5px;
            }

            .mar {
                margin-top: 70px;
                background-color: whitesmoke;
            }

            .icon:hover {
                color: #9F1945;
            }

            footer {
                background-color: #3D3D3D;
            }

            #save {
                margin-top: 100px;
            }

            .background {
                background-color: #fff0e6;
            }

            #fix {
                margin-top: 6px;
            }

            .mat {
                margin-top: 30px;
            }
            /* Add this CSS code to your existing styles */

            @media screen and (max-width: 360px) {
                /* .box {
                    margin-top: 40px;
                } */
                .shadow {
                    height: 70px;
                    width: 90%;
                }

                .imggg {
                    width: 80%;
                }
            }
        </style>

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
            function Fvalidate()
            {
                var Fname = document.getElementById("Fname");
                var fdisplay = document.getElementById("fdisplay");
                if (Fname.value.trim() == "") {
                    fdisplay.innerHTML = "FatherName Required";
                    fdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(Fname.value)) {
                        fdisplay.innerHTML = "";
                        fdisplay.style.color = "green";
                        return true;
                    } else {
                        fdisplay.innerHTML = "Only letters are allowed";
                        fdisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function namevalidatenominee()
            {
                var name = document.getElementById("nomineename");
                var udisplay = document.getElementById("ndisplay");
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

            function Movalidate()
            {
                var mobile = document.getElementById("mobile");
                var mdisplay = document.getElementById("mdisplay");
                if (mobile.value.trim() == "") {
                    mdisplay.innerHTML = "Mobile Number Required";
                    mdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[6789][0-9]{9}/;
                    if (reg.test(mobile.value)) {
                        mdisplay.innerHTML = "Valid";
                        mdisplay.style.color = "Green";
                        return true;
                    } else {
                        mdisplay.innerHTML = "Number should start with 6, 7, 8, or 9 and have 10 digits";
                        mdisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function validateEmail() {
                var emailInput = document.getElementById("email");
                var emailDisplay = document.getElementById("edisplay");
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                if (emailInput.value.trim() === "") {
                    emailDisplay.innerHTML = "Email is required";
                    emailDisplay.style.color = "red";
                    return false;
                } else if (!emailPattern.test(emailInput.value)) {
                    emailDisplay.innerHTML = "Invalid email format";
                    emailDisplay.style.color = "red";
                    return false;
                } else {
                    emailDisplay.innerHTML = "";
                    return true;
                }
            }



            function aadharvalidate() {
                var name = document.getElementById("aadhar");
                var udisplay = document.getElementById("display2");

                if (name.value.trim() == "") {
                    udisplay.innerHTML = "Aadhar Number Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^\d{12}$/; // Exactly 12 digits
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "Valid";
                        udisplay.style.color = "green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Please Enter Valid 12 digits Aadhar Number";
                        udisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function panvalidate() {
                var name = document.getElementById("pan");
                var udisplay = document.getElementById("display");

                if (name.value.trim() == "") {
                    udisplay.innerHTML = "Pan Number Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Za-z]{5}\d{4}[A-Za-z]$/; // 5 characters, 4 digits, 1 character
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "";
                        udisplay.style.color = "green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Please enter the valid pattern";
                        udisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function homevalidate() {
                var name = document.getElementById("amount");
                var udisplay = document.getElementById("displayhome");

                if (name.value.trim() == " ") {
                    udisplay.innerHTML = "Amount Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[0-9]+$/; // Only allow numbers
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "valid";
                        udisplay.style.color = "green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Only numbers are allowed in HomeNumber";
                        udisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function phomevalidate() {
                var name = document.getElementById("amount");
                var udisplay = document.getElementById("displayhome2");

                if (name.value.trim() == " ") {
                    udisplay.innerHTML = "Amount Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[0-9]+$/; // Only allow numbers
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "valid";
                        udisplay.style.color = "green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Only numbers are allowed in HomeNumber";
                        udisplay.style.color = "red";
                        return false;
                    }
                }
            }

        </script>
    </head>
    <body>
        <%@include file="navbar2.jsp" %>
        <br><br>
        <section class="section dashboard  loan my-5 ml-3 mr-3" >
            <div class="container border p-20 " >
                <h3 class="text-center my-3 mb-4"  id="top">Loan Apply Form</h3>
                <fieldset>   
                    <form class="row g-3 border" action="../Loanapply" method="post">
                        <!-- <h4 class="my-3 mb-4">Identity Details</h4> -->
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Identity Details</h5>  
                        </div>
                        <div class="col-md-6 mb-4 ">
                            <label for="inputCity" class="form-label">Account Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="accNumber">
                            <span id="display2" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6 mb-4 ">
                            <label for="inputCity" class="form-label">Beneficiary_Name<font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="beneficiaryName">
                            <span id="display2" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6 mb-4 ">
                            <label for="inputCity" class="form-label">Aadhar Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="aadharvalidate()" id="aadhar" type="text" class="form-control" id="inputCity" name="adharNum">
                            <span id="display2" style="color:red; font-size: 14px;"></span>
                        </div>

                        <div class="col-md-6 mb-4">
                            <label for="inputCity" class="form-label">Confirm Aadhar Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>
                        <div class="col-md-6 my-3 mb-4">
                            <label for="inputCity" class="form-label">Pan Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="panvalidate()" id="pan" type="text" class="form-control" id="inputCity" name="panNum">
                            <span id="display" style="color:red; font-size: 14px;"></span>
                        </div>

                        <div class="col-md-6 my-3 mb-4">
                            <label for="inputCity" class="form-label">Confirm Pan Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Personal Details</h5>  
                        </div>
                        <div class="col-md-6 mb-4">
                            <label for="inputCity" class="form-label">Enter Address <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="address">
                        </div>
                        <div class="col-md-6 mb-4">
                            <label for="inputCity" class="form-label">Email-id <font face="Lato" color="red">*</font></label>
                            <input onkeyup="validateEmail()" id="email" type="text" class="form-control" id="inputCity" name="email">
                            <span id="edisplay" style="color:red; font-size: 14px;"></span>

                        </div>
                        <h3 class="text-center my-3 mb-4">Co-Applicant/Guarantor Details</h3>   
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Identity Details</h5>  
                        </div>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Guarantor Name <font face="Lato" color="red">*</font></label>
                            <input onkeyup="namevalidate()" id="name" type="text" class="form-control" id="inputEmail4" name="guarantorName">
                            <span id="udisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Father Name <font face="Lato" color="red">*</font></label>
                            <input onkeyup="Fvalidate()" id="Fname" type="text" class="form-control" id="inputPassword4" name="guarantorFather">
                            <span id="fdisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6 my-4">
                            <label for="inputAddress2" class="form-label">  Gender <font face="Lato" color="red">*</font></label><br>
                            <input type="radio" name="guarantorGender" class="mr-3 ml-2">Male
                            <input type="radio" name="guarantorGender" class="mr-3 ml-2">Female  
                            <input type="radio" name="guarantorGender" class="mr-3 ml-2">Other
                        </div>
                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Enter Address <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="guarantorAddress">
                        </div>
                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Guarantor Account Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="guarantorAccount">

                        </div>

                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Confirm Account Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="guarantorIfsc">

                        </div>
                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Aadhar Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="guarantorAdhar">

                        </div>

                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Confirm Aadhar Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>
                        <div class="col-md-6 mb-4">
                            <label for="inputCity" class="form-label">Pan Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="guarantorPan">

                        </div>

                        <div class="col-md-6 mb-4">
                            <label for="inputCity" class="form-label">Confirm Pan Number <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>
                        <!--                            <input type="submit" value="submit">-->
                        <button type="submit" name="submit" value="submit">Register</button>
                    </form>
                </fieldset> 

            </div>
        </section>
        
         <%@include file="../Components/alert_message.jsp" %>
        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>SwastikBank</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">

                Designed by <a href="index.html">Tech Nerds</a>
            </div>
        </footer>
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


----------------
