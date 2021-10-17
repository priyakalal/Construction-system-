/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


 $(document).ready(function(){
  $('.search-icon').click(function(){
 $('.search-icon').toggleClass('active')//search icon change onClick
 $('.search-box').toggleClass('active')//box show when click on icon
 $('header').toggleClass('active-search')//In mobile logo and bars 
   
  })
 });
  /*sub-menu visible on click  */
  
   $(document).ready(function(){
  $('ul li').click(function(){
    $(this).siblings().removeClass('active')//remove active    
   
   $(this).toggleClass('active')//Add Active class first click
  
  
   
  })
 });
 
  
 $(document).ready(function(){
  $('.toggle').click(function(){
   $('.toggle').toggleClass('active')//change menu icon onClick
   
   $('header').toggleClass('active-menu')//hide logo and search   
  
   
  })
 });
