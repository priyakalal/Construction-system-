
<%@page import="com.mycompany.construction.entities.Product"%>
<%@page import="com.mycompany.construction.dao.ProductDao"%>
<%@page import="com.mycompany.construction.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.construction.helper.FactoryProvider"%>
<%@page import="com.mycompany.construction.entities.Category"%>
<%@page import="com.mycompany.construction.entities.User"%>
<%
    User user1 = (User) session.getAttribute("current-user");

%>

                
<!-- <html>
<head>
<title>Responsive Menu</title>
<link href="css/style.css" rel="stylesheet" type="text/css">

<script crossorigin="anonymous" src="https://kit.fontawesome.com/c8e4d183c2.js"></script>

<style>
/*    @charset "utf-8";*/
/* CSS Document */
body{
 margin:0px;
 padding:0px;
 background-color:#f1f1f1;

}
 
 
ul{
 list-style:none;
}
a{
 text-decoration: none;
}
header{
  background-color:crimson;
 /*background-color: #FFFFFF;*/
 box-sizing: border-box;
 width:100%;
 padding: 0px 30px;
 display: flex;
 align-items: center;
 /*color:white;*/
 
}
.logo{
 border-right: 1px solid #E7E7E7;
 height: 50px;
 line-height: 50px;
 font-size: 25px;
 padding-right: 10px;
 font-weight: bold;
 font-family: RoadTest;
 letter-spacing: 5px;
 color: #3D3D3D;

}
 
.logo {
 display: flex;
 justify-content: center;
 align-items: center;
 /*background-image:url("image/download.png");*/
}
.menu ul{
 display: flex;
margin: 0px;
padding: 0px;
}
.menu{
 display:flex;
 align-items:center;
}
 
 
.menu ul li a{
 border-right: 1px solid #E7E7E7;
 height: 50px;
 line-height: 50px;
 margin: 0px;
 padding: 0px 20px;
 display: flex;
 font-size: 12px;
 letter-spacing: 1px;
 text-transform: uppercase;
 font-weight: 600;
 font-family: calibri;
 /*color: #5f5f5f;*/
 color:whitesmoke;
}
.menu ul li a:hover{
 background-color: #E8E8E8;
 color: #3F3F3F;
 
}
.menu{
 margin-right: auto;
 
}
.search-icon:before{
 content:'\f002';
 font-family: fontAwesome;
 line-height: 30px;
 color: #474747;
 
 
}
.search-icon.active:before{
 content:'\f00d';
 
}
 
 
 
.menu ul li ul{
position: absolute;
 left: 0;
 background-color: #161616;
 flex-direction: column;
 
display: none !important;
 
}
.menu ul li{
 position: relative;
}
 
.menu ul li ul li{
 display:block;
 width: 200px;
}
.menu ul li ul li a{
 color: #ACACAC !important;
 border-bottom: 1px solid #424242;
 
}
.menu ul li.active ul{
 display:block !important;
}
 
.menu ul li ul li  a:hover{
 background-color: #1D1D1D !important;
 color:#D1D1D1 !important;
}
 
.sub-menu:before{
 content: '\f0d7';
 font-family:fontAwesome;
 
 position: absolute;
 line-height: 50px;
 font-size: 12px;
 color: #727272;
 right: 10px;
}
 /*#2a2829*/
.search-box{
 
 width:100%;
 height: 50px;
 box-sizing: border-box;
 background-color: #ffffff;
 display: flex;
 justify-content: space-between;
 align-items: center;
 color: black;
 display: none;
 padding: 0px 20px 0px 20px;
 transition: all ease 0.5s;
}
.navigation{
 position: relative;
 box-shadow: 1px 1px 20px rgba(0,0,0,0.01);
}
.search-box input{
 width: 70%;
 height: 50px;
 outline: none;
 background: transparent;
 border:none;
 color: #E3E3E3;
 font-size: 16px;
}
 
.s-icon{
 color:#CDCDCD;
}
.search-box input::placeholder{
 color:#AFAFAF;
 text-transform: uppercase;
 letter-spacing: 1px;
 font-size: 12px;
}
.search-box.active{
 display:flex;
 
}
 
 
 
@media(max-width:900px){
 .toggle:before{
 content:'\f0c9';
 font-family: fontAwesome;
 line-height: 30px;
  display: none;}
 
 .logo{
  border: none;
 }
 .menu{
  margin-right: 0px !important;
 }
  header nav ul{
  position: absolute;
  width: 100%;
  height: calc(100vh - 50px);
  background-color: #353535;
  top: 50px;
  left: 0;
  transition: 0.5s;
  display: block !important;
  overflow: hidden;
  display: none !important;
 }
 
 header{
  display: flex;
  justify-content: space-between;
 }
 nav ul li a{
  border-bottom: 1px solid #474747 ;
  border-right: none !important;
  color:#bebebe !important;
 }
 
.toggle.active:before{
 content:'\f00d' !important;
 
}
 nav ul li a:hover{
  background-color: #2F2F2F !important;
 }
 header.active-menu ul{
  display: block !important;
 }
 .toggle:before{
  display: block;
 }
 header.active-menu,
 header.active-search
 {
  background-color: #353535;
  height: 50px;
  color: #FFFFFF;
  
 }
 .search-icon.active:before
 {
  color: #FFFFFF;
 }
 
 
 .menu ul li ul{
  position: relative;
  top: 0px;
  height:auto;
 }
 .menu ul li ul li{
  width: 100%;
  
 }
 
 header.active-menu  .logo,
 header.active-menu  .search-icon{
  display: none;
  
 }
 header.active-search .logo,
 header.active-search .toggle{
  display: none;
  
 }
 
}
.image{
    
    background-image:url(image/logo/sky.jpeg);
    width:100px;
    height:70px;
}
</style>

</head>
<body>
 <section class="navigation">
 <header>

 <div class="toggle">
</div>

 <nav class="menu">
 

 
 <a class="navbar-brand" href="#">
         <img src="image/logo/sky5.jpeg" width="100" height="70" alt="">
    </a>
<ul>
    <li class="image"></li>
<li><a href="home.jsp"> Home </a></li>
<li class="sub-menu">More 
<li class="sub-menu"><a href="profile.jsp"> More </a>

 <ul>
<li><a href="about.jsp">About-Us</a></li>
<li><a href="contactus.jsp">Contact-Us</a></li>
</ul>
</li>
<li><a href="about.jsp">About-Us</a></li>
<li><a href="contactus.jsp">Contact-Us</a></li>
   


<%                    if (user1 == null) {

                %>

                <li><a href="login.jsp">Login</a> </li>

                <li><a href="register.jsp">Sign-Up</a> </li>


                <%                        } else {


                %>
                <li>
                    <a  href="<%=  user1.getUserType().equals("admin") ? "admin.jsp" : "index.jsp"%>"><%= user1.getUserName()%> </a>
                </li>

                <li> <a href="LogoutServlet"> Logout  </a>
                </li>



                <%    }

                %>
                <li>
                    <a  href="#!" data-toggle="modal" data-target="#cart">  <i class="fa fa-cart-plus"  style="font-size: 20px;"></i> <span class="ml-0 cart-items">[0]</span>  </a>
                </li>
</ul>
                 <u1>
 <br>
<div class="search-icon">
</div>

 <br/>
<div class="search-box">

 <input placeholder=" Search Something Here" type="text" />
<br/>
<br>
<div class="search-icon">
</div>

 <br/>
<div class="s-icon">
<i class="fas fa-search"></i></div> 
</div>
                 </u1>
</nav>
     </header>
 </section>
 <script src="js/navbarjs.js" type="text/javascript"></script>
</body>
</html>-->
   
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>h</title>

      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <link rel="stylesheet" href="css/style.css"/>
      <script>
           $(function() {
      $('#nav-search-select').change(function() {
        var selectedText = $(this).find('option:selected').text();
        $('#nav-search').find('.nav-search-label').html(selectedText);
      });
    });
      </script>
      <style>
    html, body {
      margin: 0;
      font-family: arial,sans-serif;
      min-width: 900px;
      line-height: 14px;
      font-size: 14px;
    }

    * {
      box-sizing: border-box;
    }

    a {
      color: #0066c0;
    }

    a:hover {
      color: #c45500;
    }
    .alert alert-success alert-dismissible fade show{
        color:black;
    }
    #banner {
      /*background: #F6F6F6 url('image/ban1.png') no-repeat top left;*/
      background-image:url('image/b12.png');
      width:100%;
      height: 100px;
      background-size: 100%;
      min-width: 0.5px;
      display: block;
    }
    
    header {
      background-color: crimson;
      height: 50px;
    }

    .nav-left {
      position: relative;
      float: left;
      width: auto;
      display: inline-block;
    }

    .nav-right {
      position: relative;
      float: right;
      width: auto;
      display: inline-block;
    }

    .nav-fill {
      width: auto;
      white-space: nowrap;
      overflow: hidden;
    }

    #nav-logo {
      padding: 11px 18px 0 24px;
      position: relative;
      width: 192px;
    }

    #nav-logo .nav-logo-link {
      background: transparent url('image/pngkey.png') no-repeat top left;
      background-size:cover;
      width: 100px;
      height: 50px;
      display: block;
    }

/*    #nav-logo .nav-logo-tagline {
      color: white;
      position: absolute;
      top: 31px;
      left: 93px;
      font-size: 11px;
      line-height: 11px;
      font-family: arial, sans-serif;
      font-weight: 700;
    }*/

    #nav-logo .nav-logo-tagline:hover {
      color: #ffffff;
    }

    #nav-holiday {
      top: 9px;
      position: relative;
      /*background-image: url('image/berger3.jpg');*/
      
      background-repeat: no-repeat;
      width: 400px;
      height: 100px;
    }

    #nav-holiday a {
      display: block;
      height: 100%;
    }

    #nav-search {
      position: relative;
      display: block;
      overflow: hidden;
      padding-top: 11px;
      padding-right: 25px;
    }

    #nav-search input {
      width: 100%;
    }

    #nav-search .nav-left {
      height: 35px;
      background-color: #f3f3f3;
      border-radius: 4px 0 0 4px;
      border: 1px solid #cdcdcd;
      overflow: hidden;
    }

    #nav-search .nav-left:hover {
      background-color: #dadada;
      border-left-color: #dadada;
      border-top-color: #dadada;
      border-bottom-color: #dadada;
    }

    #nav-search .nav-search-label {
      color: #777;
      display: block;
      font-size: 12px;
      line-height: 33px;;
      margin-right: 21px;
      margin-left: 10px;
    }

    #nav-search .nav-left i {
      position: absolute;
      top: 10px;
      right: 9px;
      color: #a0a0a0;
      font-size: 11px;
    }

    #nav-search select {
      position: absolute;
      left: 0px;
      top: 0px;
      opacity: 0;
      height: 35px;
      display: block;
      outline: none;
      cursor: pointer;
    }

    #nav-search .nav-fill {
      height: 35px;
      overflow: hidden;
    }

    #nav-search .nav-fill input {
      border: none;
      height: 35px;
      padding: 5px 10px;
      font-size: 15px;
      color:black;
      outline: none;
    }

    #nav-search .nav-right {
      background-color:floralwhite;
      width: 45px;
      height: 35px;
      border-radius: 0 4px 4px 0;
    }

    #nav-search .nav-right:hover {
      background-color: #f3a847;
    }

    #nav-search .nav-right i {
      position: absolute;
      top: 5px;
      right: 13px;
      color: #333;
      font-size: 22px;
      opacity: 0.9;
    }

    #nav-search .nav-right input {
      position: relative;
      width: 100%;
      height: 100%;
      display: block;
      outline: none;
      cursor: pointer;
      background: none;
      border: none;
      text-indent: -1000px;
    }
    #nav-main{
        background-color:crimson;
        display:block;
        height:60px;
        
    }
/*    article, aside, details, figcaption, figure, footer, header, hgroup, main, menu, nav, section, summary
    {
        display:block;
        background-color: crimson;
    }*/
     #nav-main ul {
      list-style-type: none;
      position: relative;
      padding: 0;
      margin: 18px 0 0 0;
    }

    #nav-main li {
      display: inline-block;
      padding: 10px 9px 0 0;
    }

    #nav-main a {
      color: #fff;
      font-size: 14px;
      font-weight: 700;
      text-decoration: none;
    }

    #nav-main .nav-a {
      padding: 7px 10px;
      border: 1px solid transparent;
      display: inline-block;
      position: relative;
    }

    #nav-main .nav-a:hover {
      border: 1px solid #4f5965;
      border-radius: 3px;
      box-shadow: 0 1px 0 0 rgba(255,255,255,.5);
    }

    #nav-main .nav-a span {
      display: block;
      margin-left: -2px;
      font-weight: 300;
      color: #ccc;
      font-size: 12px;
    }

    #nav-main i.fa-caret-down {
      color: #ccc;
      font-size: 11px;
      padding-left: 3px;
    }

    #nav-main .nav-left {
      height: 55px;
    }

    #nav-main .nav-left .nav-shop {
      float: left;
      width: 192px;
      padding: 4px 12px 0 15px;
    }

    #nav-main .nav-left .nav-shop a {
      margin-top: 16px;
    }

    #nav-main .nav-fill a {
      font-weight: 500;
      color: #ccc;
    }

    #nav-main .nav-fill a:hover {
      text-decoration: underline;
    }

    #nav-main .nav-right {
      padding-right: 6px;
    }

    #nav-main .nav-right a {
      margin-top: 6px;
    }

    #nav-main .nav-right .cart {
      background: transparent url(image/cart.png) no-repeat 11px 11px;
      background-size: 39px;
      padding: 7px 20px 7px 50px;
    }
    .facart{
        background-image: url(image/cart.png);
    }
    #nav-main .nav-right .cart span {
      color: #f08804;
      margin-left: -20px;
      font-size: 16px;
      font-weight: 700;
    }
</style>
</head>

    <body>
      <!-- Main body -->

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <a id="banner" href="index.jsp?category=all"></a>
    <!--## Adding navigation-->
    <header>
      <div id="nav-belt">
        <div class="nav-left">
          <div id="nav-logo">
            <a href="#" class="nav-logo-link"></a>
            <a href="#" class="nav-logo-tagline"></a>
          </div>
        </div>
        <div class="nav-right">
          <div id="nav-holiday">
            <a href="#"></a>
          </div>
        </div>
        <div class="nav-fill">
          <div id="nav-search">
            <!--<form >-->
              <div class="nav-left">
                <span class="nav-search-label">All</span>
                <i class="fa fa-caret-down" aria-hidden="true"></i>
              <form method="post" action="index.jsp">
                <select id="nav-search-select">
                  <!--<form method="post" action="index.jsp">--> 
                  <li><a href="index.jsp"> all dep</a></li>
                      <option  selected="selected" value="aps" >All Departments</option>
                     
                </select>
              </form>
<!--                  <option value="">Alexa Skills</option>
                  <option value="instant-video">Amazon Video</option>
                  <option value="warehouse-deals">Amazon Warehouse Deals</option>
                  <option value="appliances">Appliances</option>
                  <option value="mobile-apps">Apps &amp; Games</option>
                  <option value="arts-crafts">Arts, Crafts &amp; Sewing</option>
                  <option value="automotive">Automotive Parts &amp; Accessories</option>
                  <option value="baby-products">Baby</option>
                  <option value="beauty">Beauty &amp; Personal Care</option>
                  <option value="stripbooks">Books</option>
                  <option value="popular">CDs &amp; Vinyl</option>
                  <option value="mobile">Cell Phones &amp; Accessories</option>
                  <option value="fashion">Clothing, Shoes &amp; Jewelry</option>
                  <option value="fashion-womens">&nbsp;&nbsp;&nbsp;Women</option>
                  <option value="fashion-mens">&nbsp;&nbsp;&nbsp;Men</option>
                  <option value="fashion-girls">&nbsp;&nbsp;&nbsp;Girls</option>
                  <option value="fashion-boys">&nbsp;&nbsp;&nbsp;Boys</option>
                  <option value="fashion-baby">&nbsp;&nbsp;&nbsp;Baby</option>
                  <option value="collectibles">Collectibles &amp; Fine Art</option>
                  <option value="computers">Computers</option>
                  <option value="courses">Courses</option>
                  <option value="financial">Credit and Payment Cards</option>
                  <option value="digital-music">Digital Music</option>
                  <option value="electronics">Electronics</option>
                  <option value="gift-cards">Gift Cards</option>
                  <option value="grocery">Grocery &amp; Gourmet Food</option>
                  <option value="handmade">Handmade</option>
                  <option value="hpc">Health, Household &amp; Baby Care</option>
                  <option value="local-services">Home &amp; Business Services</option>
                  <option value="garden">Home &amp; Kitchen</option>
                  <option value="industrial">Industrial &amp; Scientific</option>
                  <option value="digital-text">Kindle Store</option>
                  <option value="fashion-luggage">Luggage &amp; Travel Gear</option>
                  <option value="luxury-beauty">Luxury Beauty</option>
                  <option value="magazines">Magazine Subscriptions</option>
                  <option value="movies-tv">Movies &amp; TV</option>
                  <option value="mi">Musical Instruments</option>
                  <option value="office-products">Office Products</option>
                  <option value="lawngarden">Patio, Lawn &amp; Garden</option>
                  <option value="pets">Pet Supplies</option>
                  <option value="prime-exclusive">Prime Exclusive</option>
                  <option value="pantry">Prime Pantry</option>
                  <option value="software">Software</option>
                  <option value="sporting">Sports &amp; Outdoors</option>
                  <option value="tools">Tools &amp; Home Improvement</option>
                  <option value="toys-and-games">Toys &amp; Games</option>
                  <option value="vehicles">Vehicles</option>
                  <option value="videogames">Video Games</option>
                  <option value="wine">Wine</option>
                </select>-->
              </div>
              <div class="nav-right">
                <i class="fa fa-search" aria-hidden="true"></i>
                <input type="submit" >
              </div>
              <div class="nav-fill">
                <input type="text" autocomplete="off" placeholder="Search Here">
              </div>
            </form>
          </div>
        </div>
      </div>
    </header>
  
   
     <nav id="nav-main">
      <div class="nav-left">
        <div class="nav-shop">
<!--            <div class="dropdown">-->
          <a class="nav-a" href="#">
              
            Departments
            
            <i class="fa fa-caret-down" ></li>
          </a>
        
                 <div class="dropdown-content">
<!--      <div class="dropdown">
    <button class="dropbtn">Dropdown
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </div>-->
      <a href="index.jsp?category=all">All</a>
      <a href="index.jsp?category=1">Cement</a>
      <a href="index.jsp?category=2">tiles</a>
      <a href="index.jsp?category=3">paints</a>
      <a href="index.jsp?category=5">Asian paints</a>
      <a href="index.jsp?category=6">Berger-paint</a>
      <a href="index.jsp?category=7">ultratech</a>
      <a href="index.jsp?category=8">ACC</a>
      <a href="index.jsp?category=9">GODREG</a>
      <a href="index.jsp?category=10">AGL</a>
      <a href="index.jsp?category=11">AMBUJA</a>
      <a href="index.jsp?category=12">BIRLA</a>
      <a href="index.jsp?category=13">GRIP</a>
      <a href="index.jsp?category=14">PHILLIPS</a>
      <a href="index.jsp?category=15">MAGIC-ACRYLIC</a>
      <a href="index.jsp?category=17">BRUSH</a>
      <a href="index.jsp?category=1">paints</a>
      <a href="index.jsp?category=1">paints</a>
      <a href="index.jsp?category=1">paints</a>
      <a href="index.jsp?category=1">paints</a>
      <a href="index.jsp?category=1">paints</a>
      <a href="index.jsp?category=1">paints</a>
      <a href="index.jsp?category=1">paints</a>
      <a href="index.jsp?category=1">paints</a>
   
                        
                 </div>    
                 <style>
                     .dropdown .dropbtn {
  font-size: 16px;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}
                     .dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
                 </style> 
            
         
        </div>
<!--      </div>-->
      <!--<div class="nav-right">-->
       
<a class="nav-a" href="home.jsp">
         HOME
        </a>
       <a class="nav-a" href="index.jsp?category=18">
          Today's Deals
        </a>

        <a class="nav-a" href="contactus.jsp">
          Contact_Us
          <i class="fa fa-caret-down" aria-hidden="true"></i>
        </a>
      <%                    if (user1 == null) {

                %>
<a class="nav-a" href="login.jsp">
          LogIn
        </a>
        <a class="nav-a" href="register.jsp">
          <span>Hello. Sign in</span>
          Accounts &amp; Lists
          <!--<i class="fa fa-caret-down" aria-hidden="true"></i>-->
        </a>
  <%                        } else {


                %>
                <li>
                    <a  href="<%=  user1.getUserType().equals("admin") ? "admin.jsp" : "index.jsp"%>"><%= user1.getUserName()%> </a>
                </li>

                <li> <a href="LogoutServlet"> Logout  </a>
                </li>



                <%    }

                %>
       
<!-- <li>-->
                    <!--<a  href="#!" data-toggle="modal" data-target="#cart">  <i class="fa fa-cart-plus"  style="font-size: 20px;"></i> <span class="ml-0 cart-items">[0]</span>  </a>-->
 <!--</li>-->
        <a class="nav-a cart" href="#!"data-toggle="modal" data-target="#cart">
             <i class="fa fa-cart-plus"  style="font-size: 20px; "></i> 
         <span class="ml-0 cart-items">[0]</span>         
        </a>
      </div>     
    </nav>
    </body>
    </html>




