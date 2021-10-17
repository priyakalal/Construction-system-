<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>

        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>

        <%@include  file="components/navbar.jsp" %>
          
       <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <script>
            
      

            jQuery.validator.addMethod("checkemail", function(value, element) {
               return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            });
            jQuery(document).ready(function($) {
                $("#signup").validate({
                    //ignore: [],
                    rules: {
                        user_name: {
                            required: true
                        },
                        user_email: {
                            required: true,
                            checkemail: true
                        },
                        user_phone: {
                            required: true,
                            minlength: 10,
                            maxlength: 10
                        },
                        user_password: {
                            required: true,
                            minlength: 6
                        },
                        user_confirmpassword: {
                            required: true,
                            minlength: 6,
                            equalTo: "#password"
                        }
                    },
                    messages: {
                        user_name: {
                            required: "Please enter the name."
                        },
                        user_email: {
                            required: "Please enter the email.",
                            email: "Please enter valid email id"
                        },
                        user_phone: {
                            required: "Please enter the number.",
                            minlength: "Please enter the  10 digit number .",
                            maxlength: "more than 10 digits."
                        },
                        user_password: {
                            required: "Please enter the password.",
                            minlength: "Please enter the password greater than or equal to  6.",
                        },
                        user_confirmpassword: {
                            required: "Please reenter the password.",
                            minlength: "Please enter the password greater than or equal to 6.",
                            equalTo: "mismatch password"
                        }
                    }
                });
            });
        </script>
        <style>
            .error{   
                color:red;
            }
            input{
                display: block;
            }
            #msg
            {
                background: red;
                color:black;
                border: 1px solid red;
                width:24%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;
            }
        </style>
        
     <div class="container-fluid">
            <div class="row mt-3">
                <div class="col-md-4 offset-md-4">                  

                    <div class="card">                        
                        <%@include  file="components/message.jsp" %>                        
                        <div class="card-body px-5">
                            <div class="container text-center">
                                <img src="image/pngkey.png"  style="max-width: 100px;" class="img-fluid" alt="">
                            </div>
                      <h3 class="text-center my-3">Sign up here !!</h3>

                            <form action="RegisterServlet" id="signup" method="post">

                                <div class="form-group">
                                    <label for="name">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="email">User Email</label>
                                    <input name="user_email" type="email" class="form-control" id="email" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="password">User password</label>
                                    <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>
                                 <div class="form-group">
                                    <label for="Confrim_password">Confirm-password</label>
                                    <input  name="user_confirmpassword" type="password" class="form-control"  placeholder="Enter here" aria-describedby="emailHelp">
                                </div>

                                <div class="form-group">
                                    <label for="phone">User phone</label>
                                    <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter here" aria-describedby="emailHelp">
                                </div>
                                <div class="container text-center"> 
                                    <button class="btn btn-outline-success">Register</button>
                                    <button class="btn btn-outline-warning">Reset</button>
                               </div>
                           </form>
                  </div>
                   </div>
                </div>
            </div>
        </div>
                        
                         <section>
                                l
                            </section>          
                            
                            <section>
                                
       
         <!--Font Awesome--> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
 
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">

  <!--JQuery--> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <!--Bootstrap tooltips--> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
 <!--Bootstrap core JavaScript--> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js/"></script>
 <!--MDB core JavaScript--> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>


    <footer class="page-footer">

        <div class="bg">
            <div class="container">
                <div class="row py-4 d-flex align-items-center">

                    <div class="col-md-12 text-center">
                        <a href="#"><i class="fab fa-facebook-f text -white mr-4"></i></a>
                        <a href="#"><i class="fab fa-twitter text -white mr-4"></i></a>
                        <a href="#"><i class="fab fa-google-plus-g text -white mr-4"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in text -white mr-4"></i></a>
                        <a href="#"><i class="fab fa-instagram text -white mr-4"></i></a> 
                    </div>
                </div>
            </div>
        </div>

        <div class="container text-center text-md-left mt-5">
            <div class="row">
                <div class="col-mb-3 mx-auto mb-4">
                    <h6 class="text-uppercase font-weight-bold">The Providers</h6>
                    <hr class="bg-success mb-4 mt-0 d-inline-block mx-auto" style="width:125px;height:2px">
                    <p class="mt-2">Construction Project Management is a professional service that uses specialized, project management techniques to oversee the planning, design, and construction of a project, from its beginning to its end. Construction Project Management Software helps to control a project's time, cost and quality.</p>
                </div>

                <div class="col-md-2 mx-auto mb-4">
                    <h6 class="text-uppercase font-weight-bold">Products</h6>  
                    <hr class="bg-success mb-4 mt-0 d-inline-block mx-auto" style="width:85px;height:2px"> 
                

                  <ul class="j font-weight-bold" >
                    <li class="my-2 "><a style="color:black" href="#">BEST-DEALS</a></li>
                    <li class="my-2"><a style="color:black"href="#">EASY-RETURN</a></li>
                    <li class="my-2"><a style="color:black"href="#">HIGH-QUALITY</a></li>
                    <li class="my-2"><a style="color:black"href="#">LOW-COST</a></li>
                  </ul>
               </div>
             <div class="col-md-2 mx-auto mb-4">
                <h6 class="text-uppercase font-weight-bold">Usefull Links</h6>  
                <hr class="bg-success mb-4 mt-0 d-inline-block mx-auto" style="width:110px;height:2px">

                <ul class="j font-weight-bold">
                    <li class="my-2 "><a style="color:black"href="#">Home</a></li>
                    <li class="my-2"><a style="color:black"href="#">About</a></li>
                    <li class="my-2"><a style="color:black"href="#">Services</a></li>
                    <li class="my-2"><a style="color:black"href="#">Contact</a></li>
                    
                </ul>
            </div>

            <div class="col-md-2 mx-auto mb-4">
                <h6 class="text-uppercase font-weight-bold">Contact</h6>  
                <hr class="bg-success mb-4 mt-0 d-inline-block mx-auto" style="width:75px;height:2px">

                <ul class="j font-weight-bold">
                    <li class="my-2">Sky Construction</li>
                    <li class="my-2">PK@gmail.com</li>
                    <li class="my-2">+9987654334 </li>
                    <li class="my-2"> +002233456887</li>
                </ul>
            </div>
        </div>
     

     <div class="footer-copyright text-center py-3 font-weight-bold " style="background-color:crimson;">
         <p>&copy; Copyright 
             <a href="#">Pk.com</a> Sky Construction 2020. All Right reserved</p>
             
     </div>
            <style>
                footer.page-footer {
    bottom: 0;
    color: #fff;
    width: 1200px;
}
    .page-footer{
        background-color:floralwhite;
        color:black;
    }
    .bg{
        background-color: crimson;
    }
    .container{
        color:black;
    }
   .list-unstyled {
      color:black;
    }
     .list{
        color:black;
    }
    .bg .footer-copyright text-center py-3{
        background-color: crimson;
    }
</style>
    
   </footer>

   

                            </section> 
                <%--<%@include  file="components/footer.jsp" %>--%>
    </body>
</html>
