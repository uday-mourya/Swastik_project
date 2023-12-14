<%-- 
    Document   : ActivationTable
    Created on : 15-Nov-2023, 11:22:27 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@ page import=" com.swastik.model.*" %>
<%@ page import="com.swastik.controlar.*" %>
<%@page import="java.util.ArrayList"%>

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
  </head>
  <style>
      #headings{
        margin-top:70px;
         margin-left:320px;
      }
      #btn1{
      height:20px;
       width:60px;
        background-color:#9F1945;
      }
      .btn1{
      height:30px;
       width:100px;
        background-color:#9F1945;
        color:white;
      }
      #btn2{
        color: white;
        text-decoration:none;
       text-align: center;
       justify-content: center;
      }
  </style>

  <body>
      
     <%
    ActivationRequestDto adto = new ActivationRequestDto();
    ArrayList<ActivationRequestDao> activerequest = adto.ActivationRequest();
%>

  <%@include file="head.jsp"%>
              
    <div id="headings">
      <span>Dashboard / Request / ActivationRecord</span>
    </div>
              
    <!-- End Sidebar-->
  </ul>
</nav>
</header>
    <section class="section" style="margin-top: 100px; width:60rem; margin-left: 20rem;">
        <table class="table table-striped table-hover">
          <thead class="bg-light">
            <tr>
                <h4><center><b>Activation Request</b></center></h4>
              <th>Name</th>
              <!-- <th>Account no.</th> -->
              <th>Customer id</th>
              <th>Active Status</th>
              <th>Actions</th>
               </tr>
                <%
                          
              if (activerequest != null && !activerequest.isEmpty()) {
                          for(ActivationRequestDao adao: activerequest)
                         {
                    %>
               
           
            <tr>
              <td>
                <div class="d-flex align-items-center">
                  <img
                    src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                    alt=""
                    style="width: 45px; height: 45px"
                    class="rounded-circle"
                  />
                  <div class="ms-3">
                    <p class="fw-bold mb-1"><%= adao.getName() %></p>
                    <p class="text-muted mb-0"></p>
                  </div>
                </div>
              </td>
            

              <td><%= adao.getCustomerId() %></td>
              <td>Active</td>
              <td>
<!--                <button type="button" class="btn btn-link btn-sm btn-rounded" id="btn1">
              <a href="" id="btn2">Active</a>
                </button>-->
                   <button type="button" class="btn btn-link btn-sm btn-rounded">
                <a href""><button class="btn1" onclick="activate()">Activate</button></a>
                      <button type="button" onclick="deactivate()" class="btn btn-link btn-sm btn-rounded">
                <a href""><button class="btn1" >DeActivate</button></a>
<!--                       

                </button>
                   <button type="button" class="btn btn-link btn-sm btn-rounded" id="btn1">
                 <a href="" id="btn2">DeActive</a>
                </button>
              </td>
            </tr>


                 <%
      }
   } else {
%>
      <p>No data found!</p>
<%
   }
%>
     
  </thead>


        </thead>

        </table>
      </section>