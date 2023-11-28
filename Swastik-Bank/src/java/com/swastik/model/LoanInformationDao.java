package com.swastik.model;

import java.io.Serializable;

public class LoanInformationDao implements Serializable {

    private int loanId;
    private int name;
    private int intrest;
    private int duration;

    public int getLoanId() {
        return loanId;
    }

    public LoanInformationDao() {
    }

    public int getName() {
        return name;
    }

    public void setName(int name) {
        this.name = name;
    }

    public int getIntrest() {
        return intrest;
    }

    public void setIntrest(int intrest) {
        this.intrest = intrest;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public void setLoanId(int loanId) {
        this.loanId = loanId;
    }

}
