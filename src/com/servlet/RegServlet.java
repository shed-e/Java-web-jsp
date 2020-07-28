package com.servlet;

import com.dao.Userdao;
import com.dao.Userdaoimpl;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegServlet",urlPatterns = {"/RegServlet"})
public class RegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        String pwd=request.getParameter("Password");
        String type=request.getParameter("type");
        String fname=request.getParameter("fname");
        String emali=request.getParameter("Email");
        String concact=request.getParameter("cnum");
        int cum=Integer.parseInt(concact);
        User user=new User();
        user.setId(id);
        user.setPwd(pwd);
        user.setType(type);
        user.setFullname(fname);
        user.setEamail(emali);
        user.setContact(cum);
        Userdao ud=new Userdaoimpl();
        if (ud.register(user)){
            request.setAttribute("message","Registered successfully");//设置成功失败提示
            request.getRequestDispatcher("/login and reg.jsp").forward(request,response);
        }else {
            //request.setAttribute("message","Registration failur");//设置注册失败提示
            response.sendRedirect("login and reg.jsp");
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
