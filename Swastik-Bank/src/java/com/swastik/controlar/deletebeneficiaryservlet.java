package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.other.Message;
import com.swastik.model.BeneficiaryDao;
import com.swastik.model.BeneficiaryDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class deletebeneficiaryservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            BeneficiaryDao bDao = new BeneficiaryDao();
            BeneficiaryDto bDto = new BeneficiaryDto();
            
            
//            AccountOpenDao clda = (AccountOpenDao) session.getAttribute("activeUser");
//
//            bDao.setCustAccNum(clda.getAccNum()); // Customer Account Number
            
            
            bDao.setAccNum(request.getParameter("accNum")); // Beneficiary Account Number
            
            if (bDto.deleteBeneficiary(bDao)) {
                Message message = new Message("Beneficiary delete Successful !!", "success", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/Addbeneficiary.jsp");
            } else {
                Message message = new Message("Beneficiary delete Fail !!", "fail", "alert-danger");
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
