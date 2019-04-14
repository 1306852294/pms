package com.peace.pms.entity.sys;

public class Query {
  
	 private String pro_Name;

	 private Integer eid;

	 private Integer pid;
	 
	 //当前页码数
	 private Integer page = 1;
	 //数据库从哪一条数据开始查
	 private Integer start;
	 //每页显示数据条数
	 private Integer rows = 9;
	
	 public String getPro_Name() {
		return pro_Name;
	}
	public void setPro_Name(String pro_Name) {
		this.pro_Name = pro_Name;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }
}
