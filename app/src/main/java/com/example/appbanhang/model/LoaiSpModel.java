package com.example.appbanhang.model;

import java.util.List;

public class LoaiSpModel {
    public boolean isSuccess() {
        return success;
    }

    public String getMessage() {
        return message;
    }

    public List<LoaiSp> getResult() {
        return result;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setResult(List<LoaiSp> result) {
        this.result = result;
    }

    boolean success;
    String message;
    List<LoaiSp> result;
}
