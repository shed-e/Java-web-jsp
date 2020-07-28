package com.util;

import java.sql.*;

public class DBcon {
    static String url = "jdbc:mysql://localhost:3306/online_learning?useSSL=FALSE&serverTimezone=Asia/Shanghai";
    static String username = "root";
    static String password = "200826";
    static Connection con = null;
    static ResultSet rs = null;
    static PreparedStatement ps = null;
    public static void init() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.out.println("初始化失败");
            e.printStackTrace();
        }
    }

    public static ResultSet select(String sql){
        try {
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery(sql);
        }catch (SQLException e){
            System.out.println("sql数据库查询异常");
            e.printStackTrace();
        }
        return rs;
    }

    public static int addupddel(String sql) {
        int i = 0;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            i = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("sql数据库增删异常");
            e.printStackTrace();
        }
        return i;
    }

    public static void close(){
        try {
            con.close();
        }catch (SQLException e){
            System.out.println("sql数据库关闭异常");
            e.printStackTrace();
        }
    }
}
