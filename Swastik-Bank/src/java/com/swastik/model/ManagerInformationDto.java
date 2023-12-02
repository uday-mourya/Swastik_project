
package com.swastik.model;


import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ManagerInformationDto {
    public boolean login(ManagerInformationDao dao) {
        boolean b= false;
        Connection con = GetConnection.getConnectin();
        String sql = "Select * From manager where email=? and password=? ";
        try {            
          
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, dao.getEmail());
            ps.setString(2,dao.getPassword());           
            ResultSet rs = ps.executeQuery();
           if(rs.next()){
               
               //dao.setDoh(rs.getString("doh"));
               dao.setPassword(rs.getString("password"));
               dao.setName(rs.getString("name"));
               dao.setEmail(rs.getString("email"));
               dao.setDob(rs.getString("dob"));
               dao.setDob(rs.getString("salary"));           
               dao.setMobile(rs.getString("phone"));
               b=true;
            }
        } 
        catch(SQLException ex){
            System.out.println(""+ex);
        }
             return b;
    }
     
      public boolean regist(ManagerInformationDao dao) {
        boolean b = false;
         Connection con=GetConnection.getConnectin();
         if(con!=null){
        String sql = "insert into manager(password,name,email,dob,salary,phone)values(?,?,?,?,?,?)";
        try {
            
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, dao.getPassword());
            ps.setString(2, dao.getName());
            ps.setString(3, dao.getEmail());
            ps.setString(4, dao.getDob());
            ps.setString(5, dao.getSalary());           
            ps.setString(6, dao.getMobile());
            System.out.println(dao.getName());
            int i = ps.executeUpdate();
            if (i > 0) {
                b = true;
            }
        } catch (Exception e) {
            System.out.println(""+e);
        }
         }
         else{
             System.out.println("connection not stablished");
         }
        return b;
    }
}
