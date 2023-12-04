<%-- 
    Document   : Employee-Profile
    Created on : 30-Nov-2023, 3:45:36 pm
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
        <h1>Request</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item">Employee</li>
            <li class="breadcrumb-item active"><a href="Employee-List.html">Employee List</a></li>
            <li class="breadcrumb-item active">Employee Profile</li>
          </ol>
        </nav>
      </div>
      <!-- End Page Title -->

      <div class="container mt-5">
        <h3>Profile</h3>
        <div class="row">
          <div class="col-md-6">
            <div class="profile-details">
              <center>
                <img
                  src="assets/img/profile-img.jpg"
                  alt="Employee Photo"
                  class="profile-image"
                  style="width: 200px; height: 200px; border-radius: 110px"
                />
              </center>
              <div>&nbsp;</div>
              <div class="mb-3">
                <label for="name" class="form-label">Name :- </label>
                <input
                  type="text"
                  id="name"
                  value="sohan maali"
                  class="form-control"
                  disabled
                />
              </div>
              <div class="mb-3">
                <label for="fatherName" class="form-label"
                  >Father's Name
                </label>
                <input
                  type="text"
                  id="name"
                  value="Kamal maali"
                  class="form-control"
                  disabled
                />
              </div>
              <div class="mb-3">
                <label for="gender" class="form-label">Gender</label>
                <input
                  type="text"
                  id="name"
                  value="Male"
                  class="form-control"
                  disabled
                />
              </div>
              <div class="mb-3">
                <label for="dob" class="form-label">Date of Birth</label>
                <input
                  type="text"
                  id="name"
                  value="08/10/2002"
                  class="form-control"
                  disabled
                />
              </div>
              <div class="mb-3">
                <label for="maritalStatus" class="form-label"
                  >Marital Status
                </label>
                <input
                  type="text"
                  id="name"
                  value="single"
                  class="form-control"
                  disabled
                />
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="profile-details">
              <div class="mb-3">
                <label class="form-label">&nbsp;</label>
                <p>&nbsp;</p>
              </div>
              <div class="mb-3">
                <label class="form-label">&nbsp;</label>
                <p>&nbsp;</p>
              </div>
              <div class="mb-3">
                <label class="form-label">&nbsp;</label>
                <p>&nbsp;</p>
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input
                  type="text"
                  id="name"
                  value="sohan@gmail.com"
                  class="form-control"
                  disabled
                />
              </div>
              <div class="mb-3">
                <label for="mobile" class="form-label">Mobile </label>
                <input
                  type="text"
                  id="name"
                  value="6232389832"
                  class="form-control"
                  disabled
                />
              </div>
              <div class="mb-3">
                <label for="aadhar" class="form-label">Aadhar Number </label>
                <input
                  type="text"
                  id="name"
                  value="741852963852"
                  class="form-control"
                  disabled
                />
              </div>
              <div class="mb-3">
                <label for="pan" class="form-label">Pan Number </label>
                <input
                  type="text"
                  id="name"
                  value="55569fs656655"
                  class="form-control"
                  disabled
                />
              </div>

              <div class="mb-3">
                <label for="address" class="form-label">Address </label>
                <input
                  type="text"
                  id="name"
                  value="64 Amla khategaon dewas mp"
                  class="form-control"
                  disabled
                />
              </div>
            </div>
            <button
              class="btn btn-primary"
              id="editButton"
              onclick="toggleEdit()"
            >
              Edit
            </button>
            <button
              class="btn btn-success hidden"
              id="saveButton"
              onclick="saveData()"
            >
              Save
            </button>
          </div>
        </div>
      </div>
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
    <script>
      function toggleEdit() {
        const inputs = document.querySelectorAll("input[disabled]");
        inputs.forEach((input) => {
          input.disabled = false;
        });
        document.getElementById("editButton").classList.add("hidden");
        document.getElementById("saveButton").classList.remove("hidden");
      }

      function saveData() {
        const inputs = document.querySelectorAll("input");
        inputs.forEach((input) => {
          input.disabled = true;
        });
        document.getElementById("saveButton").classList.add("hidden");
        document.getElementById("editButton").classList.remove("hidden");
      }
    </script>
    </body>
</html>
