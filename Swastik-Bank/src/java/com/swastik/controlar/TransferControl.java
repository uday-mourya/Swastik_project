package com.swastik.controlar;

import com.swastik.model.BeneficiaryDao;
import com.swastik.model.BeneficiaryDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TransferControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        BeneficiaryDao bDao = new BeneficiaryDao();
        BeneficiaryDto bDto = new BeneficiaryDto();
//        bDao.setCustAccNum(request.getParameter(""));
//        bDao.setBeneId(Integer.parseInt(request.getParameter("beneficiaryId")));
        bDao.setName(request.getParameter("beneficiaryName"));
        System.out.println(bDao.getName() + "-----------1");
        bDao.setBank(request.getParameter("beneficiaryBank"));
        System.out.println(bDao.getBank() + "-----------2");
        bDao.setAccNum(request.getParameter("beneficiaryAccNum"));
        System.out.println(bDao.getAccNum() + "-----------3");
        bDao.setIfsc(request.getParameter("beneficiaryifsc"));
        System.out.println(bDao.getIfsc() + "-----------4");
//        ============================================================================
        if (request.getParameter("operation").equals("Send")) {
            response.sendRedirect("Customer/transfermoney2.jsp");
        } else if (request.getParameter("operation").equals("Edit")) {
            response.sendRedirect("Customer/transfermoney.jsp");
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
