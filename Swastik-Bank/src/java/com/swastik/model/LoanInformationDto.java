/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.swastik.service.GetConnection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sohan_Maali
 */
public class LoanInformationDto {

    public static List<LoanInformationDao> alldataLoan() {
        List<LoanInformationDao> list = new ArrayList<>();
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "select * from  loan";

            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    LoanInformationDao e = new LoanInformationDao();
                    e.setLoanId(rs.getInt("Loanid"));
                    e.setName(rs.getString("name"));
                    e.setIntrest(rs.getString("Intrest_Rate"));
                    e.setDuration(rs.getString("Duration"));
                    list.add(e);
//            System.out.println(dao.getName());
                }

            } catch (SQLException e) {
                System.out.println("" + e);
            }
        }
        return list;
    }
}
