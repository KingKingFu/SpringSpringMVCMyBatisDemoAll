package com.ssm.service;


import com.ssm.domain.User;

import java.util.List;

/**
 * Created by Administrator on 2016/12/21.
 */
public interface UserService {
    User login(String name, String pass);

    boolean exit();

    boolean add(User user);

    boolean update(int id, User user);

    boolean delete(int id);

    User findUserById(int id);

    List<User> findUsersByCondition(User user);
}
