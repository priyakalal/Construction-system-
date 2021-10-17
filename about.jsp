<%-- 
    Document   : about
    Created on : 15-Oct-2020, 2:22:03 PM
    Author     : PRIYA
--%>
<style>
    body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 30%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 4px;
  height: 300px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 65px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>
<div class="about-section">
  <h1>OUR-VISION</h1>
  <!--<p>Some text about who we are and what we do.</p>-->
  <p>
To create an ecosystem of software, e-commerce and finance that enables a transparent, collaborative and seamless experience for the real estate and construction industry creating value through time and cost savings.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<!--<div class="row">
  <div class="column">
    <div class="card">
      <img src="/w3images/team1.jpg" alt="Jane" style="">
      <div class="container">
        <h2>Admin</h2>
        <p class="title">CEO & Founder</p>
        <p></p>
        <p>a@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/w3images/"  style="">
      <div class="container">
        <h2>DEVIKA</h2>
        <p class="title">SUPPLIER</p>
        <p></p>
        <p>d@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="image/t2.webp" style="">
      <div class="container">
        <h2>PRIYA</h2>
        <p class="title">SUPPLIER</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>p@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>-->
<!--</div>-->
<%@include file="profile.jsp" %>