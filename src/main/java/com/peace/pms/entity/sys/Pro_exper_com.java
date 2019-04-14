package com.peace.pms.entity.sys;

public class Pro_exper_com {
    private Integer pid;

    private Integer eid;

    private Integer cid;

    private String suggestion;

    private String pdeclare;

    private Double score;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getSuggestion() {
        return suggestion;
    }

    public void setSuggestion(String suggestion) {
        this.suggestion = suggestion == null ? null : suggestion.trim();
    }

    public String getPdeclare() {
        return pdeclare;
    }

    public void setPdeclare(String pdeclare) {
        this.pdeclare = pdeclare == null ? null : pdeclare.trim();
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public Pro_exper_com(Integer pid, Integer eid, Integer cid) {
        this.pid = pid;
        this.eid = eid;
        this.cid = cid;
    }

    public Pro_exper_com(Integer pid, Integer cid, String pdeclare) {
        this.pid = pid;
        this.cid = cid;
        this.pdeclare = pdeclare;
    }

    public Pro_exper_com() {

    }

    @Override
    public String toString() {
        return "Pro_exper_com{" +
                "pid=" + pid +
                ", eid=" + eid +
                ", cid=" + cid +
                ", suggestion='" + suggestion + '\'' +
                ", pdeclare='" + pdeclare + '\'' +
                ", score=" + score +
                '}';
    }
}