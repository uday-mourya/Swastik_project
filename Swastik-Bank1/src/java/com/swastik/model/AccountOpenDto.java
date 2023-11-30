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
public class CustomerOpenDto {

    public boolean accountOpean(CustomerOpenDao cdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String query = "insert into customer(password, name, father, mother, gender, dob, phone, email, adhar, pan, maritail, occupation, address, city, pincode, state) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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

                psmt.executeUpdate();
                flag = true;

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean customerLogin(CustomerOpenDao cdao) {

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
                System.out.println(e + "-------------");
            }
        }
        return flag;
    }

}
