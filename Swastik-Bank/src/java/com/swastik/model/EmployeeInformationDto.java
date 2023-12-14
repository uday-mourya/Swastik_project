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
public class EmployeeInformationDto {

    public boolean login(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();

        try {
            String sql = "select * from employee where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, edao.getEmail());
            ps.setString(2, edao.getPassword());
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                edao.setFullname(rs.getString("name"));
                edao.setDob(rs.getString("dob"));
                edao.setPhone("phone");
                edao.setEmail("email");
                b = true;

            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return b;

    }

    public boolean updatePassword(EmployeeInformationDao edao, String newPassword) {
        boolean success = false;
        Connection con = GetConnection.getConnectin();
        System.out.println(";dkfsl;glfdjslkj");
        try {

            //  if (login(edao)) {
            System.out.println("1;dkfsl;glfdjslkj");
            String sql = "UPDATE employee SET password = ? WHERE email = ?";
            System.out.println(";dkfsl;glfdjslkj1");
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setString(1, newPassword);
                ps.setString(2, edao.getEmail());
                System.out.println(";dkfsl;glfdjslkj2");
                int i = ps.executeUpdate();
                System.out.println(";dkfsl;glfdjslkj3");
                if (i > 0) {
                    success = true;
                }
            }
            //}
        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {

        }

        return success;
    }

    public List<EmployeeInformationDao> getAllProducts() {
        List<EmployeeInformationDao> productList = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            String sql = "SELECT * FROM employee";

            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("employeeId");
                    String password = rs.getString("password");
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String dob = rs.getString("dob");
                    String phone = rs.getString("phone");
                    java.sql.Timestamp doh = rs.getTimestamp("doh");
                    String salary = rs.getString("salary");

                    // Create EmployeeInformationDao object and set values
                    EmployeeInformationDao em = new EmployeeInformationDao();
                    em.setEmployeeId(id); // Set int directly
                    em.setPassword(password);
                    em.setFullname(name);
                    em.setEmail(email);
                    em.setDob(dob);
                    em.setPhone(phone);
                    em.setSalary(salary);
//                System.out.println(""+id);

                    productList.add(em);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }

        return productList;

    }

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
            } catch (SQLException e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return b;
    }

    public static List<EmployeeInformationDao> employeeAlldata() {
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
                    e.setFullname(rs.getString("name"));
                    e.setEmail(rs.getString("email"));
                    e.setDob(rs.getString("dob"));
                    e.setSalary(rs.getString("salary"));
                    e.setMobile(rs.getString("phone"));
                    e.setPosition(rs.getString("position"));
                    l.add(e);
//            System.out.println(dao.getName());
                }

            } catch (SQLException e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return l;
    }

    public static int getCount() {

        Connection con = GetConnection.getConnectin();
        int count = 0;
        if (con != null) {
            String sql = "select * from  employee";

            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    count++;
                }

            } catch (SQLException e) {
                System.out.println("" + e);
            }
        }
        return count;

    }

    public boolean EmployeeInformation(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String sql = "insert into employeerequest(fullname,email,password,phone,adhar,pancard,dob)values(?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, edao.getFullname());

                ps.setString(2, edao.getEmail());
                ps.setString(3, edao.getPassword());
                ps.setString(4, edao.getPhone());
                ps.setString(5, edao.getAdhar());
                ps.setString(6, edao.getPancard());
//               ps.setString(7, edao.getImage());
                ps.setString(7, edao.getDob());
                System.out.println("" + edao.getDob());

                if (ps.executeUpdate() > 0) {

                    b = true;
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return b;
    }
}
    
   
    

   

     
  










