<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>学生信息</title>
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="bootstrap/jquery-2.1.4.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>

<body>

<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
  <div id="container">
	<label class="to-back-label" for="to-back"><i class="fa fa-bars fa-lg"></i></label>
	<input type="checkbox" id="to-back"><!-- playlist toggle -->
	<canvas id="progress" width="320" height="320"></canvas><!-- progress bar -->
	<div id="player">
		<audio id="audio" controls>
			<source src="${url }" type="audio/mpeg" codecs="mp3"></source>		
		</audio>
		<img src="${pic }"><!-- album cover -->
		<label class="to-lyrics-label" for="to-lyrics"><i class="fa fa-caret-down fa-lg"></i></label>
		<input type="checkbox" id="to-lyrics"><!-- lyrics toggle -->
		<div class="cover">
			<div class="controls">
				 	<br>
				 	<br>
				 	<br>
				 	
		  </div>
			<div class="info">
				<audio src="${url }" controls="controls" autoplay="autoplay">

</audio>
			</div><!-- #info -->
			
			
		</div><!-- #cover -->
	</div><!-- #player -->

</div><!-- #container -->


  <script src="js/index.js"></script>



</body>
</html>
