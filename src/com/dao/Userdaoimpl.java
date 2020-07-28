package com.dao;
import com.util.DBcon;
import com.entity.User;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Userdaoimpl implements Userdao{

    /*public boolean power(String type){
        boolean flag=false;
        try {
            DBcon.init();
            ResultSet rs=DBcon.select("select * form user where type='"+type+"'");
            while (rs.next()){
                if (rs.getString("type").equals()){

                }
            }

        }

    }*/

    public boolean login(String id,String pwd){
        boolean flag=false;
        try {
            DBcon.init();
            ResultSet rs= DBcon.select("select * from user where id='"+id+"'and pwd='"+pwd+"'");
            while (rs.next()){
                if (rs.getString("id").equals(id) && rs.getString("pwd").equals(pwd)) {
                    flag=true;
                }
            }
            DBcon.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    public boolean register(User user){
        boolean flag=false;
        DBcon.init();
        int i= DBcon.addupddel("insert into user(id,pwd,type,fname,email,cnum)"+"value('"+user.getId()+"','"+user.getPwd()+"','"+user.getType()+"','"+user.getFullname()+"','"+user.getEamail()+"','"+user.getContact()+"')");
        if (i>0){
            flag=true;
        }
        DBcon.close();
        return flag;
    }
}
