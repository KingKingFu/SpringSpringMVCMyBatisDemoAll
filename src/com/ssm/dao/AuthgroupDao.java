package com.ssm.dao;

import com.ssm.domain.Authgroup;

public interface AuthgroupDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Authgroup record);

    int insertSelective(Authgroup record);

    Authgroup selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Authgroup record);

    int updateByPrimaryKey(Authgroup record);
}