package com.swastik.controlar;

import com.swastik.other.Message;
import com.swastik.model.BeneficiaryDao;
import com.swastik.model.BeneficiaryDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteBeneficiary extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        BeneficiaryDao bDao = new BeneficiaryDao();
        BeneficiaryDto bDto = new BeneficiaryDto();
        bDao.setName(request.getParameter("bName"));
        bDao.setIfsc(request.getParameter("ifscCode"));
        bDao.setAccNum(request.getParameter("accNum"));
        bDao.setName(request.getParameter("bank"));
        bDao.setName(request.getParameter("limit"));
        if (bDto.deleteBeneficiary(bDao)) {
            Message message = new Message("Beneficiary Deleted Successful !!", "success", "alert-success");
        } else {
            Message message = new Message("Beneficiary Deleting Fail !!", "fail", "alert-success");
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
