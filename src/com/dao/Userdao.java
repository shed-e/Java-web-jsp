package com.dao;

import com.entity.User;

public interface Userdao {
    //public boolean power(String type);
    public boolean login(String id,String pwd);
    public boolean register(User user);

}
