package com.swastik.model;

import java.io.Serializable;
import java.security.Timestamp;

public class EmployeeInformationDao implements Serializable {

    private int employeeId;
    private String password;
    private String name;
    private String email;
    private String dob;
    private Timestamp doh;

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
    private String salary;
    private String mobile;

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Timestamp getDoh() {
        return doh;
    }

    public void setDoh(Timestamp doh) {
        this.doh = doh;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
