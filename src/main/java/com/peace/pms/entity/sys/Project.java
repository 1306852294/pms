package com.peace.pms.entity.sys;

public class Project {
    private Integer pid;

    private String pname;

    private Integer cid;

    private String pcross;

    private String rank;

    private String type;

    private String mode;

    private String builde;

    private String start;

    private String preEnd;

    private String end;

    private String state;

    private String relesePower;

    private String rulePower;

    private String content;

    @Override
    public String toString() {
        return "Project{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", cid=" + cid +
                ", pcross='" + pcross + '\'' +
                ", rank='" + rank + '\'' +
                ", type='" + type + '\'' +
                ", mode='" + mode + '\'' +
                ", builde='" + builde + '\'' +
                ", start='" + start + '\'' +
                ", preEnd='" + preEnd + '\'' +
                ", end='" + end + '\'' +
                ", state='" + state + '\'' +
                ", relesePower='" + relesePower + '\'' +
                ", rulePower='" + rulePower + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getPcross() {
        return pcross;
    }

    public void setPcross(String pcross) {
        this.pcross = pcross == null ? null : pcross.trim();
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank == null ? null : rank.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode == null ? null : mode.trim();
    }

    public String getBuilde() {
        return builde;
    }

    public void setBuilde(String builde) {
        this.builde = builde == null ? null : builde.trim();
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start == null ? null : start.trim();
    }

    public String getPreEnd() {
        return preEnd;
    }

    public void setPreEnd(String preEnd) {
        this.preEnd = preEnd == null ? null : preEnd.trim();
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end == null ? null : end.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getRelesePower() {
        return relesePower;
    }

    public void setRelesePower(String relesePower) {
        this.relesePower = relesePower == null ? null : relesePower.trim();
    }

    public String getRulePower() {
        return rulePower;
    }

    public void setRulePower(String rulePower) {
        this.rulePower = rulePower == null ? null : rulePower.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {

        this.content = content == null ? null : content.trim();
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((builde == null) ? 0 : builde.hashCode());
        result = prime * result + ((cid == null) ? 0 : cid.hashCode());
        result = prime * result + ((end == null) ? 0 : end.hashCode());
        result = prime * result + ((mode == null) ? 0 : mode.hashCode());
        result = prime * result + ((pcross == null) ? 0 : pcross.hashCode());
        result = prime * result + ((pid == null) ? 0 : pid.hashCode());
        result = prime * result + ((pname == null) ? 0 : pname.hashCode());
        result = prime * result + ((preEnd == null) ? 0 : preEnd.hashCode());
        result = prime * result + ((rank == null) ? 0 : rank.hashCode());
        result = prime * result + ((relesePower == null) ? 0 : relesePower.hashCode());
        result = prime * result + ((rulePower == null) ? 0 : rulePower.hashCode());
        result = prime * result + ((start == null) ? 0 : start.hashCode());
        result = prime * result + ((state == null) ? 0 : state.hashCode());
        result = prime * result + ((type == null) ? 0 : type.hashCode());
        return result;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Project other = (Project) obj;
        if (builde == null) {
            if (other.builde != null)
                return false;
        } else if (!builde.equals(other.builde))
            return false;
        if (cid == null) {
            if (other.cid != null)
                return false;
        } else if (!cid.equals(other.cid))
            return false;
        if (end == null) {
            if (other.end != null)
                return false;
        } else if (!end.equals(other.end))
            return false;
        if (mode == null) {
            if (other.mode != null)
                return false;
        } else if (!mode.equals(other.mode))
            return false;
        if (pcross == null) {
            if (other.pcross != null)
                return false;
        } else if (!pcross.equals(other.pcross))
            return false;
        if (pid == null) {
            if (other.pid != null)
                return false;
        } else if (!pid.equals(other.pid))
            return false;
        if (pname == null) {
            if (other.pname != null)
                return false;
        } else if (!pname.equals(other.pname))
            return false;
        if (preEnd == null) {
            if (other.preEnd != null)
                return false;
        } else if (!preEnd.equals(other.preEnd))
            return false;
        if (rank == null) {
            if (other.rank != null)
                return false;
        } else if (!rank.equals(other.rank))
            return false;
        if (relesePower == null) {
            if (other.relesePower != null)
                return false;
        } else if (!relesePower.equals(other.relesePower))
            return false;
        if (rulePower == null) {
            if (other.rulePower != null)
                return false;
        } else if (!rulePower.equals(other.rulePower))
            return false;
        if (start == null) {
            if (other.start != null)
                return false;
        } else if (!start.equals(other.start))
            return false;
        if (state == null) {
            if (other.state != null)
                return false;
        } else if (!state.equals(other.state))
            return false;
        if (type == null) {
            if (other.type != null)
                return false;
        } else if (!type.equals(other.type))
            return false;
        return true;
    }



}