package com.ssm.service;


import com.ssm.domain.Dept;

import java.util.List;

/**
 * Created by Administrator on 2016/12/21.
 */
public interface DeptService {
    List<Dept> findDeptsByCondition(Dept dept);
    Dept findDeptById(int id);
    boolean exit();
    boolean add(Dept dept);
    boolean update(int id, Dept dept);
    boolean delete(int id);
}
