package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Sohan_Maali
 */
public class BeneficiaryDto {

    public boolean addBeneficiary(BeneficiaryDao bDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String query = "INSERT INTO Beneficiary (Acc_num, Beneficiary_Name, Bank, `ifsc`,`Limit`,benefi_Acc_num)VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, bDao.getCustAccNum());
                psmt.setString(2, bDao.getName());
                psmt.setString(3, bDao.getBank());
                psmt.setString(4, bDao.getIfsc());
                psmt.setString(5, bDao.getLimit());
                psmt.setString(6, bDao.getAccNum());
                psmt.executeUpdate();
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean getAllBeneficiary(ArrayList<BeneficiaryDao> beneficiaryDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "select * from Beneficiary where Acc_num = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, 12);
//                psmt.setInt(1, setCustAccNum());

                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    BeneficiaryDao bDao = new BeneficiaryDao();
                    bDao.setBeneId(set.getInt("Beneficiary_Id"));
                    bDao.setName(set.getString("Beneficiary_Name"));
                    bDao.setBank(set.getString("Bank"));
                    bDao.setIfsc(set.getString("ifsc"));
                    bDao.setAccNum(set.getString("benefi_Acc_num"));
                    bDao.setLimit(set.getString("Limit"));
                    beneficiaryDao.add(bDao);
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public ArrayList<BeneficiaryDao> getAllBeneficiary(AccountOpenDao bnDao) {
        ArrayList<BeneficiaryDao> beneficiaryDao = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "select * from Beneficiary where Acc_num = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, bnDao.getAccNum());
//                psmt.setInt(1, setCustAccNum());

                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    BeneficiaryDao bDao = new BeneficiaryDao();
                    bDao.setBeneId(set.getInt("Beneficiary_Id"));
                    bDao.setName(set.getString("Beneficiary_Name"));
                    bDao.setBank(set.getString("Bank"));
                    bDao.setIfsc(set.getString("ifsc"));
                    bDao.setAccNum(set.getString("benefi_Acc_num"));
                    bDao.setLimit(set.getString("Limit"));
                    beneficiaryDao.add(bDao);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return beneficiaryDao;
    }

    public boolean deleteBeneficiary(BeneficiaryDao bDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String query = "DELETE FROM Beneficiary WHERE Account_Num = ? AND Beneficiary_Id = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, bDao.getAccNum());
                psmt.setInt(2, bDao.getBeneId());

                if (psmt.executeUpdate() > 0) {
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}
