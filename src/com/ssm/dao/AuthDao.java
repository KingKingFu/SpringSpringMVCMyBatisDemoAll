package com.ssm.dao;

import com.ssm.domain.Auth;
import org.springframework.stereotype.Repository;

@Repository
public interface AuthDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Auth record);

    int insertSelective(Auth record);

    Auth selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Auth record);

    int updateByPrimaryKey(Auth record);
}