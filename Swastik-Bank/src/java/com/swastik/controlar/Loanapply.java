package com.swastik.controlar;

import com.swastik.model.LoanapplyDao;
import com.swastik.model.LoanapplyDto;
import com.swastik.other.Message;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author dell
 */
public class Loanapply extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String accNumber = request.getParameter("accNumber");
            String beneficiaryName = request.getParameter("beneficiaryName");
            String adharNum = request.getParameter("adharNum");
            String panNum = request.getParameter("panNum");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String guarantorName = request.getParameter("guarantorName");
            String guarantorFather = request.getParameter("guarantorFather");
            String guarantorGender = request.getParameter("guarantorGender");
            String guarantorAddress = request.getParameter("guarantorAddress");
            String guarantorAccount = request.getParameter("guarantorAccount");
            String guarantorIfsc = request.getParameter("guarantorIfsc");
            String guarantorAdhar = request.getParameter("guarantorAdhar");
            String guarantorPan = request.getParameter("guarantorPan");

            LoanapplyDao loanApplication = new LoanapplyDao(
                    accNumber, beneficiaryName, adharNum, panNum, address, email,
                    guarantorName, guarantorFather, guarantorGender, guarantorAddress,
                    guarantorAccount, guarantorIfsc, guarantorAdhar, guarantorPan
            );
            LoanapplyDto edto = new LoanapplyDto();
            boolean b = edto.insert(loanApplication);
            HttpSession session = request.getSession();
            if (b) {
                Message message = new Message("Loan Applay Successful !!", "success", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/loanform.jsp");
            } else {
                Message message = new Message("Loan Applay Fail ! Try again !!", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/loanform.jsp");
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
