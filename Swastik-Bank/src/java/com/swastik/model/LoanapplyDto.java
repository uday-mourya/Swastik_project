package com.swastik.model;

/**
 *
 * @author Sohan_Maali
 *
 */
import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class LoanapplyDto {

    public boolean insert(LoanapplyDao loanApplication) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "INSERT INTO LoanRequest(Acc_number, Beneficiary_Name, Adhar_num, Pan_Num, Address, Email, "
                    + "Guarantor_name, Guarantor_Father, Guarantor_Gender, Guarantor_Address, Guarantor_Account, Guarantor_Ifsc, "
                    + "Guarantor_Adhar, Guarantor_Pan) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try {
                PreparedStatement preparedStatement = con.prepareStatement(sql);
                preparedStatement.setString(1, loanApplication.getAcc_number());
                preparedStatement.setString(2, loanApplication.getBeneficiary_Name());
                preparedStatement.setString(3, loanApplication.getAdhar_num());
                preparedStatement.setString(4, loanApplication.getPan_Num());
                preparedStatement.setString(5, loanApplication.getAddress());
                preparedStatement.setString(6, loanApplication.getEmail());
                preparedStatement.setString(7, loanApplication.getGuarantor_name());
                preparedStatement.setString(8, loanApplication.getGuarantor_Father());
                preparedStatement.setString(9, loanApplication.getGuarantor_Gender());
                preparedStatement.setString(10, loanApplication.getGuarantor_Address());
                preparedStatement.setString(11, loanApplication.getGuarantor_Account());
                preparedStatement.setString(12, loanApplication.getGuarantor_Ifsc());
                preparedStatement.setString(13, loanApplication.getGuarantor_Adhar());
                preparedStatement.setString(14, loanApplication.getGuarantor_Pan());

                int rowsAffected = preparedStatement.executeUpdate();

                return rowsAffected > 0;
            } catch (SQLException e) {
                System.out.println(e);
                return false;
            }
        }
        return false;
    }

}
