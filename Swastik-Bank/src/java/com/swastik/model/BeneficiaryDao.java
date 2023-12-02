package com.swastik.model;

/**
 *
 * @author Sohan_Maali
 */
public class BeneficiaryDao {

    private int beneId;
    private String name;
    private int custAccNum;

    public int getCustAccNum() {
        return custAccNum;
    }

    public void setCustAccNum(int custAccNum) {
        this.custAccNum = custAccNum;
    }
    private String Bank;
    private String ifsc;
    private String accNum;
    private String limit;

    public int getBeneId() {
        return beneId;
    }

    public void setBeneId(int beneId) {
        this.beneId = beneId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBank() {
        return Bank;
    }

    public void setBank(String Bank) {
        this.Bank = Bank;
    }

    public String getIfsc() {
        return ifsc;
    }

    public void setIfsc(String ifsc) {
        this.ifsc = ifsc;
    }

    public String getAccNum() {
        return accNum;
    }

    public void setAccNum(String accNum) {
        this.accNum = accNum;
    }

    public String getLimit() {
        return limit;
    }

    public void setLimit(String limit) {
        this.limit = limit;
    }
}
