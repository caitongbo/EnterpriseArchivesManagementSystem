package com.enterpriseams.entity;

import java.util.Date;

public class Destroy {
    private Integer destroyid;

    private String archiveid;

    private String loginid;

    private Date destroytime;

    private String reason;

    private String remark;

    public Integer getDestroyid() {
        return destroyid;
    }

    public void setDestroyid(Integer destroyid) {
        this.destroyid = destroyid;
    }

    public String getArchiveid() {
        return archiveid;
    }

    public void setArchiveid(String archiveid) {
        this.archiveid = archiveid;
    }

    public String getLoginid() {
        return loginid;
    }

    public void setLoginid(String loginid) {
        this.loginid = loginid;
    }

    public Date getDestroytime() {
        return destroytime;
    }

    public void setDestroytime(Date destroytime) {
        this.destroytime = destroytime;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}