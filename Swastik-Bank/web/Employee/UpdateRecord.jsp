<%-- 
    Document   : UpdateRecord
    Created on : 16-Nov-2023, 12:12:44 am
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
    <link href="DailyLedger.css">
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
    .section{
      margin-top:60px; 
      width:60rem; 
      margin-left:20rem;

    }
    #headings{
        margin-top:70px;
         margin-left:320px;
      }
/*      #cont{
          margin-top:-200px;
      }*/

        .footer{
/*      width:50vw;*/
      margin-left:-100px;
    }
    @media only screen and (max-width: 360px) {
      .section{
      margin-top:80px; 
      width:5px; 
      height: 30rem;
      margin-left:0rem;

    }
    #headings{
        margin-top:70px;
         margin-left:8px;
         width:400px;
      }
    #up{
      width:300px;
      /* margin-left: 20px; */
    }
    .footer{
      width:50vw;
      margin-left:70px;
    }

    }
  </style>

  <body>
      <%
          int a=Integer.parseInt(request.getParameter("accountno"));
          EmployeeUpdateDto edto=new EmployeeUpdateDto();
    ArrayList<EmployeeUpdateDao> updation1  =edto.UpdationRequest1(a);
    %>
  
   <%@include file="head.jsp"%>
     
    <%
          int b=Integer.parseInt(request.getParameter("accountno"));
          AccountOpenDto adto=new AccountOpenDto();
    ArrayList<AccountOpenDao> getolgdata  =adto.GetOldData(b);
    
   %>
                    
                    <div class="container" id="cont">
<div id="headings">
  <span>Dashboard / Request / UpdateRequest</span>
</div>
    <section class="section">
       <form action="../EmployeeRecordUpdate" method="post">
        <table class="table  table-hover">
          <thead class="bg-light">
            <tr>
                <h4 id="up"><center><b >Update Request</b></center></h4>
              <th>option</th>
              <th>Old</th>
              <th>New</th>
                 <%
                          
              if (updation1 != null && !updation1.isEmpty()) {
                          for(EmployeeUpdateDao edao: updation1)
                         {
                    %>
                    
                    
             
                                    <%

                            if (getolgdata != null && !getolgdata.isEmpty()) {
                                        for(AccountOpenDao Adao: getolgdata)
                                       {
                                  %>
            </tr>
            <tr>
              <td>
                <div class="d-flex align-items-center">
                  
                  <div class="ms-3">
                    <p class="fw-bold mb-1">Name</p>
                    <p class="text-muted mb-0"></p>
                  </div>
                </div>
              </td>
              <td>
              
               <%= Adao.getName() %>
              </td>
           
              <td>  <input type="text" readonly style="border:none;" name="name" value="<%= edao.getName() %>"></td>
              
              <td>
               
              </td>
            </tr>

            <tr>
                <td>
                  <div class="d-flex align-items-center">
                   
                    <div class="ms-3">
                      <p class="fw-bold mb-1">Father name</p>
                      <p class="text-muted mb-0"></p>
                    </div>
                  </div>
                </td>
                <td>
                 
        <%= Adao.getFather() %>
                </td>
  
             
               
                <td>  <input readonly type="text" style="border:none;" name="fname" value="<%= edao.getFather_Name() %>"></td>
            
                <td>
                 
                </td>
              </tr>
          </thead>
          <tr>
            <td>
            
                <div class="ms-3">
                  <p class="fw-bold mb-1">Mother name</p>
                  <p class="text-muted mb-0"></p>
                </div>
              </div>
            </td>
            <td>
       <%= Adao.getMother() %>
            </td>

          
            <td>  <input type="text" readonly style="border:none;" name="moher" value="<%= edao.getMother_Name() %>"></td> 
          
            <td>
             
            
            </td>
          </tr>
      </thead>
      <tr>
        <td>
         
            <div class="ms-3">
              <p class="fw-bold mb-1">Mobile no</p>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </td>
        <td>
       <%= Adao.getMobile() %>
        </td>

      
        <td>  <input readonly type="text" style="border:none;" name="mobile" value="<%= edao.getMobile() %>"></td>
      
        <td>
         
        </td>
      </tr>

      <tr>
        <td>
          
            <div class="ms-3">
              <p class="fw-bold mb-1">Address</Address></p>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </td>
        <td>
    <%= Adao.getAddress() %>
        </td>

       
        <td>  <input readonly style="border:none;" name="address" value="<%= edao.getAddress() %>"></td>
     
        <td>
        
        </td>
      </tr>

      <tr>
        <td>
          <div class="d-flex align-items-center">
          
            <div class="ms-3">
              <p class="fw-bold mb-1">Nominee name</p>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </td>
        <td>
       Sunil 
        </td>
        <td> <input readonly type="text" style="border:none;" name="Noname" value="<%= edao.getNominee_name() %>"></td>
        <td></td>
        <tr>
          <td>
            
            
              <div class="ms-3">
                <p class="fw-bold mb-1">Nominee Adhar</Address></Address></p>
                <p class="text-muted mb-0"></p>
              </div>
            </div>
          </td>
          <td>
       	977645678
          </td>
          <td><input readonly type="text" style="border:none;" name="Noadhar" value="<%= edao.getNominee_Adhar() %>"></td>
          <td></td>
          <tr>
            <td>
            
                <div class="ms-3">
                  <p class="fw-bold mb-1">Nominee Contact</Address></p>
                  <p class="text-muted mb-0"></p>
                </div>
              </div>
            </td>
            <td>
       9842537363
            </td>
    
  
        
            <td><input readonly type="text" style="border:none;" name="Nomobile" value="<%= edao.getNominee_mobile() %>"></td>
        <td>
        
        </td>
      </tr>
      
      <tr>
        <td>
        
      
               <%
           }
             } else {
            %>
              <p>No data found!</p>
            <%
                  }
            %>
            
                  <%
           }
             } else {
            %>
              <p>No data found!</p>
            <%
                  }
            %>

        
   
  </thead>
      <td><center><button type="submit" style="background-color:#9F1945 ; color:white ; margin-left:60px;">Update</button></center></td><td></td><td></td>
     <td><button type="button" class="btn btn-link btn-sm btn-rounded text-white">
                  </button></td>

        </thead> 
        </table>
        </form>
        <footer id="footer" class="footer">
          <div class="copyright">
              &copy; Copyright <strong><span>Tech Nerds</span></strong>
            . All Rights Reserved
          </div>
          <div class="credits">Designed by <a href="#">Soniya Kardam</a></div>
        </footer>
    </section>
                    </div>
      </body>
      </html>