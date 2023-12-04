package com.swastik.model;

import java.io.Serializable;

public class LoanInformationDao implements Serializable {

    private int loanId;
    private String name;
    private String intrest;
    private String duration;

    public int getLoanId() {
        return loanId;
    }

    public LoanInformationDao() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntrest() {
        return intrest;
    }

    public void setIntrest(String intrest) {
        this.intrest = intrest;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public void setLoanId(int loanId) {
        this.loanId = loanId;
    }
}
