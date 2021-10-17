<%@page import="com.mycompany.construction.helper.Helper"%>
<%@page import="com.mycompany.construction.entities.Category"%>
<%@page import="com.mycompany.construction.dao.CategoryDao"%>
<%@page import="com.mycompany.construction.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.construction.dao.ProductDao"%>
<%@page import="com.mycompany.construction.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingNepal - www.codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <!-- <title>Product Card with Fly Cart Animation | CodingNepal</title> -->
    <!--<link rel="stylesheet" href="style.css">-->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
::selection{
  color: #fff;
  background: #ff7979;
}
body{
  display: flex;
  align-items: center;
  justify-content:center;
  min-height: 100vh;
  background: #ff7979;
  padding: 0 20px;
}
.wrapper{
  position: relative;
  max-width: 1130px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.wrapper .cart-nav{
  position: absolute;
  right: 0;
  top: -35%;
  width: 130px;
  background: #fff;
  padding: 13px 15px;
  border-radius: 3px;
  display: flex;
  cursor: pointer;
  justify-content: space-evenly;
  box-shadow: 3px 3px 8px 0px rgba(0,0,0,0.15);
}
.cart-nav .icon{
  color: #ff7979;
}
.cart-nav .icon i{
  font-size: 20px;
}
.cart-nav .icon span{
  font-weight: 500;
}
.cart-nav .item-count{
  font-size: 15px;
  height: 23px;
  width: 23px;
  color: #ff7979;
  background: #ffcccc;
  text-align: center;
  line-height: 22px;
  border: 1px solid #ffb3b3;
  border-radius: 50%;
}
.wrapper .card{
  position: relative;
  background: #fff;
  border-radius: 3px;
  width: calc(33% - 13px);
  overflow: hidden;
  box-shadow: 4px 4px 10px 0px rgba(0,0,0,0.15);
}
.wrapper .card img{
  width: 100%;
  border-radius: 3px;
  transition: all 0.3s ease;
}
.card:hover img{
  transform: scale(1.1);
}
.wrapper .card .content{
  position: absolute;
  width: 100%;
  bottom: -50%;
  background: #fff;
  padding: 10px 20px 22px 20px;
  box-shadow: 0px -3px 10px 0px rgba(0,0,0,0.15);
  transition: all 0.3s ease;
}
.wrapper .card:hover .content{
  bottom: 0;
}
.card .content .row,
.content .buttons{
  display: flex;
  justify-content: space-between;
}
.content .row .details span{
  font-size: 22px;
  font-weight: 500;
}
.content .row .details p{
  color: #333;
  font-size: 17px;
  font-weight: 400;
}
.content .row .price{
  color: #ff7979;
  font-size: 25px;
  font-weight: 600;
}
.content .buttons{
  margin-top: 20px;
}
.content .buttons button{
  width: 100%;
  padding: 9px 0;
  outline: none;
  cursor: pointer;
  font-size: 17px;
  font-weight: 500;
  border-radius: 3px;
  border: 2px solid #ff7979;
  text-transform: uppercase;
  transition: all 0.3s ease;
}
.buttons button:first-child{
  color: #ff7979;
  margin-right: 10px;
  background: #fff;
}
button:first-child:hover{
  color: #fff;
  background: #ff7979;
}
.buttons button:last-child{
  color: #fff;
  margin-left: 10px;
  background: #ff7979;
}
button:last-child:hover{
  background: #ff6666;
  border-color: #ff6666;
}

    </style>
  </head>
  <body>
      <% String cat = request.getParameter("category");
                    //out.println(cat);

                    ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                    List<Product> list = null;

                    if (cat == null || cat.trim().equals("all")) {
                        list = dao.getAllProducts();
                    } 
                   
                            else {
                        int cid = Integer.parseInt(cat.trim());
                        list = dao.getAllProductsById(cid);

                    }

                    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                    List<Category> clist = cdao.getCategories();
                   
                    List<Category> cid = cdao.getCategories();

                %>
    <div class="wrapper">
      <div class="cart-nav">
        <div class="icon">
          <i class="fas fa-shopping-cart"></i>
          <span>Cart</span>
        </div>
        <div class="item-count">0</div>
      </div>
      <div class="card">
         <img src="image/products/c1.jpeg" alt=""> 
        <div class="content">
          <div class="row">
            <div class="details">
              <span>Headphone</span>
              <p>Premium headphone</p>
            </div>
            <div class="price">$30</div>
          </div>
          <div class="buttons">
            <button>Buy Now</button>
            <button class="cart-btn">Add to Cart</button>
          </div>
        </div>
      </div>
       
      <div class="card">
           <%
                                    for (Product p : list) {

                                %>
         <img src="image/products/<%= p.getpPhoto()%>" alt=""> 
        <div class="content">
          <div class="row">
            <div class="details">
              <span><%= p.getpName()%></span>
              <p><%= Helper.get10Words(p.getpDesc())%></p>
            </div>
              <div class="price">&#8377; <p style="text-decoration: line-through;"><%= p.getpPrice()%> , <%= p.getpDiscount()%>% off></p> <b> <%= p.getPriceAfterApplyingDiscount()%>/-</b></div>
          </div>
          <div class="buttons">
            <button>Buy Now</button>
            <button class="cart-btn" onclick="add_to_cart(<%= p.getpId()%>, '<%= p.getpName()%>',<%= p.getPriceAfterApplyingDiscount()%>)">Add to Cart</button>
          </div>
        </div>
           <%}if (list.size() == 0) {
                                        out.println("<h3>No item in this category</h3>");
                                    }

                                %>
      </div>
      <div class="card">
         <img src="image/products/c1.jpeg" alt=""> 
        <div class="content">
          <div class="row">
            <div class="details">
              <span>Apple Airpod</span>
              <p>Premium black airpod</p>
            </div>
            <div class="price">$50</div>
          </div>
            
            
          <div class="buttons">
             
            <button> <a href="index.jsp?category=all" class="list-group-item list-group-item-action ">
                            All Products
                        </a></button>
             <% for (Category c : clist) {
                        %>
                       <a href="index.jsp?category=<%= c.getCategoryId()%>" class="list-group-item list-group-item-action"><%= c.getCategoryTitle()%></a>


                        <%    }
                        %>
            <button class="cart-btn">Add to Cart</button>
          </div>
        </div>
      </div>
    </div>
  <script src="js/flying.js"></script> 
  </body>
</html>
