package com.mt.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "UserAop")
public class Aop  {

      private String userpmam;
      private String userurl;

    public String getUserpmam() {
        return userpmam;
    }

    public void setUserpmam(String userpmam) {
        this.userpmam = userpmam;
    }

    public String getUserurl() {
        return userurl;
    }

    public void setUserurl(String userurl) {
        this.userurl = userurl;
    }

    @Override
    public String toString() {
        return "Aop{" +
                "userpmam='" + userpmam + '\'' +
                ", userurl='" + userurl + '\'' +
                '}';
    }
}
