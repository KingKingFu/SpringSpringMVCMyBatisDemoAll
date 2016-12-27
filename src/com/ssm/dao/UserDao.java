package com.ssm.dao;


import com.ssm.domain.User;
import org.springframework.stereotype.Repository;

import java.util.Map;
@Repository
public interface UserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    User selectByNameAndPass(Map<String, String> map);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}