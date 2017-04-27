/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;


public class auth extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // test commit
            PrintWriter out = response.getWriter();
                HttpSession session = request.getSession(true);
        String name =  request.getParameter("email");
               
        String pass =  request.getParameter("pass");
        
        
        
        
        if(pass.equals("sourabh123456789")){
            
            session.setAttribute("pwd", pass);
            RequestDispatcher rd1 = request.getRequestDispatcher("admin.jsp");
            rd1.forward(request, response);
        }
        
        else {
        try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session  session1=factory.openSession();  
     Transaction t = session1.beginTransaction();  
     
     
     
     
        
Criteria cr = session1.createCriteria(Society.class);
cr.add(Restrictions.eq("email", name));
cr.add(Restrictions.eq("Password", pass));
        




     List list=cr.list();
     
    
      Iterator iterator = list.iterator(); 
      
      
      if(list.size() == 0){
           
       request.setAttribute("dbError3", "block");
            RequestDispatcher rd1 = request.getRequestDispatcher("Homepage.jsp");
            rd1.forward(request, response);
          
      }
      for (int i = 0; i < list.size(); i++)
{
             Society user =  (Society) iterator.next();
          out.print(user.getEmail());

                    session.setAttribute("sr", user.getId());
                    session.setAttribute("fname", user.getFirstname());
                    session.setAttribute("lname", user.getLastname());
                    session.setAttribute("email", user.getEmail());
                    session.setAttribute("Date", user.getDate());
                    session.setAttribute("bld",user.getBld_No());
                    session.setAttribute("contact", user.getContact());
                    session.setAttribute("flat", user.getFlatnumber());


}
       
      
      t.commit();
          RequestDispatcher rd1 = request.getRequestDispatcher("account.jsp");
            rd1.forward(request, response);
        
     }
        
        
       
        catch(Exception e1){
          e1.printStackTrace();
          out.println("error");
        }
        
        
        
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
