<%-- 
    Document   : loanform
    Created on : Nov 28, 2023, 8:55:00 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Styled and Attractive Bootstrap Boxes</title>

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
            s




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
            .loan{
                margin-top: 500px;
            }
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
    </head>
    <body>

        <!-- ======= Header ======= -->
        <%--<%@include file="navbar2.jsp" %>--%>
        <!--navbar-end-->

        <section class="section dashboard  loan my-5 ml-3">
            <div class="container border p-20 " >
                <h4 class="text-center my-3 mb-4">Loan Apply Form</h4>
                <fieldset>   
                    <form class="row g-3 border mb-5">
                        <!-- <h4 class="my-3 mb-4">Identity Details</h4> -->
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Identity Details</h5>  
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Name</label>
                            <input onkeyup="namevalidate()" id="name" type="email" class="form-control" id="inputEmail4">
                            <span id="udisplay" style="color:red; font-size: 14px;">*</span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Father Name</label>
                            <input onkeyup="Fvalidate()" id="Fname" type="password" class="form-control" id="inputPassword4">
                            <span id="fdisplay" style="color:red; font-size: 14px;">*</span>
                        </div>
                        <!-- <div class="col-md-4">
                            <label for="inputPassword4" class="form-label">Mother Name</label>
                            <input type="password" class="form-control" id="inputPassword4">
                          </div> -->

                        <div class="col-md-4">
                            <label for="inputAddress2" class="form-label">  Gender</label><br>
                            <input type="radio" name="radio">Male
                            <input type="radio" name="radio">Female  
                            <input type="radio" name="radio">Other
                        </div>
                        <div class=" col-md-4">
                            <label for="inputAddress" class="form-label">Dateof Birth</label>
                            <input type="date" class="form-control" id="inputAddress" placeholder="1234 Main St">
                        </div>
                        <div class="col-md-4">
                            <label for="inputState" class="form-label">Marital-Status</label>
                            <br>
                            <select id="inputState" class="form-select">
                                <option selected>Choose...</option>
                                <option>Single</option>
                                <option>Married</option>
                                <option>Divorced</option>
                                <option>Widowed</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">Aadhar.no</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="inputCity" class="form-label">Confirm Aadhar Number</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>
                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">Pan Number</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="inputCity" class="form-label">Confirm Pan Number</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>

                    </form>
                </fieldset> 

                <form class="row g-3 border">
                    <!-- <h4 class="my-3 mb-4">Address Details</h4> -->
                    <div class="col-md-12">
                        <h5 class="my-3 mb-4">Address Details</h5>  
                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Street HomeNumber</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>

                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">City </label>
                        <input type="text" class="form-control" id="inputCity">


                    </div>
                    <!-- <--  <div class="col-md-4">
                        <label for="inputCity" class="form-label">City</label>
                        <input type="text" class="form-control" id="inputCity">
                      
                    -->

                    <div class="col-md-6 my-5">
                        <label for="inputState" class="form-label">State</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-6 my-5">
                        <label for="inputState" class="form-label">Country</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <label for="inputCity" class="form-label">Mobile Number</label>
                        <input  onkeyup="Movalidate()" id="mobile" maxlength="10" type="text" class="form-control" id="inputCity">
                        <span id="mdisplay" style="color:red; font-size: 14px;">*</span>
                    </div>
                    <div class="col-md-4">
                        <label for="inputCity" class="form-label">Email-id</label>
                        <input onkeyup="validateEmail()" id="email" type="text" class="form-control" id="inputCity">
                        <span id="edisplay" style="color:red; font-size: 14px;">*</span>

                    </div>

                    <div class="col-md-4">
                        <label for="inputCity" class="form-label">Ocupation</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>


                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Nominee name</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>
                    <div class="col-md-6 ">
                        <label for="inputCity" class="form-label">Nominee Address</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Nominee Adhar no.</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="inputCity" class="form-label">Confirm Nominee Aadhar no.</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>

                </form>
                <form class="row g-3 border">
                    <!-- <h4 class="my-3 mb-4"> Permanent Address Details</h4> -->
                    <div class="col-md-12">
                        <h5 class="my-3 mb-4">Permanent Address Details</h5>  
                    </div>
                    <div class="col-md-6 my-4">
                        <label for="inputCity" class="form-label">Street HomeNumber</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>

                    <div class="col-md-6 my-4">
                        <label for="inputCity" class="form-label">City </label>
                        <input type="text" class="form-control" id="inputCity">


                    </div>
                    <!-- <--  <div class="col-md-4">
                        <label for="inputCity" class="form-label">City</label>
                        <input type="text" class="form-control" id="inputCity">
                      
                    -->

                    <div class="col-md-6 my-5">
                        <label for="inputState" class="form-label">State</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3 my-5">
                        <label for="inputState" class="form-label">Country</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>

                </form>

            </div>


            <!-- hhhd -->

            <div class="container border p-20 " >
                <h4 class="text-center my-3 mb-4">Co-Applicant/Guarantor Details</h4>
                <fieldset>   
                    <form class="row g-3 border mb-5">
                        <!-- <h4 class="my-3 mb-4">Identity Details</h4> -->
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Identity Details</h5>  
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Name</label>
                            <input onkeyup="namevalidate()" id="name" type="email" class="form-control" id="inputEmail4">
                            <span id="udisplay" style="color:red; font-size: 14px;">*</span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Father Name</label>
                            <input onkeyup="Fvalidate()" id="Fname" type="password" class="form-control" id="inputPassword4">
                            <span id="fdisplay" style="color:red; font-size: 14px;">*</span>
                        </div>
                        <!-- <div class="col-md-4">
                            <label for="inputPassword4" class="form-label">Mother Name</label>
                            <input type="password" class="form-control" id="inputPassword4">
                          </div> -->

                        <div class="col-md-4">
                            <label for="inputAddress2" class="form-label">  Gender</label><br>
                            <input type="radio" name="radio">Male
                            <input type="radio" name="radio">Female  
                            <input type="radio" name="radio">Other
                        </div>
                        <div class=" col-md-4">
                            <label for="inputAddress" class="form-label">Dateof Birth</label>
                            <input type="date" class="form-control" id="inputAddress" placeholder="1234 Main St">
                        </div>
                        <div class="col-md-4">
                            <label for="inputState" class="form-label">Marital-Status</label>
                            <br>
                            <select id="inputState" class="form-select">
                                <option selected>Choose...</option>
                                <option>Single</option>
                                <option>Married</option>
                                <option>Divorced</option>
                                <option>Widowed</option>
                            </select>
                        </div>

                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">Aadhar.no</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="inputCity" class="form-label">Confirm Aadhar Number</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>
                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">Pan Number</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>

                        <div class="col-md-6 mb-3">
                            <label for="inputCity" class="form-label">Confirm Pan Number</label>
                            <input type="text" class="form-control" id="inputCity">

                        </div>

                    </form>
                </fieldset> 

                <form class="row g-3 border">
                    <!-- <h4 class="my-3 mb-4">Address Details</h4> -->
                    <div class="col-md-12">
                        <h5 class="my-3 mb-4">Address Details</h5>  
                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Street HomeNumber</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>

                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">City </label>
                        <input type="text" class="form-control" id="inputCity">


                    </div>
                    <!-- <--  <div class="col-md-4">
                        <label for="inputCity" class="form-label">City</label>
                        <input type="text" class="form-control" id="inputCity">
                      
                    -->

                    <div class="col-md-6 my-5">
                        <label for="inputState" class="form-label">State</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-6 my-5">
                        <label for="inputState" class="form-label">Country</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <label for="inputCity" class="form-label">Mobile Number</label>
                        <input  onkeyup="Movalidate()" id="mobile" maxlength="10" type="text" class="form-control" id="inputCity">
                        <span id="mdisplay" style="color:red; font-size: 14px;">*</span>
                    </div>
                    <div class="col-md-4">
                        <label for="inputCity" class="form-label">Email-id</label>
                        <input onkeyup="validateEmail()" id="email" type="text" class="form-control" id="inputCity">
                        <span id="edisplay" style="color:red; font-size: 14px;">*</span>

                    </div>

                    <div class="col-md-4">
                        <label for="inputCity" class="form-label">Ocupation</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>


                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Nominee name</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>
                    <div class="col-md-6 ">
                        <label for="inputCity" class="form-label">Nominee Address</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">Nominee Adhar no.</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="inputCity" class="form-label">Confirm Nominee Aadhar no.</label>
                        <input type="text" class="form-control" id="inputCity">

                    </div>

                </form>
                <form class="row g-3 border">
                    <!-- <h4 class="my-3 mb-4"> Permanent Address Details</h4> -->
                    <div class="col-md-12">
                        <h5 class="my-3 mb-4">Permanent Address Details</h5>  
                    </div>
                    <div class="col-md-6 my-4">
                        <label for="inputCity" class="form-label">Street HomeNumber</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>

                    <div class="col-md-6 my-4">
                        <label for="inputCity" class="form-label">City </label>
                        <input type="text" class="form-control" id="inputCity">


                    </div>
                    <!-- <--  <div class="col-md-4">
                        <label for="inputCity" class="form-label">City</label>
                        <input type="text" class="form-control" id="inputCity">
                      
                    -->

                    <div class="col-md-6 my-5">
                        <label for="inputState" class="form-label">State</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3 my-5">
                        <label for="inputState" class="form-label">Country</label>
                        <select id="inputState" class="form-select">
                            <option selected>Choose...</option>
                            <option>...</option>
                        </select>
                    </div>

                </form>
                <div class="text-center my-3">
                    <button
                        class="btn btn-primary waves-effect waves-light"
                        id="btn-submit"
                        >
                        Submit
                    </button>
                </div>
            </div>


        </section>
        <!-- shhshend -->

        <!----Footer --->

        <footer >
            <div class="foot">&nbsp;</div>
            <div class="container" id="footer">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 col-md-6 ">
                        <div>
                            <h3><img src="img/Logo_New-3.png" alt="" width="200px" /></h3>
                            <p class="footer-desc">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad
                                soluta facilis eos quia optio iusto odit atque eum tempore,
                                quisquam officiis vero veniam hic,
                            </p>
                        </div>
                        <div class="footicon">
                            <a href="#"><i class="icon fa-brands fa-twitter"></i></a>
                            <a href="#"><i class="icon fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="icon fa-brands fa-linkedin"></i></a>
                            <a href="#"><i class="icon fa-brands fa-facebook"></i></a>
                            <a href="#"><i class="icon fa-brands fa-github"></i></a>
                        </div>
                    </div>
                    <div class="col-xl-2 offset-xl-1 col-lg-2 col-md-6">
                        <div class="text-white">
                            <h4>Quick Link</h4>
                            <ul class="list-unstyled">
                                <li>
                                    <a href="#" class="text-decoration-none">Home</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">About Us</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Service</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="text-white">
                            <h4>Popular products</h4>
                            <ul class="list-unstyled">
                                <li>
                                    <a href="#" class="text-decoration-none">Accounts</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Cards</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Loan</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Deposit</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="text-white">
                            <h4>Newsletter</h4>
                            <div>
                                <label for="Newsletter" class="form-label"
                                       >Subscribe to our newsletter</label
                                >
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Enter Your Email"
                                    />
                                <button class="btn text-white mt-3">Subscribe</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-center text-white">
                    <div class="copyright">
                        <p>
                            Developed and maintained by
                            <a href="#" target="_blank">Tech Nerds</a>
                        </p>
                    </div>
                </div>
                <div class="d-flex justify-content-center text-white">
                    <div class="copyright">
                        All Right Reserved
                        <a href="Index.html">@Swastik Bank</a>
                    </div>
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </body>
</html>

