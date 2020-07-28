package com.servlet;

import com.dao.Coudao;
import com.dao.Coudaoimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateServlet",urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        int cid=Integer.parseInt(id);
        String name=request.getParameter("name");
        String f=request.getParameter("fees");
        float fees=Float.parseFloat(f);
        Coudao cd=new Coudaoimpl();
        if (cd.update(cid,name,fees)) {
            request.setAttribute("message", "Update successful");
            request.getRequestDispatcher("/control.jsp").forward(request, response);
        }else {
            request.setAttribute("message", "Update failed");
            request.getRequestDispatcher("/control.jsp").forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
