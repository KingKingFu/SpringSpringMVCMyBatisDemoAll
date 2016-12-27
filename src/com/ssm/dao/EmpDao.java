package com.ssm.dao;

import com.ssm.domain.Auth;
import com.ssm.domain.Emp;
import com.ssm.domain.EmpAuthPo;

import java.util.List;
import java.util.Map;

public interface EmpDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Emp record);

    int insertSelective(Emp record);

    Emp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Emp record);

    int updateByPrimaryKey(Emp record);

    Emp selectByNameAndPass(Map<String, String> map);

//    List<Auth> selectEmpAuths(Integer id);
    List<EmpAuthPo> selectEmpAuthPo(Integer id);

//    List<Emp> selectAllEmp();
}