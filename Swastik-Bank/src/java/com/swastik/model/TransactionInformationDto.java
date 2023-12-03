package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/*
 *
 * @author Sohan_Maali
 *
 */
public class TransactionInformationDto {

    public boolean sendMonyAccount(TransactionInformationDao Tdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "insert into transaction_information(Account_num, Receiver_Id, Amount, Tran_Type, Description, Tran_status) values(?, ?, ?, ?, ?, ?)";

                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, Tdao.getAccNum());
                psmt.setInt(2, Tdao.getReceId());
                psmt.setString(3, Tdao.getAmount());
                psmt.setString(4, Tdao.getTranType());
                psmt.setString(5, Tdao.getDescription());
                psmt.setString(6, Tdao.getTranStatus());
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean checkAccountExist() {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "UPDATE customer SET password = ? WHERE password = ? AND email = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}
