package com.dao;

import com.entity.Courses;
import com.util.DBcon;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Orderimpl implements Orderdao  {

    @Override
    public boolean add(Object uid,int cid) {
        boolean flag=false;
        DBcon.init();
        int i=DBcon.addupddel("insert into courses_reg(uid,cid)"+"value('"+uid+"','"+cid+"')");
        if (i>0){
            flag=true;
        }
        DBcon.close();
        return flag;
    }

    @Override
    public List<Courses> findcourses(Object id) {
        List<Courses> clist=new ArrayList<Courses>();
        try {
            DBcon.init();
            ResultSet rs= DBcon.select("select * from courses_reg where uid='"+id+"'");
            while (rs.next()){

                //Courses cou=new Courses();
                int cid=rs.getInt(2);
                //System.out.println(c);
                //cou.setId(cid);
                Coudao cd=new Coudaoimpl();
                clist=cd.findcourses(cid);
            }
            DBcon.close();
            return clist;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
