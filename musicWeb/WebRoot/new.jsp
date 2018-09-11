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

<title>momo音乐</title>
<link type="text/css" href="bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="bootstrap/jquery-1.8.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</head>

<body>


	<div class="container ">
		<div class="row" style="height: 20px;"></div>
		<div class="row">
<div class="col-sm-3" id="so"></div>
			<div class="col-sm-6" id="so">
				<div class="input-group">
					<input type="text" class="form-control" id="musicName" /> 
					<span class="input-group-addon">
					    <a href="javascript:void(0);" onclick="ToSubmi()"><i class="glyphicon glyphicon-search"> <span>搜索</span></i></a>
					</span>
				</div>
			</div>



		</div>

	</div>

	<div class="container ">
		<div class="row">

			<div class="panel panel-default"></div>
			<div class="panel panel-default">
				<!--<div class="panel-heading text-center">查看个人考勤结果</div>

				 Table -->
				<table class="table table-striped table-bordered" id="mktr">
					<tr class="not">
						<th>${dt }</th>
						<th>歌名</th>
						<th>歌手</th>
						<th>音质</th>
						<th>播放</th>
						<th>下载</th>
					</tr>

				</table>
			</div>



		</div>

	</div>






</body>
</html>
