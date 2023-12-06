package com.swastik.controlar;

//import com.swastik.model.BeneficiaryDao;
import com.swastik.model.AccountOpenDao;
import com.swastik.model.MoneyTransactionDao;
import com.swastik.model.MoneyTransactionDto;
import com.swastik.other.Message;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
//import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class MonyTransfer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            AccountOpenDao accDao = (AccountOpenDao) session.getAttribute("activeUser");

            MoneyTransactionDto moneyDto = new MoneyTransactionDto();
            MoneyTransactionDao mDao = new MoneyTransactionDao();
            mDao.setSenderId(accDao.getCustomerId());
            mDao.setReceiverId(Integer.parseInt(request.getParameter("beniId")));
            mDao.setAmount(request.getParameter("amount"));
            // Assuming accDao.getBalance() returns a double value
            double balance = accDao.getBalance();
            String balanceString = Double.toString(balance);
            mDao.setSenderAmount(balanceString);

            mDao.setTranType(request.getParameter("tranType"));
            mDao.setDescription(request.getParameter("description"));
            mDao.setPass(request.getParameter("pass"));
            mDao.setReciverAcc(request.getParameter("beniacc"));

            String beniId = request.getParameter("beniId");
            if (!accDao.getPassword().equals(request.getParameter("pass"))) {
                Message message = new Message("Invalide Pin ! Try again!!", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/transfermoney2.jsp?beniId=" + beniId);
            }
            if (accDao.getBalance() <= (Double.parseDouble(mDao.getAmount()))) {
                Message message = new Message(" Insufficient Balance! Try again!!", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/transfermoney2.jsp?beniId=" + beniId);
//                response.sendRedirect("Customer/transfermoney2.jsp");
                //Ensfesent balance in account
//                return;
            } else if (moneyDto.performMoneyTransfer(mDao)) {
                Message message = new Message(" Amount Transfer Success! Thankyou For Trancsaction", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/transfermoney2.jsp?beniId=" + beniId);
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
