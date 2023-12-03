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
public class MoneyTransactionDto {

    public boolean sendMoneyInAccount(MoneyTransactionDao mDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                System.out.println("===================================================");
                System.out.println(mDao.getReceiverId());
                System.out.println(mDao.getAmount());
                System.out.println(mDao.getTranType());
                System.out.println(mDao.getDescription());
                System.out.println(mDao.getTranStatus());
                System.out.println(mDao.getPass());
                System.out.println("===================================================");
                MoneyTransactionDto.checkAccountExist(mDao);
//                System.out.println(mDao.getName());
                String query = "insert into transaction_information(Account_num, Receiver_Id, Amount, Tran_Type, Description, Tran_status) values(?, ?, ?, ?, ?, ?)";

                PreparedStatement psmt = con.prepareStatement(query);

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    private static boolean checkAccountExist(MoneyTransactionDao mDao) {
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
