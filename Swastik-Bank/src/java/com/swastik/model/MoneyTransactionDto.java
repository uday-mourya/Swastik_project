package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/*
 *
 * @author Sohan_Maali
 *
 */
public class MoneyTransactionDto {

    public boolean TransactionHistory(MoneyTransactionDao mDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "insert into transaction_information(sender_id, Receiver_Id, Amount, Tran_Type, Description, Tran_status) values(?, ?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, mDao.getSenderId());
                psmt.setInt(2, mDao.getReceiverId());
                psmt.setString(3, mDao.getAmount());
                psmt.setString(4, mDao.getTranType());
                psmt.setString(5, mDao.getDescription());
                psmt.setString(6, mDao.getTranStatus());
                if (psmt.executeUpdate() > 0) {
                    flag = true;
                    System.out.println("or kya hal chal he");
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean performMoneyTransfer(MoneyTransactionDao mDao) {

        boolean flag = false;
        boolean a = this.setMoneyReciver(mDao);
        boolean b = this.setMoneySender(mDao);
        if (a && b) {
            mDao.setTranStatus("success");
            flag = TransactionHistory(mDao);
        }
        return flag;
    }

    public boolean setMoneyReciver(MoneyTransactionDao mDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {

                String query = "UPDATE account SET Current_Balance = ? WHERE Account_Num = ? ";
                Double amount = this.getReciverAmount(mDao.getReciverAcc());
                double amountResult = amount + Double.valueOf(mDao.getAmount());

                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, String.valueOf(amountResult));
                psmt.setInt(2, Integer.parseInt(mDao.getReciverAcc()));
                if (psmt.executeUpdate() > 0) {
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        System.out.println(flag);
        return flag;
    }

    public boolean setMoneySender(MoneyTransactionDao mDao) {

        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "UPDATE account SET Current_Balance = ? WHERE customer_id = ? ";
                PreparedStatement psmt = con.prepareStatement(query);
                double amountResult = Double.parseDouble(mDao.getSenderAmount()) - Double.parseDouble(mDao.getAmount());
                String amount = String.valueOf(amountResult);
                psmt.setString(1, amount);
                psmt.setInt(2, mDao.getSenderId());
                if (psmt.executeUpdate() > 0) {
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e + "sender");
            }
        }
        return flag;
    }

    public double getReciverAmount(String reAcc) {
        Connection con = GetConnection.getConnectin();
        double amount = 0;
        if (con != null) {
            try {
                String query = "SELECT * FROM account WHERE Account_Num = ?";
                PreparedStatement psmt = con.prepareStatement(query);

                psmt.setString(1, reAcc);
                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    amount = Double.parseDouble(set.getString("Current_Balance"));
                }
            } catch (SQLException e) {
                System.out.println(e + "+++++++++++reciver");
            }
        }
        return amount;
    }

    public List<MoneyTransactionDao> getTransactionHistory(AccountOpenDao dao) {
        List<MoneyTransactionDao> list = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "SELECT * FROM transaction_information WHERE sender_id = ? ";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, dao.getCustomerId());
                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    System.out.println("==============================================================");
                    MoneyTransactionDao mDao = new MoneyTransactionDao();
                    mDao.setTranid(set.getInt("Transaction_id"));
                    System.out.println(set.getInt("Transaction_id"));

                    mDao.setSenderId(set.getInt("sender_id"));
                    System.out.println(set.getInt("sender_id"));

                    mDao.setReceiverId(set.getInt("Receiver_Id"));
                    System.out.println(set.getInt("Receiver_Id"));

                    mDao.setAmount(set.getString("Amount"));
                    System.out.println(set.getString("Amount"));

                    mDao.setTranDate(set.getString("Tran_Date"));
                    System.out.println(set.getString("Tran_Date"));

                    mDao.setTranType(set.getString("Tran_Type"));
                    System.out.println(set.getString("Tran_Type"));

                    mDao.setDescription(set.getString("Description"));
                    System.out.println(set.getString("Description"));

                    mDao.setTranStatus(set.getString("Tran_status"));
                    System.out.println(set.getString("Tran_status"));
                    list.add(mDao);
                    System.out.println("==============================================================");
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }

        return list;
    }

}
