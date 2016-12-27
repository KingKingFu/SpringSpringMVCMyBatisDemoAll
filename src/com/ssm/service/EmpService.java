package com.ssm.service;

import com.ssm.domain.Auth;
import com.ssm.domain.Emp;
import java.util.List;


public interface EmpService {
    Emp login(String name, String pass);



    List<Auth> findEmpAuths(Integer id);

//    单个员工的所有权限  员工信息 -  权限信息（list）EmpAndAuths

//    List<EmpAndAuths> findAllEmpAuths();

    List<Emp> findAllEmp();
}
