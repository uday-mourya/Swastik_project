package com.swastik.model;

import java.security.Timestamp;

/**
 *
 * @author Sohan_Maali
 */
public class TransactionInformationDao {

    private int tranid;
    private int accNum;
    private String Amount;
    Timestamp tranDate;
    private String tranType;
    private String description;
    private String tranStatus;
    private String receAccNum;

    public int getTranid() {
        return tranid;
    }

    public void setTranid(int tranid) {
        this.tranid = tranid;
    }

    public int getAccNum() {
        return accNum;
    }

    public void setAccNum(int accNum) {
        this.accNum = accNum;
    }

    public String getAmount() {
        return Amount;
    }

    public void setAmount(String Amount) {
        this.Amount = Amount;
    }

    public Timestamp getTranDate() {
        return tranDate;
    }

    public void setTranDate(Timestamp tranDate) {
        this.tranDate = tranDate;
    }

    public String getTranType() {
        return tranType;
    }

    public void setTranType(String tranType) {
        this.tranType = tranType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTranStatus() {
        return tranStatus;
    }

    public void setTranStatus(String tranStatus) {
        this.tranStatus = tranStatus;
    }

    public String getReceAccNum() {
        return receAccNum;
    }

    public void setReceAccNum(String receAccNum) {
        this.receAccNum = receAccNum;
    }

    public String getIfsc() {
        return Ifsc;
    }

    public void setIfsc(String Ifsc) {
        this.Ifsc = Ifsc;
    }
    private String Ifsc;
}
