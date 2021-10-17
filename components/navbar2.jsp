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
 <html>
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
</html>