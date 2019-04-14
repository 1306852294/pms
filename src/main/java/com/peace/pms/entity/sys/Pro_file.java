package com.peace.pms.entity.sys;

public class Pro_file {
    private Integer pid;

    private String file;

    private String fileType;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file == null ? null : file.trim();
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType == null ? null : fileType.trim();
    }

    @Override
    public String toString() {
        return "Pro_file{" +
                "pid=" + pid +
                ", file='" + file + '\'' +
                ", fileType='" + fileType + '\'' +
                '}';
    }
}