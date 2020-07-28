package com.servlet;

import com.dao.Orderdao;
import com.dao.Orderimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OrderaddServlet",urlPatterns = {"/OrderaddServlet"})
public class OrderaddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Object uid=request.getParameter("uid");
        String ci=request.getParameter("id");
        int cid=Integer.parseInt(ci);
        Orderdao od=new Orderimpl();
        if (od.add(uid,cid)){
            //request.setAttribute("message","Successful purchase");
            //request.getRequestDispatcher("/info.jsp").forward(request,response);
            response.sendRedirect("info.jsp");
        }else {
            //request.setAttribute("message","Purchase failed");
            request.getRequestDispatcher("/Shome.jsp").forward(request,response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
