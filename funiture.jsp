<%-- 
    Document   : funiture
    Created on : 08-Nov-2020, 9:03:46 AM
    Author     : PRIYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%@include file="components/common_css_js.jsp" %>
        <script crossorigin="anonymous" src="https://kit.fontawesome.com/c8e4d183c2.js"></script>

        <script>
             var indexValue = 0;
      function slideShow(){
        setTimeout(slideShow, 2500);
        var x;
        const img = document.querySelectorAll("img");
        for(x = 0; x < img.length; x++){
          img[x].style.display = "none";
        }
        indexValue++;
        if(indexValue > img.length){indexValue =1}
        img[indexValue -1].style.display = "block";
      }
      slideShow();
            </script>
        <style>
            /**{background-color:floralwhite;}*/
            .body{
               /*background-color:floralwhite;*/
            background-image: url("image/wall.jpeg");} 
              
/*        body{
  margin: 0;
  padding: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
}*/
.content{
  height: 400px;
  width: 1200px;
  overflow: hidden;
  box-shadow: 1px 1px 15px rgba(0,0,0,0.4);
}
.content .images{
  height: 100%;
  width: 100%;
}
.images img{
  height: 100%;
  width: 100%;
}

   
 
            .cart{
               
                
                /*background-color: deeppink;*/
                border-color: #ed2b66;
                color:black;
                
            }
            .team-img{
	width:100px;
	height: 100px;
	border-radius: 50%;
	background-color: #3d3d3e;
	margin: 15px 0px ;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}
 
.t-id {
	font-family: myriad pro;
	
	
}
.t-id a{
	font-size: 18px;
	color:#3d3d3e;
	font-weight: bold;
}
.t-id p{
	font-size: 14px;
	color:#9f9e9e;
	margin: 0px;
}
.team-box{
	margin: 0px 30px 30px 0px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
        
	
}
.t-box-container{
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 20px;
}
.t-img1{
   
	background-image:url("image/logo/cod (1).svg");
}
    .t-img2{
	background-image:url("image/logo/great (1).png");     
}
.t-img3{
	background-image: url("image/logo/return.png");
      
}
.t-img4{
	background-image: url("image/logo/great (1).png");
}
 .t-heading,
.s-heading{
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
 
.p-heading p:nth-child(1),
.t-heading p:nth-child(1),
.s-heading p:nth-child(1){
	font-family:Magmawave Caps ;
	font-weight: bold;
	font-size: 25px;
	color: #3d3d3e;
	width:40%;
	text-align: center;
	margin:10px;
}
.p-heading p:nth-child(2),
.t-heading p:nth-child(2),
.s-heading p:nth-child(2){
	font-family: myriad pro;
	font-size: 14px;
	color:#9f9e9e;
	margin-top: 0px;
        
}
.list-group mt-4{
    color:black;
    background-color: deeppink;
}

            .col-lg-3 {
      padding: 0 7px;
    }

    .text-center {
      text-align: center;
    }

    h2 {
      color: #111;
      font-size: 20px;
      font-weight: 400;
      line-height: 1.3;
      padding-bottom: 15px;
    }

    h3 {
      color: #111;
      font-size: 28px;
      font-weight: 500;
    }

    .btn {
      height: 29px;
      padding: 2px 20px;
      background: linear-gradient(to bottom,#f7dfa5,#f0c14b);
      border-color: #a88734 #9c7e31 #846a29;
      color: #111;
      border-width: 1px;
      border-style: solid;
      cursor: pointer;
      font-size: 13px;
      box-shadow: 0 1px 0 rgba(255,255,255,.4) inset;
      border-radius: 3px;
    }

    .btn:hover {
      border-color: #a88734 #9c7e31 #846a29;
      background: linear-gradient(to bottom,#f5d78e,#eeb933);
      color: #111;
    }

    #products {
      padding: 0 0 60px 0;
    }

    #products .col {
      background: rgba(19,19,4,.04);
      padding: 15px;
      min-height: 578px;
      position: relative;
    }

    #products h2 {
      margin: 0;
    }

    #products img {
      max-width: 100%;
    }

    #products .thumbnail {
      display: inline-block;
      padding: 0;
      border: none;
      margin: 8px;
      background: none;
    }

    #products .thumbnail:hover {
      text-decoration: none;
    }

    #products .thumbnail .caption {
      padding: 0;
      margin: 12px 0 4px 0;
      display: inline-block;
      color: #111;
      font-size: 13px;
    }

    #products #welcome {
      padding-top: 80px;
    }

    #products #welcome h2 {
      font-size: 26px;
    }

    #products #welcome p {
      font-size: 13px;
      color: #111;
      margin-bottom: 60px;
    }

    #products #welcome .btn {
      width: 100%;
    }

    #products #amazon-basics img {
      max-width: 151px;
    }

    #products #dress img {
      max-width: 200px;
    }

    #products #deal-day {
      margin-top: 20px;
      position: relative;
      min-height: 250px !important;
    }

    #products #deal-day h2 {
      margin-bottom: 15px;
    }

    #products #deal-day h3 {
      margin: 0;
      line-height: 26px;
    }

    #products #deal-day img {
      max-width: 88px;
      position: absolute;
      right: 30px;
      top: 50px;
    }

    #products .footer {
      position: absolute;
      bottom: 0;
      border-top: 1px solid #e7e7e7;
      width: 90%;
      padding: 17px 0 17px;
      font-size: 13px;
      color: #555;
    }
   @media (min-width: 1200px) {
      .container {
        width: 1560px;
      }
    }

    #promo .col-lg-12 {
      padding: 0 22px 10px 22px;
    }

    #promo .carousel {
      margin-top: -2px;
    }

        </style>
        
        <section>
    <div class="content">
      <div class="images">
         <a href="index.jsp?category=3">
          <img src="image/ban.png">
          </a>
          
<!--                       <a href="index.jsp?category=3" >
                       <img src="image/slider/s2.png"></a>


      <a href="index.jsp<?category=1" >
        <img src="image/slider/s3.png"></a>
         <a href="index.jsp?category=1" >  
        <img src="image/slider/c4e.png"></a>
          <a href="index.jsp?category=1" >
        <img src="image/slider/s3.png"></a>
           <a href="index.jsp?category=1" >
               <img src="image/slider/s3.png"></a>
      </div>-->
</div>
                </section>
        <section>
            l
        </section>
        <section>
                <!--Container-->
<div class="container">
    <h2 class="text-center" style="color:linear-gradient(45deg,#00c0ff,#5ad607);
"></h2>
<h2>
<!--slider-->
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
      

      
<!--Slider 1-->
<div class="carousel-item active">
<div class="row">
    
<div class="col-2">
<!--    <div class="d-block w-100">-->
    
                       <a href="index.jsp?category=5" >
                               <img src="image/brand/asian2.jpg"class="d-block w-100"  > </a>
                          
    </div>

<!--<div class="col-2">
 <a href="index.jsp?category=6" >
    <img class="d-block w-100" src="image/brand/berger3.jpg" alt="berger3"> </a>
 </div>
    
<div class="col-2">
    <a href="index.jsp?category=7" ><img class="d-block w-100" src="image/brand/ultratech.jpg" alt="ultratech"> </a></div>
<div class="col-2"><a href="index.jsp?category=8" ><img class="d-block w-100" src="image/brand/acc3.jpg" alt="apple ipad"></a></div>
<div class="col-2"><a href="index.jsp?category=9" ><img class="d-block w-100" src="image/brand/godrej2.jpg" alt="apple ipad"></a></div>
<div class="col-2"><a href="index.jsp?category=10" ><img class="d-block w-100" 
                                                         src="image/brand/agl2.jpg" alt="applewatch"></a></div>-->
</div>
    </div>
<!--/end of slider 1-->


<!--Slider 2-->
<div class="carousel-item">
<div class="row">
    <div class="col-2"><a href="index.jsp?category=10" ><img class="d-block w-100" src="image/brand/agl2.jpg" alt="applewatch"></a></div>
    <div class="col-2"><a href="index.jsp?category=11" ><img class="d-block w-100" src="image/brand/Ambuja.jpg" alt="beats solo"></a></div>
    <div class="col-2"><a href="index.jsp?category=12" ><img class="d-block w-100" src="image/brand/birla_1.jpg" alt="apple iMac"></a></div>
    <div class="col-2"><a href="index.jsp?category=12" ><img class="d-block w-100" src="image/brand/strongcrete.jpg" alt="apple ipad"></a></div>
<div class="col-2"><a href="index.jsp?category=13" ><img class="d-block w-100" src="image/brand/grip.jpg" alt="apple ipad"></div>
<div class="col-2"><a href="index.jsp?category=13" ><img class="d-block w-100" src="image/brand/jaypee.png" alt="apple ipad"></div>
<!--<div class="col-1"><img class="d-block w-100" src="image/brand/tata2.jpg" alt="apple ipad"></div>-->
</div>
</div>
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
        </section>
    </body>
</html>
