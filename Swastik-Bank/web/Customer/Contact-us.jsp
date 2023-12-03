<%-- 
    Document   : Contact-us
    Created on : Nov 27, 2023, 7:17:51 PM
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
        <%@include file="navbar2.jsp" %>
        
        ------------------------------------------------------------------------------------------------------------
        <br>
        <br>
        <br>
        <div class="container mt-5 ">
            <h2>My Support Center</h2>
            <div class="row my-5">
                <div class="col-md-4">
                    <div class="box">
                        <h4>Support Details</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>Some content goes here. Lorem ipsum dolor sit amet.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4>Your Territary Manager</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>More content for Box 2. Consectetur adipiscing elit.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4>Distributor</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>Content for Box 3. Sed do eiusmod tempor incididunt.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4> Transactional Query</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>Additional content for Box 4. Ut enim ad minim veniam.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4> Payments Query</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>

                        <!-- <p>Additional content for Box 4. Ut enim ad minim veniam.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4>General Query</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>

                        <!-- <p>Additional content for Box 4. Ut enim ad minim veniam.</p> -->
                    </div>
                </div>

            </div>
        </div>
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
