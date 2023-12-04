<%-- 
    Document   : Loan-Table
    Created on : 30-Nov-2023, 4:33:24 pm
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
        <h1>Loans Data Table</h1>
        <nav>
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="AdminDashBoard.jsp">Home</a></li>
            <li class="breadcrumb-item">Department</li>
            <li class="breadcrumb-item active">Loans table</li>
          </ol>
        </nav>
      </div>
      <!-- End Page Title -->

      <section class="section">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Loan Table</h5>

                <!-- Table with stripped rows -->
                <table class="table table-striped table-hover">
                  <thead>
                    <tr>
                      <th>S. N.</th>
                      <th>Loan Id</th>
                      <th>Loan Name</th>
                      <th>Interest Rate</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1.</td>
                      <td>9638525</td>
                      <td>Home Loan</td>
                      <td>6.5%</td>
                      <td>
                        <a href="#" class="edit-btn btn btn-primary">Edit</a>
                      </td>
                    </tr>
                    <!-- Add more rows here -->
                  </tbody>
                </table>

                <!-- End Table with stripped rows -->
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(document).ready(function () {
        // When the "Edit" button is clicked
        $(".edit-btn").click(function () {
          var row = $(this).closest("tr");
          var interestRateCell = row.find("td:nth-child(4)"); // Select the 4th column (Interest Rate)

          if ($(this).text() === "Edit") {
            $(this).text("Save");

            var cellText = interestRateCell.text();
            var input = $('<input type="text">');
            input.val(cellText);
            interestRateCell.html(input);
          } else if ($(this).text() === "Save") {
            $(this).text("Edit");

            var input = interestRateCell.find("input");
            var cellText = input.val();
            interestRateCell.text(cellText);
          }
        });
      });
    </script>
    </body>
</html>
