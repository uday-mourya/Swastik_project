/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.swastik.controlar;

import com.swastik.model.EmployeeInformationDao;
import com.swastik.model.EmployeeInformationDto;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Hp
 */
public class EmployeeRegister extends HttpServlet {

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
            int ParseInt;
            System.out.println("Call");
            /* TODO output your page here. You may use following sample code. */
//           int employeeId = Integer.parseInt(request.getParameter("requestId"));

            String name = request.getParameter("name");
            String lname = request.getParameter("lname");
//             String fullName = name +" " + lname;
           
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("mobile");
            String adharNo = request.getParameter("adhar");
            String pancard = request.getParameter("pancard");
           String Image=request.getParameter("Image"); 
            String dob = request.getParameter("dob");

            EmployeeInformationDao edao = new EmployeeInformationDao();
//      edao.setEmployeeId(employeeId);
            edao.setFullname(name + " " + lname);
            //  System.out.println(name + ""+ lname);
            edao.setEmail(email);
            //  System.out.println(name + ""+ email);
            edao.setPassword(password);
            //   System.out.println(password);
            edao.setPhone(phone);
            // System.out.println(phone);
            edao.setAdhar(adharNo);
            // System.out.println(adharNo);
            

            edao.setPancard(pancard);
            System.out.println(pancard);
         edao.setImage(Image);
            edao.setDob(dob);
            // System.out.println(dob);
            EmployeeInformationDto edto = new EmployeeInformationDto();
            boolean b = edto.EmployeeInformation(edao);
            //   System.out.println("kjhghj"+ b);
            if (b) {
                response.sendRedirect("Employee/index.jsp");
            } else {
                response.sendRedirect("Employee/Register.jsp");
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
