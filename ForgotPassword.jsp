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
            <form id="forgot" method="post" action="RegisterServlet">
                <h1>Forgot Password</h1>
                <p style="clear: left;text-align: left;margin-bottom: 20px;line-height: 21px;font-size: 13px;">Enter your email to recover password.</p>
                <div class="form-group">
                    <div>
                        <input id="email" class="form-control" style="width:70%" type="text" placeholder="Email" name="user_email" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <div  style="width:100%">
                        <input type="submit" name="forgotpassword" value="Submit" >
                    </div>
                </div> 
            </form>  
        </div>
        <script>
            jQuery.validator.addMethod("email1", function (value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value);
            }, "Enter valid email id");
            jQuery(document).ready(function ($) {
                $("#forgot").validate({
                    ignore: [],
                    rules: {
                        user_email: {
                            required: true,
                            email1: true
                        }
                    }
                });
            });
        </script>
        <%@include file="components/footer.jsp"%>
    </body>
</html>
