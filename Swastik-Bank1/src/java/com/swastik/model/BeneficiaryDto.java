package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
                String query = "insert into Beneficiary(Beneficiary_Name, Bank, ifsc, Account_Num, Limit) values(?, ?, ?, ?, ?,)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, bDao.getName());
                psmt.setString(2, bDao.getBank());
                psmt.setString(3, bDao.getIfsc());
                psmt.setString(4, bDao.getAccNum());
                psmt.setString(5, bDao.getLimit());
                psmt.executeUpdate();
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean deleteBeneficiary(BeneficiaryDao bDao) {
        //Wrong
        boolean flag = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String query = "insert into Beneficiary(Beneficiary_Id) values(?, ?, ?, ?, ?,)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, bDao.getName());
                psmt.executeUpdate();
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}
