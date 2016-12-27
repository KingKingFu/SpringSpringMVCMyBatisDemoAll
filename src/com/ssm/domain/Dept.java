package com.ssm.domain;

import org.springframework.stereotype.Component;

@Component
public class Dept {
    private Integer deptno;

    private String dname;

    private String loc;

    private String kouhao;

    private Integer yusuan;

    public Integer getDeptno() {
        return deptno;
    }

    public void setDeptno(Integer deptno) {
        this.deptno = deptno;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname == null ? null : dname.trim();
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc == null ? null : loc.trim();
    }

    public String getKouhao() {
        return kouhao;
    }

    public void setKouhao(String kouhao) {
        this.kouhao = kouhao == null ? null : kouhao.trim();
    }

    public Integer getYusuan() {
        return yusuan;
    }

    public void setYusuan(Integer yusuan) {
        this.yusuan = yusuan;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "deptno=" + deptno +
                ", dname='" + dname + '\'' +
                ", loc='" + loc + '\'' +
                ", kouhao='" + kouhao + '\'' +
                ", yusuan=" + yusuan +
                '}';
    }
}