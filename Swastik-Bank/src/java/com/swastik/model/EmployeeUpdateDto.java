/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hp
 */
public class EmployeeUpdateDto {
    
    
       
   public ArrayList<EmployeeUpdateDao> UpdationRequest() {
        ArrayList<EmployeeUpdateDao> updation = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
//                System.out.println("id"+anDao.getCustomerId());sssssss
            String sql="Select * from updationrequest";
                PreparedStatement psmt = con.prepareStatement(sql);
               // psmt.setInt(1, anDao.getAccNum());
               
//                psmt.setInt(1, setCustAccNum());

                ResultSet e = psmt.executeQuery();
                while (e.next()) {
                    EmployeeUpdateDao eDao = new EmployeeUpdateDao();
                    eDao.setUpdationid(e.getInt("updationid"));
                    eDao.setAcc_number(e.getInt("Acc_number"));
                    System.out.println(e.getInt("Acc_number"));
                    eDao.setName(e.getString("Name"));
                    eDao.setFather_Name(e.getString("Father_Name"));
                    eDao.setMother_Name(e.getString("Mother_Name"));
                    eDao.setGender(e.getString("Gender"));
                    eDao.setDOB(e.getString("DOB"));
                    eDao.setMarital(e.getString("marital"));
                    eDao.setEmail(e.getString("Email"));
                    eDao.setMobile(e.getString("mobile"));
                    eDao.setAddress(e.getString("address"));
                    eDao.setCity(e.getString("city"));
                    eDao.setDistrict(e.getString("district"));
                    eDao.setState(e.getString("state"));
                    eDao.setPincode(e.getString("pincode"));
                    eDao.setNominee_name(e.getString("nominee_name"));
                    eDao.setNominee_Father(e.getString("nominee_Father"));
                    eDao.setNominee_mobile(e.getString("nominee_mobile"));
                    eDao.setNominee_email(e.getString("nominee_email"));
                    eDao.setNominee_Adhar(e.getString("nominee_Aadhar"));
                     System.out.println(e.getString("nominee_Aadhar"));
              
                    updation.add(eDao);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return updation;
    }

   
    public ArrayList<EmployeeUpdateDao> UpdationRequest1(int Acc_number) {
        ArrayList<EmployeeUpdateDao> updation1 = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
//                System.out.println("id"+anDao.getCustomerId());sssssss
            String sql="Select * from updationrequest";
                PreparedStatement psmt = con.prepareStatement(sql);
               // psmt.setInt(1, anDao.getAccNum());
               
//                psmt.setInt(1, setCustAccNum());

                ResultSet e = psmt.executeQuery();
                while (e.next()) {
                    EmployeeUpdateDao eDao = new EmployeeUpdateDao();
                    eDao.setUpdationid(e.getInt("updationid"));
                    eDao.setAcc_number(e.getInt("Acc_number"));
                    System.out.println(e.getInt("Acc_number"));
                    eDao.setName(e.getString("Name"));
                    eDao.setFather_Name(e.getString("Father_Name"));
                    eDao.setMother_Name(e.getString("Mother_Name"));
                    eDao.setGender(e.getString("Gender"));
                    eDao.setDOB(e.getString("DOB"));
                    eDao.setMarital(e.getString("marital"));
                    eDao.setEmail(e.getString("Email"));
                    eDao.setMobile(e.getString("mobile"));
                    eDao.setAddress(e.getString("address"));
                    eDao.setCity(e.getString("city"));
                    eDao.setDistrict(e.getString("district"));
                    eDao.setState(e.getString("state"));
                    eDao.setPincode(e.getString("pincode"));
                    eDao.setNominee_name(e.getString("nominee_name"));
                    eDao.setNominee_Father(e.getString("nominee_Father"));
                    eDao.setNominee_mobile(e.getString("nominee_mobile"));
                    eDao.setNominee_email(e.getString("nominee_email"));
                    eDao.setNominee_Adhar(e.getString("nominee_Aadhar"));
                     System.out.println(e.getString("nominee_Aadhar"));
              
                    updation1.add(eDao);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return updation1;
    }

}
