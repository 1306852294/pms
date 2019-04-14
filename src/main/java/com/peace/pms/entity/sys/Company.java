package com.peace.pms.entity.sys;

public class Company {
    private Integer cid;

    private Integer registernum;

    private String password;

    private String cname;

    private String cphone;

    private String cnameManager;

    private String csex;

    private String ccard;

    private String model;

    private String regisTime;

    private String prange;

    private String ctype;

    private String email;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getRegisternum() {
        return registernum;
    }

    public void setRegisternum(Integer registernum) {
        this.registernum = registernum;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone == null ? null : cphone.trim();
    }

    public String getCnameManager() {
        return cnameManager;
    }

    public void setCnameManager(String cnameManager) {
        this.cnameManager = cnameManager == null ? null : cnameManager.trim();
    }

    public String getCsex() {
        return csex;
    }

    public void setCsex(String csex) {
        this.csex = csex == null ? null : csex.trim();
    }

    public String getCcard() {
        return ccard;
    }

    public void setCcard(String ccard) {
        this.ccard = ccard == null ? null : ccard.trim();
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model == null ? null : model.trim();
    }

    public String getRegisTime() {
        return regisTime;
    }

    public void setRegisTime(String regisTime) {
        this.regisTime = regisTime == null ? null : regisTime.trim();
    }

    public String getPrange() {
        return prange;
    }

    public void setPrange(String prange) {
        this.prange = prange == null ? null : prange.trim();
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype == null ? null : ctype.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {

        this.email = email == null ? null : email.trim();
    }

    @Override
    public String toString() {
        return "Company{" +
                "cid=" + cid +
                ", registernum=" + registernum +
                ", password='" + password + '\'' +
                ", cname='" + cname + '\'' +
                ", cphone='" + cphone + '\'' +
                ", cnameManager='" + cnameManager + '\'' +
                ", csex='" + csex + '\'' +
                ", ccard='" + ccard + '\'' +
                ", model='" + model + '\'' +
                ", regisTime='" + regisTime + '\'' +
                ", prange='" + prange + '\'' +
                ", ctype='" + ctype + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}