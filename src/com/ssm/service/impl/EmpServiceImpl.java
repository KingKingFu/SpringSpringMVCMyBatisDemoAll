package com.ssm.service.impl;

import com.ssm.dao.EmpDao;
import com.ssm.domain.Auth;
import com.ssm.domain.Emp;
import com.ssm.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpDao empDao;
    @Override
    public Emp login(String name, String pass) {
        Map<String,String> map = new HashMap<>();
        map.put("name",name);
        map.put("pwd",pass);
        return  empDao.selectByNameAndPass(map);
    }

    @Override
    public List<Auth> findEmpAuths(Integer id) {
        return empDao.selectEmpAuths(id);
    }

    @Override
    public List<Emp> findAllEmp() {
        return empDao.selectAllEmp();
    }
}
