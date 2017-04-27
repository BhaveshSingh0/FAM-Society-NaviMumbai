<%@page import="com.Pay"%>
<%@page import="com.Mail"%>
<%
    String pwd = (String)session.getAttribute("pwd");
    if(!pwd.equals("sourabh123456789"))
   {
  RequestDispatcher rd = request.getRequestDispatcher("Homepage.jsp");
   rd.forward(request, response);
        
    }
%>
            
<%@page import="com.FeedBack"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="com.Admin"%>
<%@page import="com.Society"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
                        
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
<link href="//cdn.dataTables.net/tabletools/2.2.4/css/dataTables.tableTools.css" rel="stylesheet" type="text/css"/>
   
<link href="css/pnotify.custom.min.css" media="all" rel="stylesheet" type="text/css" />
  
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.bundle.js" type="text/javascript" ></script>
  <script type="text/javascript">
        function  submitdata(id){
          
            $.ajax({
                type: "POST",
                url: 'grant',
                data: 'Id='+id+'&num=0',
                success: function(data) {
                   
                    alert("Granted");
                 
                },
                 error: function() {
                    alert('it broke');
                }
                
            });

          
      
        }
        
    </script>
        
<style>
     
 

    ul{


	margin-top: 30px;
}body{
  
 }
li:hover {
  
   background-color: #ddd;

   font-size: 20px;


}
  a{
   font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
   text-decoration: none;
  }
 li {

 	list-style-type: none ;
 	display: inline;
 	padding: 10px;
 	font-size: 16px;
 }

     h2 {
  font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
  font-size: 32px;
  padding: 10px 0px;
  margin-left: 10px;
  text-align:left;
  text-transform: uppercase;
  text-rendering: optimizeLegibility;
} 
   

.elegantshd {
   
  letter-spacing: .15em;
}
    
    </style>
  
    </head>
   
    <body>
        
         <div class="row">
                <div class="col-md-4" style=" margin-top:-10px;">
                    
                      <h2 class="elegantshd">Housing Society &nbsp; </h2>
             
                </div>
                
                
             <div class="col-md-6 col-md-offset-2" >
            
        
                       
                             
                             <ul>
                                 
                                 
                                 <li><a href="" style="color: black;"><i class="fa fa-user" style="font-size: 30px;" aria-hidden="true"></i> &nbsp;Admin</a></li>
                                        <li><button class="btn btn-default" data-toggle="modal" data-target="#myModalHorizontal">
                                                Send Message
                                            </button></li>
                                            <li>  <button class="btn btn-default" data-toggle="modal" data-target="#myModalNorm">
                                    Send Mail
                                         </button></li>
                                            <li><a href="logout.jsp" style="color: black;">Sign Out</a></li>
                             </ul>
                             
                             

                </div>
                
            </div>
               
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                                            
                                 
                                 
               
                                           
              <div class="modal fade" id="myModalNorm" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" 
                   data-dismiss="modal">
                       <span aria-hidden="true">&times;</span>
                       <span class="sr-only">Close</span>
                </button>
                <h3 class="modal-title" id="myModal">
                   Send Mail
                </h3>
            </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                
                <form role="form" action="modelmessage"  method="POST">
                  <div class="form-group">
                   <input type="hidden" value="2" name="form1" />   
                    <label for="exampleInputEmail1">Mail Id:</label>
                      <input type="text" class="form-control"
                     name="email"  placeholder="mail id"/>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Message:</label>
                      <input type="text" name="message" class="form-control"
                           placeholder="Message"/>
                  </div>
                  
                  <button type="submit" class="btn btn-default">Submit</button>
                </form>
                
                
            </div>
            
            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">
                            Close
                </button>
                <button type="button" class="btn btn-primary">
                    Save changes
                </button>
            </div>
        </div>
    </div>
</div>                     
                           
                  
<div class="modal fade" id="myModalHorizontal" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <button type="button" class="close" 
                   data-dismiss="modal">
                       <span aria-hidden="true">&times;</span>
                       <span class="sr-only">Close</span>
                </button>
                <h2 class="modal-title" id="myModalLabel">
                  Notice
                  
                </h2>
                </div>
            
            <!-- Modal Body -->
            <div class="modal-body">
                
                <form class="form-horizontal" role="form" action="modelmessage" method="POST">
                    <input type="hidden" value="1" name="form1" />   
                
                    <div class="form-group">
  
                        <textarea class="form-control" name="not" rows="5" id="comment"></textarea>
                    </div>
                  
                  <div class="form-group">
                    <div class=" col-sm-10">
                      <button type="submit" class="btn btn-default">Send</button>
                    </div>
                  </div>
                </form>
                
            </div>
        </div>
    </div>
</div>
                                     

        
        
        
                                        <div class="container">
	                                  <div class="row">
		                         <div class="col-md-12">
                                       
                                    <ul class="nav nav-tabs" >
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Record</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Notices</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Parking Request </a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Feedback</a></li>
                                       <li role="presentation"><a href="#mail" aria-controls="settings" role="tab" data-toggle="tab">Sent mails</a></li>
                                  
                                      <li role="presentation"><a href="#main" aria-controls="settings" role="tab" data-toggle="tab">Maintenance</a></li>
                                  
                                    </ul>

                             
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="home">
                                        
                                            
                                            
                                            
                                        
                                                 
                <% 
          try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session  session1=factory.openSession();  
     Transaction t = session1.beginTransaction();  
     
     
     %>
     
       <h2> Members</h2>
                                   <table  id="example" class="stripe" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Flat Number</th>
                                            <th>Wing</th>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th>Date</th>
                                            <th>Contact</th>
                                            <th>Parking Status</th>
                                            <th>vehicle Number</th>
                                         
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                         <%
         
         
     Criteria cr = session1.createCriteria(Society.class); 
     List list=cr.list();
       
      Iterator iterator = list.iterator(); 
      
      %>
         
      
      
      
      <%
      
      
      for (int i = 0; i < list.size(); i++)
{
             Society user =  (Society)iterator.next();
   
    
             %>
                                        
                                        
                                        
             <tr><td><%= user.getId() %></td><td><%= user.getFlatnumber()%></td><td><%= user.getBld_No() %></td><td><%= user.getFirstname() %></td><td><%= user.getEmail()%></td><td><%= user.getDate() %></td><td><%= user.getContact() %></td><td><%= user.getParkingstatus()%></td><td><%= user.getParking_number() %></td></tr>                     
                                          
             <%
    
    
}
t.commit();
session1.close();
      %>
      
                                    </tbody>
                                </table>
                             
                                            
                          <%
      
      
   }
        
        
        catch(Exception e){
            
            out.println(e);
            
        }
   
        %>                             
           
        
                               
                                        </div>
                                            <div role="tabpanel" class="tab-pane" id="profile">
                                           
                                                    <% 
          try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session  session1=factory.openSession();  
     Transaction t = session1.beginTransaction();  
     
     
     %>
                 
                                         <%
         
         
   
   Criteria cr = session1.createCriteria(Admin.class);
    
     List list=cr.list();
 
     // List list= session1.createQuery("from com.Admin ORDER BY Id DESC ").list();
   Iterator iterator = list.iterator(); 
      
  
      %>
          <table border="1" id="example2">
                                    <thead>
                                        <tr>
                                      
                                            <th>Date</th> 
                                            <th>Message</th>
                                            
                                         
                                            
                                        <!--    <th>Ordered Time</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                   <%
      
      
      for (int i = 0; i < list.size(); i++)
{
             Admin user =  (Admin)iterator.next();
   
    
             %>
       
                                         
             <tr><td><%= user.getD() %></td><td><%= user.getMessage() %></td></tr>                   
              
        
       
                 
<% 
    }
%>
     
 </tbody>
                                </table>
     
<%
t.commit();
session1 .close();



    }
        
        catch(Exception e){
            
            out.println(e);
            
        }
   
        %>  
        
      
        
        
        
                                            </div>
                                        
                                        <div role="tabpanel" class="tab-pane" id="messages">
                                          
                
                <% 
          try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session  session1=factory.openSession();  
     Transaction t = session1.beginTransaction();  
     
     
     %>
                 
                                         <%
         
         
   
     List list= session1.createQuery("from com.Society ").list();
        Iterator iterator = list.iterator(); 
      
      %>

           <table border="1" id="example1" class="stripe" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Email</th>
                                            <th>Vehicle Number</th>
                                            <th>Grant</th>
                                         
                                            
                                        <!--    <th>Ordered Time</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                   <%
      
      
      for (int i = 0; i < list.size(); i++)
{
             Society user =  (Society)iterator.next();
   
      if((user.getParkingstatus().equalsIgnoreCase("NO"))&&( ! user.getParking_number().equals("NO"))) {
         
      }
      else{
          continue; 
      }
             %>
       
                                         
             <tr><td><%= user.getEmail() %></td><td id="p<%= user.getEmail() %>"><%= user.getParking_number()%></td><td><input type="button" id="<%= user.getEmail() %>" class="btn-btn-primary" onclick="submitdata(this.id)" value="Grant" ></td></tr>                   
              
        
       
                 
<% 
    }
%>
     
 </tbody>
                                </table>
     
<%
t.commit();
session1 .close();



    }
        
        catch(Exception e){
            
            out.println(e);
            
        }
   
        %>             
             
     
        
                                            
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="settings">
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                                                      
                                                 
                <% 
          try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session  session1=factory.openSession();  
     Transaction t = session1.beginTransaction();  
     
     
     %>
     
     
                                   <table  id="example3" class="stripe" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Flat Number</th>
                                            <th>FeedBack</th>
                                            <th>Username</th>
                                            
                                            <th>Date</th>
                                           
                                         
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                         <%
         
         
     Criteria cr = session1.createCriteria(FeedBack.class); 
     List list=cr.list();
       
      Iterator iterator = list.iterator(); 
      
      %>
                                
           
      
      
      
      <%
      
      
      for (int i = 0; i < list.size(); i++)
{
             FeedBack user =  (FeedBack)iterator.next();
   
    
             %>
                                        
                                        
                                        
             <tr><td><%= user.getId() %></td><td><%= user.getFlatNumber()%></td><td><%= user.getFeed()%></td><td><%= user.getMail() %></td><td><%= user.getD() %></td></tr>                     
                                          
             <%
    
    
}
t.commit();
session1.close();
      %>
      
                                    </tbody>
                                </table>
                             
                                            
                          <%
      
      
   }
        
        
        catch(Exception e){
            
            out.println(e);
            
        }
   
        %>                             
           
        
                          
                                         
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        </div>
        
        
        
        
        
          <div role="tabpanel" class="tab-pane" id="mail">
                                        
                                                                   
              <h2>Mail</h2>                                     
                <% 
          try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session  session1=factory.openSession();  
     Transaction t2 = session1.beginTransaction();  
     
     
     %>
     
     
                                   <table  id="example12" class="stripe" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Mail Id</th>
                                            <th>Message</th>
                                            <th>Date</th>
                                           
                                         
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                         <%
         
         
     Criteria cr1 = session1.createCriteria(Mail.class); 
     List list1=cr1.list();
       
      Iterator iterator1 = list1.iterator(); 
      
      %>
                                
            
      
      
      <%
      
      
      for (int i = 0; i < list1.size(); i++)
{
             Mail user =  (Mail)iterator1.next();
   
    
             %>
                                        
             <tr><td><%= user.getId() %></td><td><%= user.getMail() %></td><td><%= user.getMessage() %></td><td><%= user.getD() %></td></tr>                      
                                        
                                           
             <%
    
    
}
t2.commit();
session1.close();
      %>
      
                                    </tbody>
                                </table>
                             
                                            
                          <%
      
      
   }
        
        
        catch(Exception e){
            
            out.println(e);
            
        }
   
        %>                             
           
          </div>
        
        
        
          <div role="tabpanel" class="tab-pane" id="main">
              
              
              
              
                                            
                <% 
          try{
     Configuration cfg=new Configuration();  
     cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
     SessionFactory factory=cfg.buildSessionFactory();  
     Session  session1=factory.openSession();  
     Transaction t2 = session1.beginTransaction();  
     
     
     %>
     
     
                                   <table  id="example111" class="stripe" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th>Flat Number</th>
                                            <th>Maintenance Charge</th>
                                            <th>Month</th>
                                           
                                         
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                         <%
         
         
     Criteria cr1 = session1.createCriteria(Pay.class); 
     List list11=cr1.list();
       
      Iterator iterator11 = list11.iterator(); 
      
      %>
                                
            
      
      
      <%
      
      
      for (int i = 0; i < list11.size(); i++)
{
             Pay user =  (Pay)iterator11.next();
   
    
             %>
                                        
             <tr><td><%= user.getId() %></td><td><%= user.getFlat()   %></td><td><%= user.getAmount() %></td><td><%= user.getMonth() %></td></tr>                      
                                        
                                           
             <%
    
    
}
t2.commit();
session1.close();
      %>
      
                                    </tbody>
                                </table>
                             
                                            
                          <%
      
      
   }
        
        
        catch(Exception e){
            
            out.println(e);
            
        }
   
        %>                             
     
              
              
              
              
          </div>
        </div>
                   
      </div>                       
                           
     </div>
                                        
                                          </div>
                                     
        
                                 
        
       
              <script type="text/javascript" src="js/pnotify.custom.min.js"></script>
                                      
     <script>
          

           <%
            if(request.getAttribute("success")!=null)
            {
                String status = (String)request.getAttribute("success");
                if(status.equalsIgnoreCase("suc"))
                {
                    %>
                        $(function(){
                                PNotify.prototype.options.styling = "bootstrap3";
                                    var notice = new PNotify({
                                    title: 'Success',
                                    text: " Success",
                                    type: 'success',
                                    buttons: {
                                        closer: false,
                                        sticker: false
                                    }
                                });
                                notice.get().click(function() {
                                    window.location.href = "admin.jsp";
                                    notice.remove();
                                });
                        });
                        <%
                }
                else
                {
                        %>
                        $(function(){

                                PNotify.prototype.options.styling = "bootstrap3";
                                    var notice = new PNotify({
                                    title: 'Error',
                                    text: 'Something went wrong! Please contact developer.',
                                    type: 'error',
                                    buttons: {
                                        closer: false,
                                        sticker: false
                                    }
                                });
                                
                                
                                notice.get().click(function() {
                                    window.location.href = "admin.jsp";
                                    notice.remove();
                                });
                        });
                        <%
                }
            }
        %>
            
    </script>

                            
                                        
     <script>
          

         
</script>

                     <script src="js/jquery.min.js"></script>
                     <script src="js/bootstrap.min.js"></script>
                     <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
                     <script src="//cdn.dataTables.net/tabletools/2.2.4/js/dataTables.tableTools.min.js" type="text/javascript"></script>
<script>
    $(document).ready(function() {
    var table = $('#example').dataTable();
    var table4 = $('#example1').dataTable();
    var table6 = $('#example2').dataTable();
    var table1 = $('#example3').dataTable();
   var table3 = $('#example12').dataTable(); 
   var table31 = $('#example111').dataTable(); 
    var tool = new $.fn.dataTable.TableTools(table,{
        
        
        'sSwfPath':'//cdn.dataTables.net/tabletools/2.2.4/swf/copy_csv_xls_pdf.swf'
    });
    $(tool.fnContainer()).insertBefore('#example_wrapper');
    
    
} );
</script>

<script>
        $(function(){
            $('[data-toggle="tooltip"]').tooltip();
          });
</script>
               
               
               
               
               
               
               
               
              
        
    </body>
</html>
