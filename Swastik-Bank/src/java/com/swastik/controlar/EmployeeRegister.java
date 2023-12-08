package com.swastik.controlar;

import com.swastik.model.EmployeeInformationDao;
import com.swastik.model.EmployeeInformationDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class EmployeeRegister extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            System.out.println("Call");
            /* TODO output your page here. You may use following sample code. */
//           int employeeId = Integer.parseInt(request.getParameter("requestId"));

            String name = request.getParameter("name");
            String lname = request.getParameter("lname");
//             String fullName = name +" " + lname;
            String dob = request.getParameter("dob");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("mobile");
            String adhar = request.getParameter("adhar");
            String pancard = request.getParameter("pancard");
//            String image=request.getParameter("image");   

            EmployeeInformationDao edao = new EmployeeInformationDao();
//      edao.setEmployeeId(employeeId);
            edao.setName(name + " " + lname);
            System.out.println(name + "" + lname);
            edao.setEmail(email);
            System.out.println(name + "" + email);
            edao.setPassword(password);
            System.out.println(password);
            edao.setPhone(phone);
            System.out.println(phone);
            edao.setAdhar(adhar);
            System.out.println(adhar);

            edao.setPancard(pancard);
            System.out.println(pancard);
//         edao.setImage("image");
            edao.setDob(dob);
            System.out.println(dob);
            EmployeeInformationDto edto = new EmployeeInformationDto();
            boolean b = edto.EmployeeInformation(edao);
            System.out.println("kjhghj" + b);
            if (b) {
                response.sendRedirect("Employee/index.jsp");
            } else {
                response.sendRedirect("Employee/Registration.jsp");
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
