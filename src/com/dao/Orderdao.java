package com.dao;

import com.entity.Courses;
import com.entity.User;

import java.util.List;

public interface Orderdao {
    public List<Courses> findcourses(Object id);
    public boolean add(Object uid,int cid);
}
