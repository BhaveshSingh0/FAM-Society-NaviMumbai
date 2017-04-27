<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Collections"%>
<%@page import="org.hibernate.criterion.Order"%>
<%@page import="com.Admin"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.Society"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String username = (String) session.getAttribute("fname");
  if(username == null){
      RequestDispatcher rd= request.getRequestDispatcher("Homepage.jsp");
      rd.forward(request, response);
  }
if (null == request.getAttribute("senderNotFound")) {
   request.setAttribute("senderNotFound", "none");
    }
if (null == request.getAttribute("dbError")) {
   request.setAttribute("dbError", "none");
    }
if (null == request.getAttribute("sendSuccess")) {
   request.setAttribute("sendSuccess", "none");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
    <link href="//cdn.dataTables.net/tabletools/2.2.4/css/dataTables.tableTools.css" rel="stylesheet" type="text/css"/>
   
    <link href="css/pnotify.custom.min.css" media="all" rel="stylesheet" type="text/css" />
  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.bundle.js" type="text/javascript" ></script>
    <style>
        
     
      body{
    
    
          
      }    
    ul{


	margin-top: 30px;
}

li:hover {
  
   background-color: #ddd;
    color: black;
   font-size: 20px;


}
  a{
   font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
   text-decoration: none;
   color: black;
  }
  
  .table1  td{
      color: #333;
     padding: 10px; 
   font-size: 18px;
   font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
      
  }
  .table1  th{
      padding: 5px;
      font-size: 20px;
  }
 li {

 	list-style-type: none ;
 	display: inline;
 	padding: 15px;
        color: black;
 	font-size: 19px;
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
    </style>
    </head>
    <body>
        
        
          
            <div class="row">
                <div class="col-md-4" style=" margin-top:-10px;">
                    
                      <h2 class="elegantshd">Housing Society &nbsp; </h2>
             
                </div>
                 <div class="col-md-6 col-md-offset-2" >
                    
               <% String username1 = (String) session.getAttribute("fname"); 
                  String email = (String) session.getAttribute("email"); 
               %>     
        
                       
                             
                             <ul>
                                 
                                 
                                 <li><a href=""><i class="fa fa-user" style="font-size: 30px;" aria-hidden="true"></i> &nbsp;<%= username1 %></a></li>
                                      
                                   <li>
                                      <button class="btn btn-default" data-toggle="modal" data-target="#myModalHorizontal">
                                                Get Parking
                                            </button>

                                     </li>
                                     <li>
                                      <button class="btn btn-default" data-toggle="modal" data-target="#myModal">
                                                Feedback
                                            </button>

                                     </li>
                                     
                              
                                     <li><a href="logout.jsp">Sign Out</a></li>
                             </ul>
                             
                             

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
                 Parking
                </h2>
            </div>
                                    
                   <!-- Modal Body -->
            <div class="modal-body">
                
                <form class="form-horizontal" role="form" action="modelmessage" method="POST">
                    <input type="hidden" value="0" name="form1" />   
                
                    <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="inputEmail3">Parking</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control"  name="Number" placeholder="Number Plate"/>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-default">Add</button>
                    </div>
                  </div>
                </form>
                
            </div></div></div></div></div></div>
         










  
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
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
                 Feedback
                </h2>
            </div>
                                    
                   <!-- Modal Body -->
            <div class="modal-body">
                
                <form class="form-horizontal" role="form" action="feed" method="POST">
        
                
                    <div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="inputEmail3">Feedback</label>
                    <div class="col-sm-10">
                      <input type="Text" class="form-control"  name="feed" placeholder="feedback"/>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-default">Add</button>
                    </div>
                  </div>
                </form>
                
            </div></div></div></div></div></div>
                
         





          


        
                                        <div class="container">
	<div class="row">
		                                <div class="col-md-12">
                                            <div class="card">
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Your Record</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Notices</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Managing Committe </a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Payment</a></li>
                                    </ul>

                                    <!-- Tab panes -->
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
                                
            <span ></span>
      
      
      
      <%
      
      
      for (int i = 0; i < list.size(); i++)
{
             Society user =  (Society)iterator.next();
   
      if(!user.getEmail().equals(email)){
          continue;
      }
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
      cr.addOrder(Order.desc("id"));
     List list=cr.list();
 
     // List list= session1.createQuery("from com.Admin ORDER BY Id DESC ").list();
   Iterator iterator = list.iterator(); 
      
  
      %>
      <div   >
          <table border="1" id="example2" style="padding: 10px;" width="100%">
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
      </div>
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
                                          
              <table border="1" id="example1" style="padding: 10px;" width="100%">
                                    <thead>
                                        <tr>
                                      
                                            <th>Member</th>
                                            <th>Mobile</th>
                                            <th>Designation</th>
                                         
                                            
                                        <!--    <th>Ordered Time</th> -->
                                        </tr>
                                    </thead>
                                    <tbody>    
                                        <tr><td>Vishal zambare</td><td>9000000000</td><td>Chairman</td></tr>
                                        <tr><td>Sourabh mandhare</td><td>8478888986</td><td>Secretary</td></tr>
                                        <tr><td>Bhavesh singh</td><td>84199330936</td><td>Treasurer</td></tr>
                                        <tr><td>Shubham patil</td><td>9002252565</td><td>Member</td></tr>
                                    </tbody></table>
        
        
        
                                            
                                        </div>
                                        <div role="tabpanel" class="tab-pane" id="settings">
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            <br><br>
                                            
                                            
                                            <form action="payment" method="post">
                                             <div class="col-sm-5">
          
                                                 
                                                 <%
                  Calendar cal = Calendar.getInstance();

                                                     %>
            <div class="panel panel-default">
                <div class="panel-body form-horizontal payment-form">
                    <div class="form-group">
                        <label for="concept" class="col-sm-3 control-label">Description</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="concept" name="concept">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-3 control-label">Month</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control"  id="description" value="<%= new SimpleDateFormat("MMM").format(cal.getTime()) %>" name="month">
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="amo unt" class="col-sm-3 control-label">Amount</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control" id="amount" name="amount">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="date" class="col-sm-3 control-label">Flat Number</label>
                        <div class="col-sm-9">
                            <input type="Number" value="<%= session.getAttribute("flat") %>" disabled="true" class="form-control" id="date" name="flat">
                        </div>
                    </div>   
                    <div class="form-group">
                        <div class="col-sm-12 text-right">
                            <button type="Submit" class="btn btn-lg">
                                <span class="glyphicon glyphicon-send"></span> Pay
                            </button>
                        </div>
                    </div>
                </div>
            </div>            
        </div> <!-- / panel preview -->
                                            </form>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        </div>
                                    </div>
</div>
                                </div>
	</div>
</div>












                
        <br> <script>
    $(document).ready(function() {
    var table = $('#example').dataTable();
    var table = $('#example1').dataTable();
    var table = $('#example2').dataTable();
} );
</script>                                
                                 
    
    

















       <script src="js/jquery.min.js"></script>
                     <script src="js/bootstrap.min.js"></script>
                     <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
                     <script src="//cdn.dataTables.net/tabletools/2.2.4/js/dataTables.tableTools.min.js" type="text/javascript"></script>
                             
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
                                    text: " success",
                                    type: 'success',
                                    buttons: {
                                        closer: false,
                                        sticker: false
                                    }
                                });
                                notice.get().click(function() {
                                    window.location.href = "account.jsp";
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
                                    window.location.href = "account.jsp";
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
                                 
        
    </body>
</html>
