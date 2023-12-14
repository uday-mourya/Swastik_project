/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.model;

/**
 *
 * @author Hp
 */
public class EmployeeUpdateDao {
    private int updationid;
    private int Acc_number;
    private String Name;
    private String Father_Name;
    private String Mother_Name;
    private String Gender;
    private String DOB;
    private String marital;
    private String Email;
    private String Mobile;
    private String address;
    private String city;
    private String district;
    private String state ;
    private String pincode;
    private String nominee_name;
    private String nominee_Father;
    private String nominee_mobile;
    private String nominee_email;
    private String nominee_Adhar;

    public EmployeeUpdateDao() {
    }

    public EmployeeUpdateDao(int updationid,int Acc_number, String Name, String Father_Name, String Mother_Name, String Gender, String DOB, String marital, String Email, String Mobile, String address, String city, String district, String state, String pincode, String nominee_name, String nominee_Father, String nominee_mobile, String nominee_email, String nominee_Adhar) {
        this.Acc_number = Acc_number;
        this.Name = Name;
        this.Father_Name = Father_Name;
        this.Mother_Name = Mother_Name;
        this.Gender = Gender;
        this.DOB = DOB;
        this.marital = marital;
        this.Email = Email;
        this.Mobile = Mobile;
        this.address = address;
        this.city = city;
        this.district = district;
        this.state = state;
        this.pincode = pincode;
        this.nominee_name = nominee_name;
        this.nominee_Father = nominee_Father;
        this.nominee_mobile = nominee_mobile;
        this.nominee_email = nominee_email;
        this.nominee_Adhar = nominee_Adhar;
    }

    public int getUpdationid() {
        return updationid;
    }

    public void setUpdationid(int updationid) {
        this.updationid = updationid;
    }

    public EmployeeUpdateDao(int updationid) {
        this.updationid = updationid;
    }

    public int getAcc_number() {
        return Acc_number;
    }

    public void setAcc_number(int Acc_number) {
        this.Acc_number = Acc_number;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getFather_Name() {
        return Father_Name;
    }

    public void setFather_Name(String Father_Name) {
        this.Father_Name = Father_Name;
    }

    public String getMother_Name() {
        return Mother_Name;
    }

    public void setMother_Name(String Mother_Name) {
        this.Mother_Name = Mother_Name;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getMarital() {
        return marital;
    }

    public void setMarital(String marital) {
        this.marital = marital;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getMobile() {
        return Mobile;
    }

    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getNominee_name() {
        return nominee_name;
    }

    public void setNominee_name(String nominee_name) {
        this.nominee_name = nominee_name;
    }

    public String getNominee_Father() {
        return nominee_Father;
    }

    public void setNominee_Father(String nominee_Father) {
        this.nominee_Father = nominee_Father;
    }

    public String getNominee_mobile() {
        return nominee_mobile;
    }

    public void setNominee_mobile(String nominee_mobile) {
        this.nominee_mobile = nominee_mobile;
    }

    public String getNominee_email() {
        return nominee_email;
    }

    public void setNominee_email(String nominee_email) {
        this.nominee_email = nominee_email;
    }

    public String getNominee_Adhar() {
        return nominee_Adhar;
    }

    public void setNominee_Adhar(String nominee_Adhar) {
        this.nominee_Adhar = nominee_Adhar;
    }
    
}
