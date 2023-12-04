package com.swastik.controlar;

import com.swastik.model.EmployeeInformationDao;
import com.swastik.model.EmployeeInformationDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class EmployeeLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
                response.sendRedirect("Employee/index.jsp"); // Redirect if email or password is missing
                return;
            }
            EmployeeInformationDao edao = new EmployeeInformationDao();
            edao.setEmail(email);
            edao.setPassword(password);
            EmployeeInformationDto edto = new EmployeeInformationDto();
            boolean b = edto.login(edao);
            if (b) {
                response.sendRedirect("Employee/Home.jsp");
            } else {
                out.print(" \"This User Not exists\"");
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
