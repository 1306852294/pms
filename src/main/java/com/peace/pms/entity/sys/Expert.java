package com.peace.pms.entity.sys;

public class Expert {
    private Integer eid;

    private String ename;

    private String password;

    private String esex;

    private String ecard;

    private String enumber;

    private String ephone;

    private String eprovince;

    private String ecity;

    private String ecounty;

    private String eduction;

    private String email;

    private String company;

    private String edirection;

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename == null ? null : ename.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEsex() {
        return esex;
    }

    public void setEsex(String esex) {
        this.esex = esex == null ? null : esex.trim();
    }

    public String getEcard() {
        return ecard;
    }

    public void setEcard(String ecard) {
        this.ecard = ecard == null ? null : ecard.trim();
    }

    public String getEnumber() {
        return enumber;
    }

    public void setEnumber(String enumber) {
        this.enumber = enumber == null ? null : enumber.trim();
    }

    public String getEphone() {
        return ephone;
    }

    public void setEphone(String ephone) {
        this.ephone = ephone == null ? null : ephone.trim();
    }

    public String getEprovince() {
        return eprovince;
    }

    public void setEprovince(String eprovince) {
        this.eprovince = eprovince == null ? null : eprovince.trim();
    }

    public String getEcity() {
        return ecity;
    }

    public void setEcity(String ecity) {
        this.ecity = ecity == null ? null : ecity.trim();
    }

    public String getEcounty() {
        return ecounty;
    }

    public void setEcounty(String ecounty) {
        this.ecounty = ecounty == null ? null : ecounty.trim();
    }

    public String getEduction() {
        return eduction;
    }

    public void setEduction(String eduction) {
        this.eduction = eduction == null ? null : eduction.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company == null ? null : company.trim();
    }

    public String getEdirection() {
        return edirection;
    }

    public void setEdirection(String edirection) {
        this.edirection = edirection == null ? null : edirection.trim();
    }

    @Override
    public String toString() {
        return "Expert{" +
                "eid=" + eid +
                ", ename='" + ename + '\'' +
                ", password='" + password + '\'' +
                ", esex='" + esex + '\'' +
                ", ecard='" + ecard + '\'' +
                ", enumber='" + enumber + '\'' +
                ", ephone='" + ephone + '\'' +
                ", eprovince='" + eprovince + '\'' +
                ", ecity='" + ecity + '\'' +
                ", ecounty='" + ecounty + '\'' +
                ", eduction='" + eduction + '\'' +
                ", email='" + email + '\'' +
                ", company='" + company + '\'' +
                ", edirection='" + edirection + '\'' +
                '}';
    }
}