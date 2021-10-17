<%-- 
    Document   : ForgotPassword
    Created on : Oct 7, 2020, 7:07:49 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src=" https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    </head>
    <style>
        .container{
            max-width: 550px;
            background: #676d12;
            color: white;
            padding: 2rem 2rem;
        }
        .error{
            color:red;
        }
        .status{
            background: #6b170a;
            color: white;
            text-align: center;
            margin: 20px;
            font-weight: bold;
            font-size: 20px;
        }
    </style>
    <body>
        <%@include file="components/navbar.jsp"%>
        <%if (request.getAttribute("status") != null) {%>
        <div class="status"><%=request.getAttribute("status")%></div>
        <%}%>
        <div class="container">
            <!--<div class="jumbotron">-->
            <%if (session.getAttribute("npuname") != null) {%>
            <form id="newpass" method="post" action="RegisterServlet">
                <!--<div class="forgot">-->
                <span style="font-size: 29px;font-weight: bold;">Enter your new password</span>
                <div class="form-group" style="margin-top: 10px;">
                    <div>
                        <input id="n_password" class="form-control" style="width:50%" type="password" placeholder="Password" name="n_password"> 
                    </div>
                </div>
                <div class="form-group">
                    <div>
                        <input id="c_password" class="form-control" style="width:50%" type="password" placeholder="Confirm Password" name="c_password"> 
                    </div>
                </div>
                <div class="form-group">
                    <div  style="width:100%">
                        <input type="submit" name="submit_NewPassword" value="Submit" >
                        <!--<input type="hidden" name="SubmitEmail" value="submitemail"/>-->
                    </div>
                </div> 
                <!--</div>-->
            </form>  
            <%} else {
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                    }%>
            </div>
        </div>
        <script>
            jQuery(document).ready(function ($) {
                $("#newpass").validate({
                    ignore: [],
                    rules: {
                        n_password: {
                            required: true,
                            minlength: 6
                        },
                        c_password: {
                            required: true,
                            equalTo: "#n_password"
                        }
                    }
                });
            });
        </script>
        <%@include file="components/footer.jsp"%>
    </body>
</html>
