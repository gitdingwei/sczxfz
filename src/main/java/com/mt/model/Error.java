package com.mt.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "UserErr")
public class Error {

      private String errorvalue;

    public String getErrorvalue() {
        return errorvalue;
    }

    public void setErrorvalue(String errorvalue) {
        this.errorvalue = errorvalue;
    }


    @Override
    public String toString() {
        return "Error{" +
                "errorvalue='" + errorvalue + '\'' +
                '}';
    }
}
