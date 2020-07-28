package com.servlet;

import com.dao.Userdao;
import com.dao.Userdaoimpl;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet(name = "LoginServlet",urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String pwd = request.getParameter("password");
        String type = request.getParameter("usertype");
        //String type=request.getParameter("");
        if ("Admin".equals(type)){
            response.sendRedirect("control.jsp");
            return;
        }
        Userdao ud = new Userdaoimpl();
        if (ud.login(id, pwd)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", id);//获取用户名并保存在整个会话期间
            request.getRequestDispatcher("/Shome.jsp").forward(request, response);
        } else {
            request.setAttribute("message", "Wrong User ID or Password, please try again");//设置登录失败提示
            request.getRequestDispatcher("/login and reg.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
