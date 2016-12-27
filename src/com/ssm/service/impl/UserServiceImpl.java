package com.ssm.service.impl;

import com.ssm.domain.User;
import com.ssm.dao.UserDao;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/21.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User login(String name, String pass) {
        Map<String,String> map = new HashMap<>();
        map.put("name",name);
        map.put("pass",pass);
        return  userDao.selectByNameAndPass(map);
    }

    @Override
    public boolean exit() {
        return false;
    }

    @Override
    public boolean add(User user) {
        return false;
    }

    @Override
    public boolean update(int id, User user) {
        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public User findUserById(int id) {
        return null;
    }

    @Override
    public List<User> findUsersByCondition(User user) {
        return null;
    }
}
