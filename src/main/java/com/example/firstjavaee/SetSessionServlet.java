package com.example.firstjavaee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/setsession")
public class SetSessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String sessValue = request.getParameter("session_value");

        HttpSession session = request.getSession();
        session.setAttribute("my_sess_value",sessValue);

        response.sendRedirect("/sessions");
    }
}
