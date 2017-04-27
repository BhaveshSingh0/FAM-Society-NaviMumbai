
package com;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;


public class Register extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        
        String temp1 = request.getParameter("fname");
        String firstName = temp1.substring(0, 1).toUpperCase() + temp1.substring(1);
        
        String temp2 = request.getParameter("lname");
        String lastName = temp2.substring(0, 1).toUpperCase() + temp2.substring(1);
        String flat= request.getParameter("flat");
        String bld = request.getParameter("bld");
        String emailAddress = request.getParameter("email_addr");
        String password = request.getParameter("pass");
        String contact = request.getParameter("contact");
    
        Date d = new Date();
           
          
                       try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session session1=factory.openSession();  
     Transaction t=session1.beginTransaction();
    
     
 Criteria criteria2 = session1.createCriteria(Society.class);
   criteria2.add(Restrictions.eq("email", emailAddress));
    criteria2.setProjection(Projections.rowCount());
    long count2 = (Long) criteria2.uniqueResult();
    if(count2 != 0 ){
        session1.getTransaction().commit();
          session1.close();
       request.setAttribute("dbError1", "block");
            RequestDispatcher rd1 = request.getRequestDispatcher("Homepage.jsp");
            rd1.forward(request, response);
                              
     }

 Criteria criteria = session1.createCriteria(Society.class);
   criteria.add(Restrictions.eq("Flatnumber", flat));
    criteria.setProjection(Projections.rowCount());
    long count = (Long) criteria.uniqueResult();
    
 
   if(count != 0){
      
          session1.getTransaction().commit();
          session1.close();
       request.setAttribute("dbError1", "block");
            RequestDispatcher rd1 = request.getRequestDispatcher("Homepage.jsp");
            rd1.forward(request, response);
          
      }
      else{  
     
      
    
      Society u = new Society();
       u.setFirstname(firstName);
       u.setLastname(lastName);
       u.setFlatnumber(flat);
       u.setContact(contact);
       u.setPassword(password);
       u.setDate(d);
       u.setBld_No(bld);
       u.setEmail(emailAddress);
       u.setParkingstatus("NO");
       u.setParking_number("NO");
         session1.persist(u);
       
         
           t.commit();
         
         
         session1.close();
         request.setAttribute("sendSuccess", "block");
            RequestDispatcher rd1 = request.getRequestDispatcher("Homepage.jsp");
            rd1.forward(request, response);
      }    
              
 }     
                       
                       
                       catch(Exception e3){
                           
                           e3.printStackTrace();
                           request.setAttribute("dbError", "block");
            RequestDispatcher rd1 = request.getRequestDispatcher("Homepage.jsp");
            rd1.forward(request, response);
                      
                       
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
