package com.swastik.dao;

import java.io.Serializable;

public class LoanInformationDao implements Serializable {

    private int loanId, accountNumber;
    private float loanAmount, intrastRate;

    public int getLoanId() {
        return loanId;
    }

    public LoanInformationDao() {
    }

    public void setLoanId(int loanId) {
        this.loanId = loanId;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public float getLoanAmount() {
        return loanAmount;
    }

    public void setLoanAmount(float loanAmount) {
        this.loanAmount = loanAmount;
    }

    public float getIntrastRate() {
        return intrastRate;
    }

    public void setIntrastRate(float intrastRate) {
        this.intrastRate = intrastRate;
    }
}
