<%-- 
    Document   : users-profile
    Created on : 30-Nov-2023, 4:42:33 pm
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Favicons -->
        <link href="assets/img/logo.png" rel="icon" />
        <!-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" /> -->

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
    </head>
    <body>
        <!-- ======= Header ======= -->
        <%@include file="AdminNabBar.jsp" %>
        <!-- End Sidebar-->

        <main id="main" class="main">
            <div class="pagetitle">
                <h1>Profile</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Users</li>
                        <li class="breadcrumb-item active">Profile</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section profile">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="card">
                            <div
                                class="card-body profile-card pt-4 d-flex flex-column align-items-center"
                                >
                                <img
                                    src="assets/img/profile-img.jpg"
                                    alt="Profile"
                                    class="rounded-circle"
                                    />
                                <h2>Sohan Maali</h2>
                                <h3>Manager</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-8">
                        <div class="card">
                            <div class="card-body pt-3">
                                <!-- Bordered Tabs -->
                                <ul class="nav nav-tabs nav-tabs-bordered">
                                    <li class="nav-item">
                                        <button
                                            class="nav-link active"
                                            data-bs-toggle="tab"
                                            data-bs-target="#profile-overview"
                                            >
                                            Overview
                                        </button>
                                    </li>

                                    <li class="nav-item">
                                        <button
                                            class="nav-link"
                                            data-bs-toggle="tab"
                                            data-bs-target="#profile-edit"
                                            >
                                            Edit Profile
                                        </button>
                                    </li>

                                    <li class="nav-item">
                                        <button
                                            class="nav-link"
                                            data-bs-toggle="tab"
                                            data-bs-target="#profile-change-password"
                                            >
                                            Change Password
                                        </button>
                                    </li>
                                </ul>
                                <div class="tab-content pt-2">
                                    <div
                                        class="tab-pane fade show active profile-overview"
                                        id="profile-overview"
                                        >
                                        <h5 class="card-title">Profile Details</h5>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Full Name</div>
                                            <div class="col-lg-9 col-md-8">Sohan Maali</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Branch</div>
                                            <div class="col-lg-9 col-md-8">Pologround Indore</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Job</div>
                                            <div class="col-lg-9 col-md-8">Manager</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Country</div>
                                            <div class="col-lg-9 col-md-8">Bharat</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Address</div>
                                            <div class="col-lg-9 col-md-8">
                                                64 Amla Khategaon dewas mp
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Phone</div>
                                            <div class="col-lg-9 col-md-8">6232389832</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label">Email</div>
                                            <div class="col-lg-9 col-md-8">sohanmaali4@gmail.com</div>
                                        </div>
                                    </div>

                                    <div
                                        class="tab-pane fade profile-edit pt-3"
                                        id="profile-edit"
                                        >
                                        <!-- Profile Edit Form -->
                                        <form>
                                            <div class="row mb-3">
                                                <label
                                                    for="profileImage"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Profile Image</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <img src="assets/img/profile-img.jpg" alt="Profile" />
                                                    <div class="pt-2">
                                                        <a
                                                            href="#"
                                                            class="btn btn-primary btn-sm"
                                                            title="Upload new profile image"
                                                            ><i class="bi bi-upload"></i
                                                            ></a>
                                                        <a
                                                            href="#"
                                                            class="btn btn-danger btn-sm"
                                                            title="Remove my profile image"
                                                            ><i class="bi bi-trash"></i
                                                            ></a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="fullName"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Full Name</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="fullName"
                                                        type="text"
                                                        class="form-control"
                                                        id="fullName"
                                                        value="Sohan Maali"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="company"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Branch</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="company"
                                                        type="text"
                                                        class="form-control"
                                                        id="company"
                                                        value="Pologround Indore"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="Job"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Job</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="job"
                                                        type="text"
                                                        class="form-control"
                                                        id="Job"
                                                        value="Manager"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="Country"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Country</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="country"
                                                        type="text"
                                                        class="form-control"
                                                        id="Country"
                                                        value="Bharat"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="Address"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Address</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="address"
                                                        type="text"
                                                        class="form-control"
                                                        id="Address"
                                                        value="64 Amla Khategaon dewas mp"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="Phone"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Phone</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="phone"
                                                        type="text"
                                                        class="form-control"
                                                        id="Phone"
                                                        value="6232389832"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="Email"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Email</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="email"
                                                        type="email"
                                                        class="form-control"
                                                        id="Email"
                                                        value="sohan@gmail.com"
                                                        />
                                                </div>
                                            </div>

                                            <div class="text-center">
                                                <button type="submit" class="btn btn-primary">
                                                    Save Changes
                                                </button>
                                            </div>
                                        </form>
                                        <!-- End Profile Edit Form -->
                                    </div>

                                    <div class="tab-pane fade pt-3" id="profile-change-password">
                                        <!-- Change Password Form -->
                                        <form>
                                            <div class="row mb-3">
                                                <label
                                                    for="currentPassword"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Current Password</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="password"
                                                        type="password"
                                                        class="form-control"
                                                        id="currentPassword"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="newPassword"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >New Password</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="newpassword"
                                                        type="password"
                                                        class="form-control"
                                                        id="newPassword"
                                                        />
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label
                                                    for="renewPassword"
                                                    class="col-md-4 col-lg-3 col-form-label"
                                                    >Re-enter New Password</label
                                                >
                                                <div class="col-md-8 col-lg-9">
                                                    <input
                                                        name="renewpassword"
                                                        type="password"
                                                        class="form-control"
                                                        id="renewPassword"
                                                        />
                                                </div>
                                            </div>

                                            <div class="text-center">
                                                <button type="submit" class="btn btn-primary">
                                                    Change Password
                                                </button>
                                            </div>
                                        </form>
                                        <!-- End Change Password Form -->
                                    </div>
                                </div>
                                <!-- End Bordered Tabs -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>Tech Nerds</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">Designed by <a href="#">Sohan</a></div>
        </footer>
        <!-- End Footer -->

        <a
            href="#"
            class="back-to-top d-flex align-items-center justify-content-center"
            ><i class="bi bi-arrow-up-short"></i
            ></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
    </body>
</html>
