
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include  file="components/navbar2.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">

                    <div class="card mt-3">

                        <div class="card-header custom-bg text-Black">
                            <h3>Login here</h3>
                        </div>

                        <div class="card-body">                            
                            <%@include file="components/message.jsp" %>
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input  name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input  name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <a href="register.jsp" class="text-center d-block mb-2"> if not registered click here </a>
                                <div class="container text-center"> 

                                    <button type="submit" class="btn btn-primary border-0 custom-bg ">Submit</button>
                                    <button type="reset" class="btn btn-primary custom-bg border-0 ">Reset</button>
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
                            
<!--                            <section>
                                
       
         Font Awesome 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
 
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">

  JQuery 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 Bootstrap tooltips 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
 Bootstrap core JavaScript 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js/"></script>
 MDB core JavaScript 
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

   

                            </section>               -->
   </body>
    <%@include file="components/footer.jsp" %>  
</html>
