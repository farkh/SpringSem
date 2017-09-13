package com.springapp.mvc.DAO;

import com.springapp.mvc.model.User;

public interface UserDao {
    User getUser(String login);
    void addUser(User user);
}
