package com.mt.model;

import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/5/14 0014.
 */
@Document(collection = "userdw")
public class User implements Serializable {
    private Integer userid;
    private String username;
    private String userpass;
    private String userdate;
    private String userip;
    private String ztid;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }

    public String getUserdate() {
        return userdate;
    }

    public void setUserdate(String userdate) {
        this.userdate = userdate;
    }

    public String getUserip() {
        return userip;
    }

    public void setUserip(String userip) {
        this.userip = userip;
    }

    public String getZtid() {
        return ztid;
    }

    public void setZtid(String ztid) {
        this.ztid = ztid;
    }

    public User(Integer userid, String username, String userpass, String userdate, String userip, String ztid) {
        this.userid = userid;
        this.username = username;
        this.userpass = userpass;
        this.userdate = userdate;
        this.userip = userip;
        this.ztid = ztid;
    }

    public User() {

    }
}
