package com.ssm.domain;

public class Auth {
    private Integer id;

    private String name;

    private String url;

    private String op;

    private Integer authgroupId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op == null ? null : op.trim();
    }

    public Integer getAuthgroupId() {
        return authgroupId;
    }

    public void setAuthgroupId(Integer authgroupId) {
        this.authgroupId = authgroupId;
    }

    @Override
    public String toString() {
        return "Auth{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", op='" + op + '\'' +
                ", authgroupId=" + authgroupId +
                '}';
    }
}