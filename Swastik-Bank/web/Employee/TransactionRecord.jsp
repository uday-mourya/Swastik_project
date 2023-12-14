<%-- 
    Document   : TransactionRecord
    Created on : 15-Nov-2023, 11:56:09 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.swastik.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Dashboard - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Favicons -->
    <link href="assets/img/logo.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />
    <link href="CustomerTransaction.css">
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
    <style>
        #for{
            margin-top:200px;
            height: 600px;
            width:900px;
            margin-left: 360px;
            margin-top: 40px;
        }
        #headings{
        margin-top:100px;
         margin-left:320px;
      }
    </style>
  </head>

  <body>
       <%
          int a=Integer.parseInt(request.getParameter("accountnum"));
          AccountOpenDto adto=new AccountOpenDto();
    ArrayList<TransactionInformationDao> transactioninfo  =adto.EmployeTransaction1(a);
    
   %>
    <%@include file="head.jsp"%>

  <div id="headings">
    <span>Dashboard / Customer / Tracsaction Record / view</span>
              </tr>
        <%
                          
              if (transactioninfo != null && !transactioninfo.isEmpty()) {
                          for(TransactionInformationDao tdao: transactioninfo)
                         {
                    %>
  </div>

    <div class="container border p-20 " id="for">
        <h4 class="text-center"><b>Record</b></h4>
    <form class="row g-3">
        <div class="col-md-4">
          <label for="inputEmail4" class="form-label"><b>Name</b></label><br>
          <!-- <input type="email" class="form-control" id="inputEmail4"> -->
          <label><%= tdao.getName() %></label>
        </div>
        <div class="col-md-4">
          <label for="inputPassword4" class="form-label"><b>Father Names</b></label><br>
          <!-- <input type="password" class="form-control" id="inputPassword4"> -->
          <label><%= tdao.getFather() %></label>
        </div>
        <div class="col-md-4">
            <label for="inputPassword4" class="form-label"><b>Mother Name</b></label><br>
            <!-- <input type="password" class="form-control" id="inputPassword4"> -->
            <label><%= tdao.getMother() %></label>
          </div>
        <div class=" col-md-4">
          <label for="inputAddress" class="form-label"><b>Dateof Birth</b></label><br>
         
          <label><%= tdao.getDob() %></label>
        </div>
        <div class="col-md-4">
          <label for="inputAddress2" class="form-label"> <b> Gender</b></label><br>
          <label><%= tdao.getGender() %></label>
         
        
        </div>
        <div class="col-md-4">
          <label for="inputCity" class="form-label"><b>Mobile Number</b></label><br>
         
           <label><%= tdao.getMobile() %></label>
        </div>
        <div class="col-md-4">
            <label for="inputCity" class="form-label"><b>Email-id</b></label><br>
           
             <label><%= tdao.getEmail() %></label>
          </div>

          <div class="col-md-4">
            <label for="inputCity" class="form-label"><b>Address</b></label><br>
            <!-- <input type="text" class="form-control" id="inputCity"> -->
            <label><%= tdao.getAddress() %></label>
            </div>
            
                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>City </b></label><br>
                
                   <label>shivanya Kardam</label>
                
            </div>
               
         
        <div class="col-md-4">
          <label for="inputState" class="form-label"><b>State</b></label><br>
          <label>Madhya Pradesh</label>
          
        </div>
         <div class="col-md-4">
            <label for="inputState" class="form-label"><b>Country</b></label><br>
            <label>India</label>
           
          </div>
          
          <div class="col-md-4">
            <label for="inputCity" class="form-label"><b>Adhar.no</b></label><br>
            <!-- <input type="text" class="form-control" id="inputCity"> -->
            <label>********9465</label>
            
  </div>

  <div class="col-md-4">
    <label for="inputCity" class="form-label"><b>PanCard.no</b></label><br>
    <!-- <input type="text" class="form-control" id="inputCity"> -->
    <label>******4749&44</label>
    
</div>

<div class="col-md-4">
    <label for="inputCity" class="form-label"><b>Ocupation</b></label><br>
  
    <label>STudent</label>
    
</div>
<div class="col-md-4">
    <label for="inputState" class="form-label"><b>Marital-Status</b></label><br>
    
    <label>Unmarried</label>
    
  </div>

<div class="col-md-4">
    <label for="inputCity" class="form-label"><b>Nominee name</b></label><br>
    
    <label>shivanya Kardam</label>
    
</div>

<div class="col-md-4">
    <label for="inputCity" class="form-label"><b>Nominee Adhar no.</b></label><br>
 
    <label>shivanya Kardam</label>
    
</div>
<div class="col-md-4">
    <label for="inputCity" class="form-label"><b>Nominee Address</b></label><br>
   
    <label>Bhawarkuaindore</label>
    
</div>


      </form>
      
    </div>
    <pre>






  .
    </pre>
    <footer id="footer" class="footer">
      <div class="copyright">
        &copy; Copyright <strong><span>Tech Nerds</span></strong
        >. All Rights Reserved
      </div>
      <div class="credits">Designed by <a href="#">Soniya Kardam</a></div>
    </footer>
       
  </body>
</html>
