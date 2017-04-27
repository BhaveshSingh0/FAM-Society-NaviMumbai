
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


public class modelmessage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter() ;
        
           HttpSession session =  request.getSession(true);
        
        String email = (String) session.getAttribute("email");
        int data =Integer.parseInt(request.getParameter("form1"));
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session session1=factory.openSession();  
 
      
        Date d  =new Date();
        try{
        if(data == 1) {
      
                 Transaction t=session1.beginTransaction(); 
            String message =  request.getParameter("not");
            
            Admin u = new Admin();
            u.setD(d);
            u.setMessage(message);
            session1.persist(u);
            t.commit();
           
                         request.setAttribute("success", "suc");
                        RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                        rd.forward(request, response);
                        
        }
        else if(data == 2 ) {
            
            
            
            String email3 =  request.getParameter("email");
            String mess =  request.getParameter("message");
            SendMail s =  new SendMail();
             Mail  o = new Mail();
                o.setD(d);
                o.setMail(email3);
                o.setMessage(mess);
                Transaction  tra =  session1.beginTransaction();
                session1.persist(o);
                tra.commit();
                
                
        int  n = s.send(email3, mess);
        
        
            
            if(n == 0) {
                
               /*
                
                */
                
                 request.setAttribute("success", "suc");
                        RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                        rd.forward(request, response);
                        
                
            }
            else{
                request.setAttribute("success", "err");
                    RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                        rd.forward(request, response);
            }
        }
         
         
        else{    
            
            Transaction tx=session1.beginTransaction(); 
            
          String num =  request.getParameter("Number");
            
            session1.createSQLQuery("UPDATE SOURABH.SOCIETY set PARKING_NUMBER='"+num+"'   WHERE EMAIL='"+email+"' ").executeUpdate();
           tx.commit();
           
                 request.setAttribute("success", "suc");
                        RequestDispatcher rd = request.getRequestDispatcher("account.jsp");
                        rd.forward(request, response);
                
                
          }
        
        
        session1.close();
        
       }
        
        catch(Exception e1){
            
             request.setAttribute("success", "err");
                    RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                    RequestDispatcher rd1 = request.getRequestDispatcher("account.jsp");
                    rd.forward(request, response);
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
