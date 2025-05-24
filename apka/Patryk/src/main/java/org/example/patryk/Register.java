package org.example.patryk;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "register", value = "/register")
public class Register extends HttpServlet {
    private User user;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String imie = request.getParameter("imie");
        String nazwisko = request.getParameter("nazwisko");
        String login = request.getParameter("login");
        String haslo = request.getParameter("haslo");
        user=new User(imie,nazwisko,login,haslo);
        response.setContentType("text/html");
        //stworzenie sesji
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request,response);

    }

    public void destroy() {
    }
}