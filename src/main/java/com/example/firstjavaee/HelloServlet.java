package com.example.firstjavaee;

import kz.javaee.db.DBManager;
import kz.javaee.db.Items;

import java.io.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(value = "/home")
public class HelloServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{

        String team = request.getParameter("team_name");
        String points = request.getParameter("team_points");

        System.out.println(team + " GOT " + points + " pts.");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {

        ArrayList<Items> items = DBManager.getItems();
        request.setAttribute("tovary",items);
        request.getRequestDispatcher("/home.jsp").forward(request,response);
    }

}