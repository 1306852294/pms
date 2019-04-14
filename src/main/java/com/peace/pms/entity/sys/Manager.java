package com.peace.pms.entity.sys;

public class Manager {
    private Integer mid;

    private Integer mnum;

    private String password;

    private String mname;

    private String msex;

    private String mcard;

    private String mphone;

    private String mcompany;

    private String mdepartment;

    private String mfox;

    private String memail;

    @Override
    public String toString() {
        return "Manager{" +
                "mid=" + mid +
                ", mnum=" + mnum +
                ", password='" + password + '\'' +
                ", mname='" + mname + '\'' +
                ", msex='" + msex + '\'' +
                ", mcard='" + mcard + '\'' +
                ", mphone='" + mphone + '\'' +
                ", mcompany='" + mcompany + '\'' +
                ", mdepartment='" + mdepartment + '\'' +
                ", mfox='" + mfox + '\'' +
                ", memail='" + memail + '\'' +
                '}';
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public Integer getMnum() {
        return mnum;
    }

    public void setMnum(Integer mnum) {
        this.mnum = mnum;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getMsex() {
        return msex;
    }

    public void setMsex(String msex) {
        this.msex = msex == null ? null : msex.trim();
    }

    public String getMcard() {
        return mcard;
    }

    public void setMcard(String mcard) {
        this.mcard = mcard == null ? null : mcard.trim();
    }

    public String getMphone() {
        return mphone;
    }

    public void setMphone(String mphone) {
        this.mphone = mphone == null ? null : mphone.trim();
    }

    public String getMcompany() {
        return mcompany;
    }

    public void setMcompany(String mcompany) {
        this.mcompany = mcompany == null ? null : mcompany.trim();
    }

    public String getMdepartment() {
        return mdepartment;
    }

    public void setMdepartment(String mdepartment) {
        this.mdepartment = mdepartment == null ? null : mdepartment.trim();
    }

    public String getMfox() {
        return mfox;
    }

    public void setMfox(String mfox) {
        this.mfox = mfox == null ? null : mfox.trim();
    }

    public String getMemail() {
        return memail;
    }

    public void setMemail(String memail) {
        this.memail = memail == null ? null : memail.trim();
    }
}