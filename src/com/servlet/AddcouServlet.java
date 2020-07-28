package com.servlet;

import com.dao.Coudao;
import com.dao.Coudaoimpl;
import com.entity.Courses;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddcouServlet",urlPatterns = {"/AddcouServlet"})
public class AddcouServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String i=request.getParameter("id");
        String name=request.getParameter("name");
        String f=request.getParameter("fees");
        int id=Integer.parseInt(i);
        float fees=Float.parseFloat(f);
        Courses courses=new Courses();
        courses.setId(id);
        courses.setName(name);
        courses.setFees(fees);
        Coudao cd=new Coudaoimpl();
        if (cd.add(courses)){
            //request.setAttribute("message","Successfully added");
            request.getRequestDispatcher("/control.jsp").forward(request,response);
        }else {
            //request.setAttribute("message","Add failed");
            request.getRequestDispatcher("/control.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
