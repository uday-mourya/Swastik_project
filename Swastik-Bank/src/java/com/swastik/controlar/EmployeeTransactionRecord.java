/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.swastik.controlar;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.swastik.model.*;
//import com.swastik.model.TransactionInformationDto;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class EmployeeTransactionRecord extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
           int Account_num = Integer.parseInt(request.getParameter("accountno"));
    //       int transactionId = Integer.parseInt(request.getParameter("transactionid"));
          
           TransactionInformationDao tdao = new TransactionInformationDao();
           tdao.setAccNum(Account_num);
       //    tdao.setTranid(transactionId);
            System.out.println(""+Account_num);
           TransactionInformationDto tdto = new TransactionInformationDto();
                ArrayList<TransactionInformationDao> b = tdto.EmployeTransaction(tdao);
 //           ArrayList<TransactionInformationDao> b = tdto.EmployeTransaction(accountNum,transactionId);
 //          ArrayList<TransactionInformationDao> transactionList = tdto.EmployeTransaction(tdao);
                   System.out.println(""+b);
        if (b != null && !b.isEmpty()) {
     response.sendRedirect("Employee/Transactiontable.jsp");
        } else {
      out.print("No transactions found for this user");
    }

       }
        catch(Exception e){
            System.out.println(""+e);
        }
    }

    // ... (existing methods)

    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
}
}

                 
                 
                 
          