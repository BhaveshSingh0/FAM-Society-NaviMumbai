
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class feed extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        
        
        String feed=   request.getParameter("feed");
           
       HttpSession session =  request.getSession(true);
        
        String email = (String) session.getAttribute("email");
       String flat = (String) session.getAttribute("flat");
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session session1=factory.openSession();  
     Transaction t=session1.beginTransaction(); 
     try{
     Date d = new Date();
     FeedBack  f =  new FeedBack();
     f.setD(d);
     f.setMail(email);
     f.setFeed(feed);
     f.setFlatNumber(flat);
     session1.persist(f);
     t.commit();
     session1.close();
     
     
                        request.setAttribute("success", "suc");
                        RequestDispatcher rd = request.getRequestDispatcher("account.jsp");
                        rd.forward(request, response);
     }
     
     catch(Exception  e ){
                 request.setAttribute("success", "err");
                    RequestDispatcher rd = request.getRequestDispatcher("account.jsp");
                    rd.forward(request, response);
     }
             
                        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
