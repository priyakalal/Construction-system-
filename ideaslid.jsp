<%@page import="com.mycompany.construction.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.construction.entities.Product"%>
<%@page import="com.mycompany.construction.dao.ProductDao"%>
<%@page import="com.mycompany.construction.dao.CategoryDao"%>
<%@page import="com.mycompany.construction.helper.FactoryProvider"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Hello, world!</title>
 
 <script crossorigin="anonymous" src="https://kit.fontawesome.com/c8e4d183c2.js"></script>

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

  <style type="text/css">
      
h2{
padding-top: 50px;
}
.carousel-control-next-icon{
    background-color: black;
}
.carousel-control-prev-icon{
    background-color: black; 
}
.d-block w-100{
   background-repeat: no-repeat;
}
</style>
  </head>
  
  <body>
 
    <!--Container-->
<div class="container">
    <h2 class="text-center" style="color:linear-gradient(45deg,#00c0ff,#5ad607);
">CONSTRUCTION IDEAS</h2>
<h2>
<!--slider-->
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
      

      
<!--Slider 1-->
<div class="carousel-item active">
<div class="row">
    
<div class="col-2">
<!--    <div class="d-block w-100">-->
    
                       <a href="guide1.jsp" >
                               <img src="image/pe.jfif"class="d-block w-100"  > </a>
                          
    </div>

<div class="col-2">
 <a href="index.jsp?category=6" >
    <img class="d-block w-100" src="image/brand/berger3.jpg" alt="berger3"> </a>
 </div>
    
<div class="col-2">
    <a href="index.jsp?category=7" ><img class="d-block w-100" src="image/brand/ultratech.jpg" alt="ultratech"> </a></div>
<div class="col-2"><a href="index.jsp?category=8" ><img class="d-block w-100" src="image/brand/acc3.jpg" alt="apple ipad"></a></div>
<div class="col-2"><a href="index.jsp?category=9" ><img class="d-block w-100" src="image/brand/godrej2.jpg" alt="apple ipad"></a></div>
<div class="col-2"><a href="index.jsp?category=10" ><img class="d-block w-100" src="image/brand/agl2.jpg" alt="applewatch"></a></div>
</div>
    </div>
<!--/end of slider 1-->


<!--Slider 2-->
<!--<div class="carousel-item">
<div class="row">
    <div class="col-2"><a href="index.jsp?category=10" ><img class="d-block w-100" src="image/brand/agl2.jpg" alt="applewatch"></a></div>
    <div class="col-2"><a href="index.jsp?category=11" ><img class="d-block w-100" src="image/brand/Ambuja.jpg" alt="beats solo"></a></div>
    <div class="col-2"><a href="index.jsp?category=12" ><img class="d-block w-100" src="image/brand/birla_1.jpg" alt="apple iMac"></a></div>
    <div class="col-2"><a href="index.jsp?category=12" ><img class="d-block w-100" src="image/brand/strongcrete.jpg" alt="apple ipad"></a></div>
<div class="col-2"><a href="index.jsp?category=13" ><img class="d-block w-100" src="image/brand/grip.jpg" alt="apple ipad"></div>
<div class="col-2"><a href="index.jsp?category=13" ><img class="d-block w-100" src="image/brand/jaypee.png" alt="apple ipad"></div>
<div class="col-1"><img class="d-block w-100" src="image/brand/tata2.jpg" alt="apple ipad"></div>
</div>
</div>-->
<!--/end of slider 2-->
</div>
<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
<span class="carousel-control-prev-icon" aria-hidden="true"></span>
<span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#carouselExampleControls" role="button"  data-slide="next">
<span class="carousel-control-next-icon" aria-hidden="true"></span>
<span class="sr-only">Next</span>
</a>
</div>
</div>
<!--/container-->

    <!--Optional javascript-->
    <!-- jQuery first, then Bootstrap JS-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>