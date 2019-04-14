package com.peace.pms.entity.sys;

public class Pro_man {
    private Integer pid;

    private Integer mid;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    @Override
    public String toString() {
        return "Pro_man{" +
                "pid=" + pid +
                ", mid=" + mid +
                '}';
    }
}