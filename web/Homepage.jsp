 

<% if (null == request.getAttribute("success_reg")) {
   request.setAttribute("success_reg", "none");
    }
    if (null == request.getAttribute("sendSuccess")) {
   request.setAttribute("sendSuccess", "none");
    }
    if (null == request.getAttribute("dbError")) {
   request.setAttribute("dbError", "none");
    }
     if (null == request.getAttribute("dbError1")) {
   request.setAttribute("dbError1", "none");
    }
     if (null == request.getAttribute("dbError3")) {
   request.setAttribute("dbError3", "none");
    }
     

// test commit
    
    %><!DOCTYPE html>
<html lang="en">
<head>
  <title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
<link href="//cdn.dataTables.net/tabletools/2.2.4/css/dataTables.tableTools.css" rel="stylesheet" type="text/css"/>

  
  <style>
      
      h1,h1,h3,h4,h5,h6,p,label{
            color: black;
      }
      body{
          
   
    
          
      }
      li {
          
          color: black;
          
      }
      a{
            color: black;
      }
      #sendSuccess{
            display: <%= request.getAttribute("sendSuccess") %>;
        }
         #dbError {
            display: <%= request.getAttribute("dbError") %>;
        }
        #dbError1 {
            display: <%= request.getAttribute("dbError1") %>;
        }
         #dbError3 {
            display: <%= request.getAttribute("dbError3") %>;
        }
         #db_wrong{
            display: <%= request.getAttribute("success_reg") %>;
        }
 

                    h2 {
  font-family: "Avant Garde", Avantgarde, "Century Gothic", CenturyGothic, "AppleGothic", sans-serif;
  font-size: 32px;
  padding: 30px 10px;
  text-align: center;
  text-transform: uppercase;
  text-rendering: optimizeLegibility;
}

a{
    font-family: Avant Garde, Avantgarde, Century Gothic, CenturyGothic, AppleGothic, sans-serif;
 
    font-size: 18px;
}


.deepshd {
  color: #131313;
  background-color: #e7e5e4;
  }
      li {
          
          font-size: 18px;
      }
      
      
      </style>
</head>
<body   style=""
        >
    
    
    <br>
    <br>
    <div class="container" >
        
        
        
        
        <div class="container">
            
            
            
       <div class="alert alert-danger" id="dbError1" role="alert">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <center>It Seems You Have already Registered ! Please Enter Valid Data</center>
                    </div>
      <div class="alert alert-danger" id="dbError" role="alert">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <center>Something went seriously wrong!</center>
                    </div>
         
          <div class="alert alert-danger" id="dbError3" role="alert">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <center>Enter valid mail id and password</center>
        </div>
      <div class="alert alert-success" id="sendSuccess" role="alert">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
       <center>User Registered Successfully</center>
       </div>
      
        </div>
        <div class="row" >
            <div class="col-md-6">
               
            </div>
            <div class="col-md-4 ">
	

    <h2 style=" margin-top: 20px" class="deepshd">Fam Society &nbsp;<i class="fa fa-home" style="font-size:40px"></i></h2>
           
            </div>
            <div class="col-md-2"> 
                
            </div>
        </div>
    </div>
    
    
    
    <br>
    <div class="container"  style="background-color: transparent;">
        <ul class="nav nav-tabs" style="background-color: transparent;">
    <li class="active"><a data-toggle="tab" href="#home">Home&nbsp;<span class="glyphicon glyphicon-home"></span></a></li>
    <li><a data-toggle="tab" href="#menu1">Login &nbsp;<span class="glyphicon glyphicon-send"></span></a></li>
    <li><a data-toggle="tab" href="#menu2">Register&nbsp;<span class="glyphicon glyphicon-paperclip	"></span></a></li>
    <li><a data-toggle="tab" href="#menu3">About & Contact &nbsp;<span class="glyphicon glyphicon-globe"></span></a></li>
    <li><a data-toggle="tab" href="#menu4">Rules and Regulations &nbsp;<span class="glyphicon glyphicon-alert"></span></a></li>
 
        </ul>
   
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        
        <div class="row" >
            <div class="col-md-12">
                
                
                
                
                
                
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
   </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" >
    <div class="item active">
        <img src="img/hs2.jpg" alt="Chania">
    </div>

    <div class="item">
        <img src="img/a2.jpg" alt="Chania">
    </div>

    
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                
                
                
                
                
                
                
            </div>
        </div>
                
        
        
</div>
        
      <br>
        
     
    <div id="menu1" class="tab-pane fade">
     <div class="row">
	 <div class="col-md-6">
	 <br>
         <form action="auth" method="post">
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email" required>
    </div>
	<br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control"  name="pass" placeholder="Password" required>
    </div>
    <br>
    <button type="submit" class="btn btn-primary">Submit</button>

  </form>
	 </div>
	 </div>
	 
	 
	 
    </div>
    <div id="menu2" class="tab-pane fade">
	
	
	 <div class="row">
	 <div class="col-md-5">
	 
	 <br>
	 <br>
	 
         <form class="form-horizontal"  id="myregform" style="margin-left: 10px; margin-right:10px;" action="Register"  method="post">
                           <div class="row">
                                <div class="col-xs-6">
                                    <div class="form-group has-feedback" style="margin-right: -10px;">
                                        <label for="fname">Name</label>
                                        <input type="text" tabindex="1" id="fname" name="fname" class="form-control" required placeholder="First">
                                        
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="form-group has-feedback"  style="margin-right: -10px;">
                                        <label for="lname">&nbsp;</label>
                                        <input type="text" tabindex="2" id="lname" name="lname" class="form-control" required  placeholder="Last">
                                       
                                    </div>
                                </div>
                            </div>
                           
                            <div class="form-group">
                                <label for="pass">Email Id</label>
                                <input type="email" tabindex="4" id="email" name="email_addr" class="form-control" required placeholder="Email ID">
                                 </div>
            
                            <div class="form-group">
                                   <label for="flatno">Flat-No</label>
                                   <select class="form-control has-feedback"  id="flat"  name="flat"  required>
                                    <% 

                                    
                                    for(int i = 001 ; i<=060 ; i++){
                                        %>
                                        
                                    <option  value="<%= i %>" ><%= i %></option>

                                        <%
                                    }
                                    
                                    %>
                                   
                                </select>
                            </div>
                     
            
            <div class="form-group has-feedback">
                                <label for="gender">Building-No</label>
                                <select class="form-control has-feedback"   id="bld" name="bld"  required>
                                    
                                    <option  value="A wing" >A Wing</option>
                                    <option  value="B wing" >B Wing</option>
                                  
                                </select>
                            </div>
                            
                            <div class="form-group has-feedback">
                                <label for="pass">Create a Password</label>
                                <input type="password"  id="pass" name="pass" class="form-control" required placeholder="Password">
                                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <label for="pass_confirm">Confirm your Password</label>
                                <input type="password"  id="pass_confirm" name="pass_confirm" class="form-control" required  placeholder="Confirm Password">
                                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            </div>
                                                
                            
                            <div class="form-group has-feedback">
                                <label for="contact">Mobile Phone</label>
                                <div class="input-group has-feedback">
                                   
                                    <span class="input-group-btn">
                                      <button class="btn btn-default" type="button" disabled>+91</button>
                                    </span>
                                    <input type="text" name="contact" id="contact"   class="form-control" data-toggle="popover" data-trigger="hover" data-placement="right"
                                           data-content="Your phone number helps us with things like keeping your account secure." placeholder="Example: 9004196353" />
                                    
                                </div>
                            </div>
                            
                            <div class="form-group has-feedback" style="margin-left: 10px;">
                                <label for="rights"></label>
                                <div class="checkbox has-feedback">
                                      <input type="checkbox" id="rights" name="rights"  tabindex="11" value="yes" required>
                                      <p style="font-size: 14.5px;">I agree to the fam Housing.com <a href="terms.html"><b>Terms of Service and Privacy Policy</b></a>.</p>
                                </div>
                                </div>

                                <div class="form-group" style="margin-bottom: -20px;">
                                  <div class="col-sm-offset-4 col-sm-12">
                                      <input type="button" id="reg_button" value="Register" class="btn btn-success"  tabindex="12">
                                  </div>
                                </div>
                            </form>






             </div>
             </div>
          </div>
        <div id="menu3" class="tab-pane fade">




             <div class="row">
             <div class="col-md-12">

                                     <h4>Contacts</h4>     


                                     <table border="1" id="example" class="stripe" style="width: 100%;">
                                        <thead>
                                            <tr>

                                                <th>works</th>
                                                <th>Name</th>
                                                <th>Mobile Number</th>


                                            <!--    <th>Ordered Time</th> -->
                                            </tr>
                                        </thead>
                                        <tbody>    
                                            <tr><td>electrician</td><td>Ramesh</td><td>9856235623</td></tr>
                                            <tr><td>security</td><td>Arjun</td><td>9656452585</td></tr>
                                            <tr><td>water supply</td><td>Vivek</td><td>9456878989</td></tr>
                                            <tr><td>maintaince</td><td>Pranesh</td><td>8595657545</td></tr>
                                            <tr><td>Lift</td><td>Akash</td><td>9587585693</td></tr>
                                        </tbody></table>


        <br>

        
        
        <div class="row">
            <div class="col-md-5" >
                
                
                <h2>    Location :  </h2>
                <a href="https://www.google.com/maps/place/FAM+CHS,+Kalash+Udyan,+Sector+11,+Kopar+Khairane,+Navi+Mumbai,+Maharashtra+400709/"><img src="https://maps.googleapis.com/maps/api/staticmap?center=FAM+CHS,+Kalash+Udyan,+Sector+11,+Kopar+Khairane,+Navi+Mumbai,+Maharashtra+400709&zoom=16&scale=false&size=600x300&maptype=roadmap&format=png&visual_refresh=true" alt="Google Map of FAM CHS, Kalash Udyan, Sector 11, Kopar Khairane, Navi Mumbai, Maharashtra 400709"></a>
                </div>
            
            
            <div class=" col-md-offset-2 col-md-4"> 
                <h2>FAM HOUSING SOCIETY</h2>
    		<address>
    			<strong>KOPARKHAIRANE</strong><br>
    			PLOT NO - 19 & 19A <br>
    			SECTOR - 11<br>
    			BONKODE<br>
    			NAVIMUMBAI<br>
    		        PIN - 400709<br>
    			<abbr title="Phone">P:</abbr> 022 27542121
                        <BR>
    		<abbr title="Phone2">P:</abbr> 022 27542122
                
                </address>
            </div>
        </div>
         </div>
    

         </div>
	
	
     </div>
                                    <div id="menu4" class="tab-pane fade">
	
	
<center><h2>Society Rules</center></h2>
 
<p>
Ours is a Co-operative Housing Society and all members and residents are requested to co-operate in maintaining peace and harmony in the society by observing all the rules and regulations.
</p><p>
A list of Do?s and Don?ts has been prescribed as also the penalty for not observing the rules. These will be modified as needed.
</p><center>
<b>Maintenance</b></p></center>
<p>
<center> For One Month : 2000 rs <br>
For Three Months : 2000 rs <br>For Six  Months : 2000 rs <br>
For One Year : 2000 rs <br>
</p>
<b>Security</b></center>
<p>
For security reasons, we have introduced ID cards and vehicle stickers. It is mandatory for all residents, and any helper working for them, to have a valid society ID card. All vehicles belonging to the residents should have a valid vehicle sticker.  
</p><p>
Security staff will stop all visitors at the gate and let them in only after obtaining the permission of the person being visited. Residents? vehicles without sticker will also be stopped at the gate for verification.
</p> <p>
The following documents should be submitted at the Society office to obtain ID card and vehicle sticker:
</p><p><dl><center>
<dt><b>Owners</b></dt>     <br> <dd>  Copy of Vehicle Registration certificate 
Passport size photo of all family members</dd>
 </p><p>
<dt><b>Tenants:</b></dt>  <br>    <dd> Copy of Lease agreement
Copy of Police NOC
Copy of Vehicle Registration certificate
                  Passport size photo of people whose names are in the Police NOC <dd>
 </p></dl></center>
 <br><p>
Please write Name, Flat No. and Telephone No. on the back of each photo.
</p><p> 
  <center>   
<b>Clubhouse</b></center>
 </p><p>
We have a nice Clubhouse consisting of a Swimming pool, Community hall, Gym, Pool table, TT room, and a TV room. All residents are requested to help maintain the facilities in good condition and to follow the rules prescribed for the use of these facilities.
 </p><p>
Clubhouse facilities are free only for residents with a valid ID card. Others will need to pay Rs 50 per session and should be accompanied by a resident with a valid ID card.
 </p><p>
The Community hall at the Clubhouse and the main lawn adjacent to it can be rented by residents for private functions. Click for details.
 </p><p><center>
<b>Sale/Rental of Property</b></center>
</p><p>
It is necessary to get a No Objection Certificate from the society for transfer of property and for renting/leasing of property. Please note that as per a resolution of the General Body, student tenants are not welcome in the society.
</p><p>
Contact the society office for further details.

	
	
</div> 
  <script>
        $('#contact').popover();
        $('#name').popover();
    </script>
    
    <!-- Script for validation of form goes right below, hoss!-->
    <script type="text/javascript">
        function validateName(name)
        {
            var string = $("#"+name).val();
            var regex = /^[a-zA-Z]*$/;
            if(string===null||string==="")
            {
                var div = $("#"+name).closest("div");
                div.addClass("has-warning");
                div.removeClass("has-success");
                div.removeClass("has-error");
                $('#error'+name).remove();
                
                if(name==='fname')
                    div.append('<span id="error'+name+'" style="color: red;font-size: 10px;display: none">Please enter your First Name</span>');
                if(name==='lname')
                    div.append('<span id="error'+name+'" style="color: red;font-size: 10px;display: none">Please enter your Last Name</span>');
                $('#error'+name).css({"display":"inline"});
                $("#glyphcn"+name).remove();
                div.append('<span id="glyphcn'+name+'"class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span>');
                return false;
            }
            else if (regex.test(string))
            {
                var div = $("#"+name).closest("div");
                
                div.removeClass("has-warning");
                div.addClass("has-success");
                div.removeClass("has-error");
                
                $('#error'+name).remove();
                $('#error'+name).css({"display":"none"});
                $("#glyphcn"+name).remove();
                div.append('<span id="glyphcn'+name+'"class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
                return true;
            }
            else
            {
                var div = $("#"+name).closest("div");
                div.removeClass("has-warning");
                div.removeClass("has-success");
                div.addClass("has-error");
                
                $("#error"+name).remove();
                div.append('<span id="error'+name+'" style="color: red;font-size: 10px;display: none">Enter only Alphabets.</span>');
                $('#error'+name).css({"display":"inline"});
                $("#glyphcn"+name).remove();
                div.append('<span id="glyphcn'+name+'"class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
                return false;
            }
        }
        
        function validatePassword(key1)
        {
            var keyLength = $("#"+key1).val().length;
            var string = $("#"+key1).val();
            var regex_space = new RegExp(" ");
            if(keyLength===0)
            {
                var div = $("#"+key1).closest("div");
                $("#error"+key1).remove();
                $('#glyphcn'+key1).remove();
               
                div.removeClass("has-warning");
                div.removeClass("has-success");
                div.addClass("has-error");
                
                div.append('<span id="glyphcn'+key1+'"class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
                div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none">Please enter a Password.</span>');
                $('#error'+key1).css({"display":"inline"});
                return false;
            } 
            else 
            {
                if(regex_space.test(string))
                {
                    var div = $("#"+key1).closest("div");
                    $("#error"+key1).remove();
                    $('#glyphcn'+key1).remove();

                    div.addClass("has-warning");
                    div.removeClass("has-success");
                    div.removeClass("has-error");

                    div.append('<span id="glyphcn'+key1+'"class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span>');
                    div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none">Password must not contain any spaces.</span>');
                    $('#error').css({"display":"inline"});
                    return false;
                }
                else
                {
                    if(keyLength<8)
                    {
                        var div = $("#"+key1).closest("div");
                        $("#error"+key1).remove();
                        $('#glyphcn'+key1).remove();

                        div.addClass("has-warning");
                        div.removeClass("has-success");
                        div.removeClass("has-error");

                        div.append('<span id="glyphcn'+key1+'"class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span>');
                        div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none">Password must be greater than or equal to 8 characters.</span>');
                        $('#error'+key1).css({"display":"inline"});
                        return false;
                    }
                    else
                    {
                        var div = $("#"+key1).closest("div");
                        $("#error"+key1).remove();
                        $('#glyphcn'+key1).remove();

                        div.removeClass("has-warning");
                        div.addClass("has-success");
                        div.removeClass("has-error");

                        div.append('<span id="glyphcn'+key1+'"class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
                        return true;
                    }
                }
            }
        }
        function passwordConfirmation(key1, key2)
        {
            var keyValue1 = $("#"+key1).val();
            var keyValue2 = $("#"+key2).val();
            
            var keyLength = $("#"+key1).val().length;
            if(keyLength===0)
            {
                var div = $("#"+key1).closest("div");
                $("#error"+key1).remove();
                $('#glyphcn'+key1).remove();
               
                div.removeClass("has-warning");
                div.removeClass("has-success");
                div.addClass("has-error");
                
                div.append('<span id="glyphcn'+key1+'"class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
                div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none">Please enter the confirmation Password.</span>');
                $('#error'+key1).css({"display":"inline"});
                return false;
            } 
            else if(keyValue1===keyValue2)
            {
                var div = $("#"+key1).closest("div");
                $('#error'+key1).css({"display":"none"});
                $("#error"+key1).remove();
                $('#glyphcn'+key1).remove();

                div.removeClass("has-warning");
                div.addClass("has-success");
                div.removeClass("has-error");

                div.append('<span id="glyphcn'+key1+'"class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
                return true;
            }
            else
            {
                var div = $("#"+key1).closest("div");
                $("#error"+key1).remove();
                $('#glyphcn'+key1).remove();
               
                div.removeClass("has-warning");
                div.removeClass("has-success");
                div.addClass("has-error");
                
                div.append('<span id="glyphcn'+key1+'"class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
                div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none">Please enter the same password as above.</span>');
                $('#error'+key1).css({"display":"inline"});
                return false;
            }
        }
       
        function validateRights(key1)
        {
            var val = document.getElementById(key1).checked;
            if(!val)
            {
                var div = $("#"+key1).closest("div");
                div.append('<span id="glyphcn'+key1+'" style="margin-right: -20px;" class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
                div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none">You really need to check this before registeration.</span>');
                $('#error'+key1).css({"display":"inline"});
                return false;
            }
            else
            {
                var div = $("#"+key1).closest("div");
                $('#error'+key1).css({"display":"none"});
                $("#error"+key1).remove();
                $('#glyphcn'+key1).remove();

                div.removeClass("has-warning");
                div.addClass("has-success");
                div.removeClass("has-error");

                div.append('<span id="glyphcn'+key1+'" style="margin-right: -20px;" class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
                return true;
            }
        }
        function validateContact(key1)
        {
            var value = $("#"+key1).val();
            var regex = /[^0-9]/;
            if(value===null||value==="")
            {
                var div = $("#"+key1).closest("div");
                div.addClass("has-warning");
                div.removeClass("has-success");
                div.removeClass("has-error");
                $('#error'+key1).remove();
                
                $("#"+key1).css({"margin-top":"14px"});
                div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none;">Please enter your contact number.</span>');
                $('#error'+key1).css({"display":"table"});
                $("#glyphcn"+key1).remove();
                div.append('<span id="glyphcn'+key1+'" style="margin-top: 14px;" class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span>');
                return false;
            }
            else if(value.length!==10||regex.test(value))
            {
                var div = $("#"+key1).closest("div");
                div.removeClass("has-warning");
                div.removeClass("has-success");
                div.addClass("has-error");
                $('#error'+key1).remove();
                
                $("#"+key1).css({"margin-top":"14px"});
                div.append('<span id="error'+key1+'" style="color: red;font-size: 10px;display: none;">Please enter a valid contact number.</span>');
                $('#error'+key1).css({"display":"table"});
                $("#glyphcn"+key1).remove();
                div.append('<span id="glyphcn'+key1+'" style="margin-top: 14px;" class="glyphicon glyphicon-warning-sign form-control-feedback" aria-hidden="true"></span>');
                return false;
            }
            else
            {
                var div = $("#"+key1).closest("div");
                $('#error'+key1).css({"display":"none"});
                $("#error"+key1).remove();
                $('#glyphcn'+key1).remove();

                div.removeClass("has-warning");
                div.addClass("has-success");
                div.removeClass("has-error");

                $("#"+key1).css({"margin-top":" 0px"});
                div.append('<span id="glyphcn'+key1+'" style="margin-top: 0px;" class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
                return true;
            }
        }
        
        
          function validateFlat(key1, key2)
        {
            
 
             var keyValue1 = $("#"+key1).val();
             var keyValue2 = $("#"+key2).val();
             var test = parseInt(keyValue1);
              
              if(keyValue2.startsWith("A")){
                 
                  if(test>=001 && test<=030) {
                
                        return true ;
                  }
                  else{
                      alert("Please Select Correct Wing");
                      return false;
                  }
                  
                 
              }
        
              else if(keyValue2.startsWith("B")){
                  
                  if(test>=031 && test<=060) {
                      
                      return true ;
                  }
                  else{
                      alert("Please Select Correct Wing");
                      return false;
                  }
                  
                 
              }
            
    
        }
        
      
          $(document).ready(
        
            function()
            {
                $("#reg_button").click(
                    function()
                    {
                        validateName("fname");
                        validateName("lname");
                        validatePassword("pass");
                        passwordConfirmation("pass_confirm","pass");
                        validateFlat("flat","bld");
                        validateRights("rights");
                        validateContact("contact");
                        if(validateName("fname")&&validateFlat("flat","bld")&&validateName("lname")&&validatePassword("pass")&&passwordConfirmation("pass_confirm","pass")&&validateRights("rights")&&validateContact("contact"))
                            $("form#myregform").submit();
                        else
                            $("#wrong").css({"display": "block"});
                    }
                );
            }
            
        );
    </script>
    
    
    
                     <script src="js/jquery.min.js"></script>
                     <script src="js/bootstrap.min.js"></script>
                     <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
                     <script src="//cdn.dataTables.net/tabletools/2.2.4/js/dataTables.tableTools.min.js" type="text/javascript"></script>
<script>
    $(document).ready(function() {
    var table = $('#example').dataTable();
   
   
    
} );
</script>

</body>
</html>
