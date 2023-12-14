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

/**
 *
 * @author Hp
 */
public class ActivationRequestDto {
    
     public ArrayList<ActivationRequestDao> ActivationRequest() {
        ArrayList<ActivationRequestDao> activerequest = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
//                System.out.println("id"+anDao.getCustomerId());sssssssss
//             String sql= "SELECT customer.*,account.Account_Num,account.Account_Type,account.Current_Balance,branch.Branchid,branch.ifsc,branch.Branch_name,branch.Branch_Address FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid WHERE customer.customerid = your_customerid"; 
    //           String sql="SELECT customer.*, account.Account_Num, account.Account_Type, account.Current_Balance, branch.Branchid, branch.ifsc, branch.Branch_name, branch.Branch_Address,ActivationRequest.Pancard,ActivationRequest.Account_Num.ActivationRequest.name FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid JOIN accoun.Account_Num = ActivationRequest.Account_Num";
           
    
   String sql=" SELECT customer.*, account.Account_Num, account.Account_Type,account.Current_Balance, branch.Branchid, branch.ifsc,branch.Branch_name, branch.Branch_Address,ActivationRequest.Pancard FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid JOIN ActivationRequest ON account.Account_Num = ActivationRequest.Account_Num";

                PreparedStatement psmt = con.prepareStatement(sql);
               // psmt.setInt(1, anDao.getAccNum());
               
//                psmt.setInt(1, setCustAccNum());

                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    ActivationRequestDao aDao = new ActivationRequestDao();
                    
                
                    
                   aDao.setCustomerId(set.getInt("customerId"));
                   System.out.println(set.getInt("customerId"));
                    aDao.setPassword(set.getString("password"));
                    System.out.println(set.getString("password"));
                    aDao.setName(set.getString("name"));
                    System.out.println(set.getString("name"));
                    aDao.setFather(set.getString("father"));
                     System.out.println(set.getString("father"));
                    aDao.setMother(set.getString("mother"));
                     System.out.println(set.getString("mother"));
                    aDao.setGender(set.getString("gender"));
                    aDao.setDob(set.getString("dob"));
                    aDao.setMobile(set.getString("phone"));
                    aDao.setEmail(set.getString("email"));
                    aDao.setAdhar(set.getString("adhar"));
//                  aDao.setDateTime(set.getTimestamp("time"));
//                  java.sql.Timestamp aDao.setRegiDate(set.getTimestamp("registerdate"));
                    aDao.setPan(set.getString("pan"));
                    aDao.setMaritail(set.getString("maritail"));
                    aDao.setOccupation(set.getString("occupation"));
                    aDao.setAddress(set.getString("address"));
                    aDao.setCity(set.getString("city"));
                    aDao.setDistric(set.getString("distric"));
                    aDao.setPincode(set.getString("pincode"));
                    aDao.setState(set.getString("state"));
                    
//                    aDao.setImage(set.getString("image"));
                   aDao.setAccNum(set.getInt("Account_Num"));
                   aDao.setAccType(set.getString("Account_Type"));
                   aDao.setCurrentBalance(set.getInt("Current_Balance"));
                   aDao.setBranchId(set.getInt("Branchid"));
                   aDao.setAccStatus("Account_Status");
                
//                   aDao.setBranchId(set.getInt("Branchid"));
                   
                   
                    activerequest.add(aDao);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return activerequest;
    }


    
}
