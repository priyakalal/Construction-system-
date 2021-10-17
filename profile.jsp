<!DOCTYPE html>
<html>
<head>
<title>Profile Card Slider UI Design</title>

<!--SLICK SLIDER CSS-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<!--FONT AWESOME 4.7.0-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--CUSTOM CSS STYLE-->
<link rel="stylesheet" type="text/css" href="css/profile.css">

</head>
<body>

<div class="card">
<div class="slider">
<div class="item item1">
<div class="item-inner">
<img src="image/img1.png" alt="">
<h4>Admin</h4>
<p>CEO</p>
<div class="social">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
</div>
</div>
</div>
<div class="item item2">
<div class="item-inner">
<img src="image/logo/priy.png" alt="">
<h4>Priya</h4>
<p>Vendor-Managing Director</p>
<div class="social">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
</div>
</div>
</div>
<div class="item item3">
<div class="item-inner">
<img src="image/img3.png" alt="">
<h4>Devika</h4>
<p>Vendor-Managing Director</p>
<div class="social">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
</div>
</div>
</div>
<div class="item item4">
<div class="item-inner">
<img src="" alt="">
<h4>Sukanya</h4>
<p>Vendor-Managing Director</p>
<div class="social">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
</div>
</div>
</div>
<div class="item item5">
<div class="item-inner">
<img src="images/img5.png" alt="">
<h4>Elizabeth butler</h4>
<p>Content writer</p>
<div class="social">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
</div>
</div>
</div>
</div>
</div>

<!--JQUERY LINK-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!--SLICK SLIDER-->
<script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8/slick/slick.min.js"></script>

<script>

$(".slider").slick({
centerMode: true,
slidesToShow:3
});

</script>