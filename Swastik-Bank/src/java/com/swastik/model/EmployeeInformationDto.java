/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.*;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sohan_Maali
 */
public class EmployeeInformationDto {

    public boolean regist(EmployeeInformationDao dao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "insert into employee(password,name,email,dob,salary,phone,position)values(?,?,?,?,?,?,?)";
            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getPassword());
                ps.setString(2, dao.getName());
                ps.setString(3, dao.getEmail());
                ps.setString(4, dao.getDob());
                ps.setString(5, dao.getSalary());
                ps.setString(6, dao.getMobile());
                ps.setString(7, dao.getPosition());
                System.out.println(dao.getName());
                int i = ps.executeUpdate();
                if (i > 0) {
                    b = true;
                }
            } catch (Exception e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return b;
    }

    public static List<EmployeeInformationDao> alldata() {
        List<EmployeeInformationDao> l = new ArrayList<>();
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "select * from  employee";

            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    EmployeeInformationDao e = new EmployeeInformationDao();
                    e.setEmployeeId(rs.getInt("Employeeid"));
                    e.setPassword(rs.getString("password"));
                    e.setName(rs.getString("name"));
                    e.setEmail(rs.getString("email"));
                    e.setDob(rs.getString("dob"));
                    e.setSalary(rs.getString("salary"));
                    e.setMobile(rs.getString("phone"));
                     e.setPosition(rs.getString("position"));
                    l.add(e);
//            System.out.println(dao.getName());
                }

            } catch (Exception e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return l;
    }
     public static int getCount() {
        
        Connection con = GetConnection.getConnectin();
        int count=0;
        if (con != null) {
            String sql = "select * from  employee";
            
            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    count++;
                }

            } catch (Exception e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return count;
    }
}
