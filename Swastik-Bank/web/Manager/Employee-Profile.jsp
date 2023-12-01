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
    <header id="header" class="header fixed-top d-flex align-items-center">
      <div class="d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
          <img src="assets/img/logo.png" alt="" />
          <span class="d-none d-lg-block">Swastik</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
      </div>
      <!-- End Logo -->

      <div class="search-bar">
        <form
          class="search-form d-flex align-items-center"
          method="POST"
          action="#"
        >
          <input
            type="text"
            name="query"
            placeholder="Search"
            title="Enter search keyword"
          />
          <button type="submit" title="Search">
            <i class="bi bi-search"></i>
          </button>
        </form>
      </div>
      <!-- End Search Bar -->

      <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
          <li class="nav-item d-block d-lg-none">
            <a class="nav-link nav-icon search-bar-toggle" href="#">
              <i class="bi bi-search"></i>
            </a>
          </li>
          <!-- End Search Icon-->

          <!-- End Notification Nav -->

          <li class="nav-item dropdown pe-3">
            <a
              class="nav-link nav-profile d-flex align-items-center pe-0"
              href="#"
              data-bs-toggle="dropdown"
            >
              <img
                src="assets/img/profile-img.jpg"
                alt="Profile"
                class="rounded-circle"
              />
              <span class="d-none d-md-block dropdown-toggle ps-2"
                >SK Maali</span
              > </a
            ><!-- End Profile Iamge Icon -->

            <ul
              class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"
            >
              <li class="dropdown-header">
                <h6>Sohan Maali</h6>
                <span>Manager</span>
              </li>
              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <a
                  class="dropdown-item d-flex align-items-center"
                  href="users-profile.html"
                >
                  <i class="bi bi-person"></i>
                  <span>My Profile</span>
                </a>
              </li>
              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <i class="bi bi-box-arrow-right"></i>
                  <span>Sign Out</span>
                </a>
              </li>
            </ul>
            <!-- End Profile Dropdown Items -->
          </li>
          <!-- End Profile Nav -->
        </ul>
      </nav>
      <!-- End Icons Navigation -->
    </header>
    <!-- End Header -->

    <!-- ======= Sidebar ======= -->
    <aside id="sidebar" class="sidebar">
      <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.html">
            <i class="bi bi-grid"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <!-- End Dashboard Nav -->

        <li class="nav-item">
          <a
            class="nav-link collapsed"
            data-bs-target="#components-nav"
            data-bs-toggle="collapse"
            href="#"
          >
            <i class="bi bi-menu-button-wide"></i><span>Department</span
            ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul
            id="components-nav"
            class="nav-content collapse"
            data-bs-parent="#sidebar-nav"
          >
            <li>
              <a href="#"> <i class="bi bi-circle"></i><span>Loan</span> </a>
            </li>
            <li>
              <a href=""> <i class="bi bi-circle"></i><span>Cash</span> </a>
            </li>
          </ul>
        </li>
        <!-- End Components Nav -->

        <!-- --------Customer Start----------- -->
        <li class="nav-item">
          <a
            class="nav-link collapsed"
            data-bs-target="#tables-nav"
            data-bs-toggle="collapse"
            href="#"
          >
            <i class="fa-solid fa-user-group"></i><span>Customer</span
            ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul
            id="tables-nav"
            class="nav-content collapse"
            data-bs-parent="#sidebar-nav"
          >
            <li>
              <a href="Customer-List.html">
                <i class="bi bi-circle"></i><span>Customer List</span>
              </a>
            </li>

            <li>
              <a href="#">
                <i class="bi bi-circle"></i><span>Customer Civil</span>
              </a>
            </li>
          </ul>
        </li>
        <!-- --------Customer End----------- -->
        <!-- --------Employee Start----------- -->
        <li class="nav-item">
          <a
            class="nav-link collapsed"
            data-bs-target="#icons-nav"
            data-bs-toggle="collapse"
            href="#"
          >
            <i class="fa-solid fa-users"></i><span>Employee</span
            ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul
            id="icons-nav"
            class="nav-content collapse"
            data-bs-parent="#sidebar-nav"
          >
            <li>
              <a href="Employee-List.html">
                <i class="bi bi-circle"></i><span>Employee List</span>
              </a>
            </li>
            <li>
              <a href="#">
                <i class="bi bi-circle"></i><span>Add Employee</span>
              </a>
            </li>
          </ul>
        </li>
        <!-----------Employee  End------------- -->
        <!-- -----Request Start------- -->
        <li class="nav-item">
          <a
            class="nav-link collapsed"
            data-bs-target="#forms-nav"
            data-bs-toggle="collapse"
            href="#"
          >
            <i class="bi bi-journal-text"></i><span>Request</span
            ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul
            id="forms-nav"
            class="nav-content collapse"
            data-bs-parent="#sidebar-nav"
          >
            <li>
              <a href="forms-elements.html">
                <i class="bi bi-circle"></i><span>Loan Request</span>
              </a>
            </li>
            <li>
              <a href="forms-elements.html">
                <i class="bi bi-circle"></i><span>Probleam Report</span>
              </a>
            </li>
          </ul>
        </li>
        <!-- -----Request End------- -->
        <li class="nav-heading">Other</li>

        <!-- End Profile Page Nav -->

        <li class="nav-item">
          <a class="nav-link collapsed" href="Review-And-Rating.html">
            <i class="bi bi-question-circle"></i>
            <span>Reaview</span>
          </a>
        </li>
      </ul>
    </aside>
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
