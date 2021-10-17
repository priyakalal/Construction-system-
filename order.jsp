<%-- 
    Document   : order
    Created on : 01-Nov-2020, 6:57:34 AM
    Author     : PRIYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="components/common.jsp" %>
         <style>
             .cont{
                 height:30px;
                 background-color: crimson;
                 color:white;
             }
             .order{
                 height:30px;
                 background-color: crimson;
                 color:white;
             }
             
             .cont a{
                 /*height:30px;*/
                 /*background-color: crimson;*/
                 color:white;
             }
             .order a{
                 /*height:30px;*/
                 /*background-color: crimson;*/
                 color:white;
             }
         </style>
    </head>
    <body>
        
        <h1>ORDER SUCCESSFULLY PLACED</h1>
        <div class="card">
                        <div class="card-body">

                            <h3 class="text-center mb-5">Your selected items</h3>

                            <div class="cart-body">

                            </div>
                        </div>
                    </div>
        <div class="container text-center">
                                    <button class="order" ><a href="checkout.jsp">order-again</button>
                                    <button class="cont"><a href="index.jsp">Continue Shopping</button>
                                </div>
    </body>
</html>
