<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NEW INDEX</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
      $( document ).ready( function() {
        $("img")
          .mouseover( function() { 
            $(this).attr( 'src', '/img/test_end.png' );
          } )
          .mouseout( function() {
            $(this).attr( 'src', '/img/test.png' );
          } );
      } );
//  	setTimeout(function(){
//  		location.replace("/admin/admin");
//		},7500);
  	
  	var interval9 = setInterval(function () {
  	    icon();
  	  }, 1001);
  	
  function icon(){
	  setTimeout(function(){
		  document.getElementById("loginimg").src = "/img/test_end.png";
		},500);
	  setTimeout(function(){
		  document.getElementById("loginimg").src = "/img/test.png";
		},1000);
  }
  	
</script>
<link href="/css/style1.css" rel="stylesheet" type="text/css">
<style type="text/css">
img {
	width : 20.3%;
	position : absolute;
	top: 0; bottom:0; left:0; right:0;
	margin: auto;
}
</style>
</head>
<body>
<div id="indexcover">
<a href="/admin/admin">
<img id="loginimg" src ="/img/test.png" alt="lOGiN" >
</a>
</div>
</body>
</html>