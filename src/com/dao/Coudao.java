package com.dao;

import com.entity.Courses;

import java.util.List;

public interface Coudao {
    public List<Courses> findcourses(int id);
    public List<Courses> getcourses();
    public boolean delete(int id);
    public boolean update(int id,String name,float fees);
    public boolean add(Courses courses);


}
