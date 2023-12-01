package com.swastik.controlar;

import com.swastik.other.Message;
import com.swastik.model.BeneficiaryDao;
import com.swastik.model.BeneficiaryDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class AddBeneficiary extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            BeneficiaryDao bDao = new BeneficiaryDao();
            BeneficiaryDto bDto = new BeneficiaryDto();
            
            bDao.setName(request.getParameter("bName"));
            System.out.println(request.getParameter("bName"));

            bDao.setIfsc(request.getParameter("ifscCode"));
            System.out.println(request.getParameter("ifscCode"));

            bDao.setAccNum(request.getParameter("accNum"));
            bDao.setBank(request.getParameter("bank"));
            System.out.println(request.getParameter("bank"));
            bDao.setLimit(request.getParameter("limit"));
            System.out.println(request.getParameter("limit"));
            HttpSession session = request.getSession();

            if (bDto.addBeneficiary(bDao)) {
                Message message = new Message("Beneficiary Added Successful !!", "success", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/Addbeneficiary.jsp");
            } else {
                Message message = new Message("Beneficiary Adding Fail !!", "fail", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/Addbeneficiary.jsp");
            }
        } catch (IOException e) {
            System.out.println(e);
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
