package com.swastik.controlar;

import com.swastik.model.BeneficiaryDao;
import com.swastik.model.MoneyTransactionDao;
import com.swastik.model.MoneyTransactionDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class MonyTransfer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();

            BeneficiaryDao beneficiaryDao = (BeneficiaryDao) session.getAttribute("beneficiaryDao");
            MoneyTransactionDto moneyDto = new MoneyTransactionDto();
            MoneyTransactionDao mDao = new MoneyTransactionDao();

            mDao.setReceiverId(beneficiaryDao.getBeneId());
            mDao.setAmount(request.getParameter("amount"));
            mDao.setTranType(request.getParameter("tranType"));
            mDao.setDescription(request.getParameter("description"));
            mDao.setReceiverId(beneficiaryDao.getBeneId());
            mDao.setPass(request.getParameter("pass"));
            //            mDao.getTranType(beneficiaryDao.get());
            if (moneyDto.sendMoneyInAccount(mDao)) {
                response.sendRedirect("Customer/transfermoney2.jsp");
                //errot massage likha he
            } else {
                response.sendRedirect("Customer/transfermoney2.jsp");
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
