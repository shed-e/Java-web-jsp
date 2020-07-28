package com.servlet;

import com.dao.Orderdao;
import com.dao.Orderimpl;
import com.entity.Courses;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CoufindServlet",urlPatterns = {"/CoufindServlet"})
public class CoufindServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Object id = request.getSession().getAttribute("username");
        Orderdao od = new Orderimpl();
        List<Courses> clist = od.findcourses(id);
        request.setAttribute("clist", clist);
        request.getRequestDispatcher("/inifo.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
