package com.swastik.model;

import java.security.Timestamp;

/**
 *
 * @author Sohan_Maali
 */
public class ReportDao {

    private int reportId;
    private int custId;
    private String reportType;
    private Timestamp Report_date;

    public int getReportId() {
        return reportId;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    public int getCustId() {
        return custId;
    }

    public void setCustId(int custId) {
        this.custId = custId;
    }

    public String getReportType() {
        return reportType;
    }

    public void setReportType(String reportType) {
        this.reportType = reportType;
    }

    public Timestamp getReport_date() {
        return Report_date;
    }

    public void setReport_date(Timestamp Report_date) {
        this.Report_date = Report_date;
    }

    public String getReportStatus() {
        return reportStatus;
    }

    public void setReportStatus(String reportStatus) {
        this.reportStatus = reportStatus;
    }

    public String getReportSolution() {
        return reportSolution;
    }

    public void setReportSolution(String reportSolution) {
        this.reportSolution = reportSolution;
    }
    private String reportStatus;
    private String reportSolution;
}
