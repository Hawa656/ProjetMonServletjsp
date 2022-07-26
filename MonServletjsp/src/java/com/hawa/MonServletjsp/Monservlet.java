package com.hawa.MonServletjsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Monservlet", urlPatterns = {"/Monservlet"})
public class Monservlet extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/Inscrire.jsp").forward(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String pseudo = request.getParameter("pseudo");
        String email = request.getParameter("email");
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        request.setAttribute("nom", nom);
        request.setAttribute("prenom", prenom);
        request.setAttribute("pseudo", pseudo);
        request.setAttribute("email", email);
        request.setAttribute("password1", password1);
        request.setAttribute("password2", password2);
        this.getServletContext().getRequestDispatcher("/Acceuil.jsp").forward(request, response);
        
        HttpSession session = request.getSession();
        session.setAttribute("nom", nom);
        session.setAttribute("prenom", prenom);
        
        
        
        

            if (password1.equals(password2)) {
                 request.getRequestDispatcher("/Accueil.jsp").forward(request, response);
                
            }
             else
           {
             
               request.getRequestDispatcher("/Inscrire.jsp").forward(request, response);
           }
            
      

            
       
  }
      }

