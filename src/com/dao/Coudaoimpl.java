package com.dao;

import com.entity.Courses;
import com.util.DBcon;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class Coudaoimpl implements Coudao {

    @Override
    public List<Courses> findcourses(int id) {
        List<Courses> clist = new ArrayList<Courses>();
        try {
            DBcon.init();
            ResultSet rs = DBcon.select("select * from courses where cid="+id);
            while (rs.next()) {
                Courses cou = new Courses();
                cou.setId(rs.getInt(1));
                cou.setName(rs.getString(2));
                cou.setUrl(rs.getString(4));
                cou.setFees(rs.getFloat(5));
                //System.out.println(rs.getInt(1));
                //System.out.println(rs.getString(2));
                //System.out.println(rs.getInt(5));
                clist.add(cou);
            }
            DBcon.close();
            return clist;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Courses> getcourses() {
        List<Courses> clist = new ArrayList<Courses>();
        try {
            DBcon.init();
            ResultSet rs = DBcon.select("select * from courses");
            while (rs.next()) {
                Courses cou = new Courses();
                cou.setId(rs.getInt(1));
                cou.setName(rs.getString(2));
                cou.setFees(rs.getFloat(5));
                //cou.setUrl(rs.getString(4));
                //System.out.println(rs.getInt(1));
                //System.out.println(rs.getString(2));
                //System.out.println(rs.getInt(5));
                clist.add(cou);
            }
            DBcon.close();
            return clist;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean delete(int id) {
        boolean flag=false;
        DBcon.init();
        String sql="delete from courses where cid="+id;
        int i=DBcon.addupddel(sql);
        if (i>0){
            flag=true;
        }
        DBcon.close();
        return flag;
    }

    @Override
    public boolean update(int id, String name, float fees) {
        boolean flag=false;
        DBcon.init();
        String sql="update courses set name='"+name+"',fees='"+fees+"' where cid="+id;
        int i=DBcon.addupddel(sql);
        if (i>0){
            flag=true;
        }
        DBcon.close();
        return flag;
    }

    @Override
    public boolean add(Courses courses) {
        boolean flag=false;
        DBcon.init();
        int i=DBcon.addupddel("insert into courses(cid,name,fees)"+"value('"+courses.getId()+"','"+courses.getName()+"','"+courses.getFees()+"')");
        if (i>0){
            flag=true;
        }
        DBcon.close();
        return flag;
    }
}