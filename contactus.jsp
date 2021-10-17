<!--<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Creative Contact form UI </title>
        <link rel="stylesheet" href="style/contact.css">
        <style>
            
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family:'poppins',sans-serif;
}
section
{
    position: relative;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: #112d42;
}
section::before
{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 50%;
    height: 100%;
    background: #03a9f4;
}
section .container
{
    position: relative;
    min-width: 1100px;
    min-height: 550px;
    display: flex;
    z-index: 1000;
}
section .container .contactinfo
{
    position: absolute;
    top: 40px;
    width: 350px;
    height: calc(100% - 80px);
    background: #0f3959;
    z-index: 1;
    padding: 40px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    box-shadow: 0 20px 20px rgba(0,0,0,0.2);
}
section .container .contactinfo h2{
    color: #fff;
    font-size: 24px;
    font-weight: 500;
}
section .container .contactinfo .info li{
    position: relative;
    list-style: none;
    display: flex;
    margin: 20px 0;
    cursor: pointer;
    align-items: flex-start;
}
section .container .contactinfo .info li span:nth-child(1)
{
    width: 30px;
    min-width: 30px;
}
section .container .contactinfo .info li span:nth-child(1) img{
    max-width: 100%;
    filter: invert(1);
    opacity: 0.5;
}
section .container .contactinfo .info li span:nth-child(2)
{
    color: #fff;
    margin-left: 10px;
    font-weight: 300;
    opacity: 0.5;
}
section .container .contactinfo .info li span:nth-child(1) img,
section .container .contactinfo .info li span:nth-child(2) 
{
    opacity: 1;
}  
section .container .contactinfo .sci
{
    position: relative;
    display: flex;
}
section .container .contactinfo .sci li a
{
    text-decoration: none;
}
section .container .contactinfo .sci li a img
{
    filter: invert(1);
    opacity: 0.5;
}
section .container .contactinfo .sci li:hover a img
{
    opacity: 1;
}
section .container .contactForm
{
    position: absolute;
    padding:70px 50px;
    background: #fff;
    margin-left: 150px;
    width: calc(100% - 150px);
    height:100px;
    box-shadow: 0 50px 50px rgba(0,0,0,0.5);
}
section .container .contactForm h2
{
    color: #0f3959;
    font-size: 24px;
    font-weight: 500;
}
section .container .contactForm .formBox
{
    position: relative;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    padding-top: 30px;
}
section .container .contactForm .formBox .inputBox
{
    position: relative;
    margin: 0,0,35px 0;
}
section .container .contactForm .formBox .inputBox.w50
{
    width: 47%;
}
section .container .contactForm .formBox .inputBox.w100
{
    width: 100%;
    padding: 5px 0;

    font-size: 18px;
    font-weight: 300;
    color: #333;
    border: none;
    border-bottom: 1px solid #777;
    outline: none;
}
section .container .contactForm .formBox .inputBox textarea
{
    min-height: 120px;
}
section .container .contactForm .formBox .inputBox span
{
    position: absolute;
    left: 0;
    padding: 5px 0;
    font-size: 18px;
    font-weight: 300;
    color: #333;
    transition: 0.3s;
    pointer-events: none;
}
section .container .contactForm .formBox .inputBox input:focus~span,
section .container .contactForm .formBox .inputBox textarea:focus~span,
section .container .contactForm .formBox .inputBox input:valid~span,
section .container .contactForm .formBox .inputBox textarea:valid~span
{
    transform: translateY(-20px);
    font-size: 12px;
    font-weight: 400;
    letter-spacing: 1px;
    color: #ff568c;
}
section .container .contactForm .formBox .inputBox input[type="submit"]
{
    position: relative;
    cursor: pointer;
    background: #0f3959;
    color: #fff;
    border: none;
    max-width: 150px;
    padding: 12px;
}
section .container .contactForm .formBox .inputBox input[type="submit"]:hover
{
    background: #ff568c;
}

        </style>
</head>
<body>
    <section> 
     <div class="container">
          <div class="contactinfo">
                <div>
                    <h2>Contact Info</h2>
                   <ul class="info">
                     <li>
                          <span><img src="location.png"></span>
                          <span>2912 Meadowbrook Road<br>
                            Los Angeles,CA<br>
                            90017</span>
                     </li> 
                     <li>
                         <span><img src="mail.png"></span>
                         <span>s@gmail.com</span>
                     </li>  
                     <li>
                         <span><img src="call.png"></span>
                         <span>310-386-1623</span>
                     </li>    
                  </ul>
                  <ul class="sci">
                    <li><a href="#"></a><img src="1.png"></a></li>
                    <li><a href="#"></a><img src="2.png"></a></li>
                    <li><a href="#"></a><img src="3.png"></a></li>
                    <li><a href="#"></a><img src="4.png"></a></li>
                    <li><a href="#"></a><img src="5.png"></a></li>
                 </ul>
               </div>
            </div>
            <div class="contactForm">
                <h2>Send a Message</h2>
                <div class="formBox">
                    <div class="inputBox w50">
                        <input type="text" name="required">
                        <span>First Name</span>
                    </div>
                    <div class="inputBox w50">
                        <input type="text" name="required">
                        <span>Last Name</span>
                    </div>
                    <div class="inputBox w50">
                        <input type="text" name="required">
                        <span>Email Address</span>
                    </div>
                    <div class="inputBox w50">
                        <input type="text" name="required">
                        <span>Mobile Number</span>
                    </div>
                    <div class="inputBox w100">
                        <textarea type="" name="required"></textarea>
                        <span>Write your message here...</span>
                    </div>
                    <div class="inputBox w100">
                        <input type="submit" value="send">
                    </div>
                </div>                   
            </div>
        </div>      
    </section>
    </body>
</html>-->


<div class="container">
	<h3>Contact Form</h3>
	<form action="#" name="contact_form">
		<label for="first_name">First Name</label>
		<input name="first_name" type="text" required placeholder="John"/>
		<br>
		<label for="last_name">Last Name</label>
		<input name="last_name" type="text" required placeholder="Doe"/>
		<br>
		<label for="email">Email</label>
		<input name="email" type="email" required placeholder="you@domain.com"/>
		<br>
		<label for="message">Message</label><br>
		<textarea name="message" cols="30" rows="10" placeholder="Enter your message here ..." required> </textarea>
                <div class="center">
                    <!--<input type="submit" value="Submit" onclick="goToindex()">-->
                    <button type="submit" ><a href="index.jsp">SUBMIT</button>
		</div>
	</form>	
</div>
<style>
    /* Importing the Roboto font from Google Fonts. */
@import url("https://fonts.googleapis.com/css?family=Roboto:400");

/* Set font of all elements to 'Roboto' */
* {
	font-family: 'Roboto', sans-serif;
	font-weight: 400;
}

/* Remove outline of all elements on focus */
*:focus {
	outline: 0;
}

body {
	background: #263238;  /* Set background color to #263238*/
}

h3 {
	text-align: center;
}

/* Add styles to 'container' class */
.container {
	padding: 12px 24px 24px 24px;
	margin: 48px 12px;
	background: #E3F2FD;
	border-radius: 4px;
}

/* Add styles to 'label' selector */
label {
	font-size: 0.85em;
	margin-left: 12px;
}

/* Add styles to 'input' and 'textarea' selectors */
input[type=text],input[type=email], textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

/* Add styles to show 'focus' of selector */
input[type=text]:focus,input[type=email]:focus, textarea:focus {
	border: 1px solid green;
}

/* Add styles to the submit button */
input[type=submit] {
	background: #64B5F6;
	margin: 0 auto;
	outline: 0;
	color: white;
	border: 0;
	padding: 12px 24px;
	border-radius: 4px;
	transition: all ease-in-out 0.1s;
	position: relative;
	display: inline-block;
	text-align: center;
}

/* Add styles for 'focus' property */
input[type=submit]:focus {
	background: #A5D6A7;
	color: whitesmoke;
}

/* Style 'hover' property */
input[type=submit]:hover {
	background: #2196F3;
}

/* Align items to center of the 'div' with the class 'center' */
.center {
	text-align: center;
}
</style>