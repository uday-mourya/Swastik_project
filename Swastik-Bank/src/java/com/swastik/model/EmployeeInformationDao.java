package com.swastik.model;

import java.io.Serializable;
import java.security.Timestamp;

public class EmployeeInformationDao implements Serializable {

    private int employeeId;
     private String fullname;
     
       private String email;
    private String password;
    private String phone;
    private String adhar;
     private String pancard;
      private String image;
       private Timestamp doh;
    private String dob;
   private String salary;
    private String oldpassword;
    private String position;

    public EmployeeInformationDao() {
    }

    public EmployeeInformationDao(int employeeId, String fullname, String email, String password, String phone, String adhar, String pancard, String image, Timestamp doh, String dob, String salary, String oldpassword, String position) {
        this.employeeId = employeeId;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.adhar = adhar;
        this.pancard = pancard;
        this.image = image;
        this.doh = doh;
        this.dob = dob;
        this.salary = salary;
        this.oldpassword = oldpassword;
        this.position = position;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAdhar() {
        return adhar;
    }

    public void setAdhar(String adhar) {
        this.adhar = adhar;
    }

    public String getPancard() {
        return pancard;
    }

    public void setPancard(String pancard) {
        this.pancard = pancard;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Timestamp getDoh() {
        return doh;
    }

    public void setDoh(Timestamp doh) {
        this.doh = doh;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getOldpassword() {
        return oldpassword;
    }

    public void setOldpassword(String oldpassword) {
        this.oldpassword = oldpassword;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
   
  
    
    

}