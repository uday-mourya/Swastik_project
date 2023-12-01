package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sohan_Maali
 */
public class AccountOpenDto {

    public boolean accountOpean(AccountOpenDao cdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "insert into customer(password, name, father, mother, gender, dob, phone, email, adhar, pan, maritail, occupation, address, city, pincode, state, distric) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, cdao.getPassword());
                psmt.setString(2, cdao.getName());
                psmt.setString(3, cdao.getFather());
                psmt.setString(4, cdao.getMother());
                psmt.setString(5, cdao.getGender());
                psmt.setString(6, cdao.getDob());
                psmt.setString(7, cdao.getMobile());
                psmt.setString(8, cdao.getEmail());
                psmt.setString(9, cdao.getAdhar());
                psmt.setString(10, cdao.getPan());
                psmt.setString(11, cdao.getMaritail());
                psmt.setString(12, cdao.getOccupation());
                psmt.setString(13, cdao.getAddress());
                psmt.setString(14, cdao.getCity());
                psmt.setString(15, cdao.getPincode());
                psmt.setString(16, cdao.getState());
                psmt.setString(17, cdao.getState());

                psmt.executeUpdate();
                flag = true;

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean accountDetail(AccountOpenDao cdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "insert into account(customer_id, Account_Type, Current_Balance, Branch_id, Account_Status) values(?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, cdao.getCustomerId());
                psmt.setString(2, cdao.getAccType());
                double amount = cdao.getBalance();
                psmt.setString(3, Double.toString(amount));
                psmt.setInt(4, cdao.getBranchId());
                psmt.setString(5, cdao.getAccStatus());
                psmt.executeUpdate();
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean accountOpenProcess(AccountOpenDao cdao) {
        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
                String query = "select * from customer where email = ? and password = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, cdao.getEmail());
                psmt.setString(2, cdao.getPassword());

                ResultSet set = psmt.executeQuery();
                while (set.next()) {

                    cdao.setCustomerId(set.getInt(1));
                    cdao.setPassword(set.getString("password"));
                    cdao.setName(set.getString("name"));
                    cdao.setFather(set.getString("father"));
                    cdao.setMother(set.getString("mother"));
                    cdao.setGender(set.getString("gender"));
                    cdao.setDob(set.getString("dob"));
                    cdao.setMobile(set.getString("phone"));
                    cdao.setEmail(set.getString("email"));
//                    cdao.setRegiDate(set.getTimestamp("registerdate"));
                    cdao.setMaritail(set.getString("maritail"));
                    cdao.setOccupation(set.getString("occupation"));
                    cdao.setAddress(set.getString("address"));
                    cdao.setCity(set.getString("city"));
                    cdao.setPincode(set.getString("pincode"));
                    cdao.setState(set.getString("state"));
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean customerLogin(AccountOpenDao cdao) {
        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
                String query = "select * from customer where email = ? and password = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, cdao.getEmail());
                psmt.setString(2, cdao.getPassword());
                ResultSet set = psmt.executeQuery();
                while (set.next()) {

                    cdao.setCustomerId(set.getInt(1));
                    cdao.setPassword(set.getString("password"));
                    cdao.setName(set.getString("name"));
                    cdao.setFather(set.getString("father"));
                    cdao.setMother(set.getString("mother"));
                    cdao.setGender(set.getString("gender"));
                    cdao.setDob(set.getString("dob"));
                    cdao.setMobile(set.getString("phone"));
                    cdao.setEmail(set.getString("email"));
//                    cdao.setRegiDate(set.getTimestamp("registerdate"));
                    cdao.setMaritail(set.getString("maritail"));
                    cdao.setOccupation(set.getString("occupation"));
                    cdao.setAddress(set.getString("address"));
                    cdao.setCity(set.getString("city"));
                    cdao.setPincode(set.getString("pincode"));
                    cdao.setState(set.getString("state"));
//                    ============================================================

                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e + "-------------");
            }
        }
        return flag;
    }

    public boolean customerLoginProcess(AccountOpenDao cdao) {
        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
                String query = "select * from account where customer_id = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, cdao.getCustomerId());
                ResultSet set = psmt.executeQuery();
                while (set.next()) {

                    cdao.setAccNum(set.getInt("Account_Num"));
                    cdao.setAccType(set.getString("Account_Type"));
                    cdao.setBalance(Double.parseDouble(set.getString("Current_Balance")));
                    cdao.setBranch("");
                    cdao.setAccStatus(set.getString("Account_Status"));
//                    ============================================================

                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e );
            }
        }
        return flag;
    }

    public boolean deleteCustomer(AccountOpenDao cdao) {
//         delete from customer where customerid = ?;
        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
                String query = "delete from customer where customerid = ?;";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, cdao.getCustomerId());

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
