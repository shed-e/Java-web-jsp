package com.servlet;

import com.dao.Coudao;
import com.dao.Coudaoimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteServlet",urlPatterns = {"/DeleteServlet"})
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        int cid=Integer.parseInt(id);
        Coudao cd=new Coudaoimpl();
        if (cd.delete(cid)){
            request.setAttribute("message","Delete succeeded");
            request.getRequestDispatcher("/control.jsp").forward(request,response);
        }else {
            //request.setAttribute("message","Delete failed");
            request.getRequestDispatcher("/control.jsp").forward(request,response);
        }


    }
}
