package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import java.sql.ResultSet;

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
//            try {
            System.out.println("===================================================");
            System.out.println(mDao.getReceiverId());
            System.out.println(mDao.getAmount());
            System.out.println(mDao.getTranType());
            System.out.println(mDao.getDescription());
//            System.out.println(mDao.getTranStatus());
            System.out.println(mDao.getPass());
            System.out.println("===================================================");
            MoneyTransactionDto.checkAccountExist(mDao);
//                System.out.println(mDao.getName());
//                String query = "insert into transaction_information(Account_num, Receiver_Id, Amount, Tran_Type, Description, Tran_status) values(?, ?, ?, ?, ?, ?)";

//                PreparedStatement psmt = con.prepareStatement(query);
//            } catch (SQLException e) {
//                System.out.println(e);
//            }
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

//    ----------------------------------------------------------------------------------------------------------------
    private static final String SELECT_ACCOUNT_BY_NUMBER = "SELECT * FROM accounts WHERE account_number=?";
    private static final String UPDATE_ACCOUNT_BALANCE = "UPDATE accounts SET balance=? WHERE account_number=?";

//    public AccountDTO getAccountByNumber(String accountNumber) throws SQLException {
//        try (Connection connection = GetConnection.getConnectin(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ACCOUNT_BY_NUMBER)) {
//
//            preparedStatement.setString(1, accountNumber);
//            ResultSet resultSet = preparedStatement.executeQuery();
//
//            if (resultSet.next()) {
//                return new AccountDTO(resultSet.getString("account_number"), resultSet.getDouble("balance"));
//            }
//
//        } catch (SQLException e) {
//            System.out.println(e);
//            throw e; // Rethrow the exception after logging
//        }
//
//        return null;
//    }
//
//    public void updateAccountBalance(AccountDTO account) {
//        try (Connection connection = DatabaseConnection.getConnectin(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_ACCOUNT_BALANCE)) {
//
//            preparedStatement.setDouble(1, account.getBalance());
//            preparedStatement.setString(2, account.getAccountNumber());
//            preparedStatement.executeUpdate();
//
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//    }
//    ----------------------------------------------------------------------------------------------------------------
}
