package com.example.firstjavaee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/sessions")
public class SessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String sessValue = (String) session.getAttribute("my_sess_value");
        System.out.println(sessValue);

        ArrayList<String> basket = (ArrayList<String>) request.getSession().getAttribute("basket");


        request.setAttribute("basketSession", basket);


        request.setAttribute("text", "Your session value is "+sessValue);
        request.getRequestDispatcher("/sessions.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
