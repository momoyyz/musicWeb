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
<script src="bootstrap/jquery-2.1.4.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<head>

    <meta name="viewport" content="width=device-width,height=device-height, initial-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">

    <meta name="description" content="momo分享由个人构建运行，于2017年9月正式上线，本站致力于分享互联网，汇集各类精品教程、实用工具、素材、等资源，">
    <meta name="keywords" content="汇集各类精品教程、实用工具、素材、等资源，">
    <link rel="canonical" href="http://fujianyeyu.cn/">
    <link rel="stylesheet" id="style-css" href="http://fujianyeyu.cn/wp-content/themes/lensnews-1/style.css?ver=2017.03.18" type="text/css" media="all">
    <link rel="stylesheet" id="main-css" href="http://fujianyeyu.cn/wp-content/themes/lensnews-1/css/main.css?ver=1.0" type="text/css" media="">
    <link rel="stylesheet" id="animate-css" href="http://fujianyeyu.cn/wp-content/themes/lensnews-1/css/animate.css?ver=1.0" type="text/css" media="">
    <link rel="stylesheet" id="fancybox-css" href="http://fujianyeyu.cn/wp-content/themes/lensnews-1/css/jquery.fancybox.min.css?ver=3.0.6" type="text/css" media="screen">
    <script type="text/javascript" src="http://fujianyeyu.cn/wp-content/themes/lensnews-1/js/jquery.min.js?ver=3.1.1"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var ajax_auth_object = {"ajaxurl":"http:\/\/fujianyeyu.cn\/wp-admin\/admin-ajax.php","redirecturl":"","loadingmessage":"\u53d1\u9001\u7528\u6237\u4fe1\u606f\uff0c\u8bf7\u7a0d\u5019\u2026"};
        /* ]]> */
    </script>
    <script type="text/javascript" src="http://fujianyeyu.cn/wp-content/themes/lensnews-1/js/ajax-script.js?ver=4.8.3"></script>
    <script type="text/javascript" src="http://fujianyeyu.cn/wp-content/themes/lensnews-1/js/swiper.jquery.min.js?ver=3.3.1"></script>
    <link rel="shortcut icon" href="http://fujianyeyu.cn/wp-content/uploads/2017/10/2017100516105739.png">
    <link rel="apple-touch-icon" sizes="120*120" href="http://fujianyeyu.cn/wp-content/uploads/2017/10/2017100516105739.png">
    <link rel="icon" href="http://fujianyeyu.cn/wp-content/uploads/2017/10/cropped-2017100516105739-1-32x32.png" sizes="32x32">
    <link rel="icon" href="http://fujianyeyu.cn/wp-content/uploads/2017/10/cropped-2017100516105739-1-192x192.png" sizes="192x192">
    <link rel="apple-touch-icon-precomposed" href="http://fujianyeyu.cn/wp-content/uploads/2017/10/cropped-2017100516105739-1-180x180.png">
    <meta name="msapplication-TileImage" content="http://fujianyeyu.cn/wp-content/uploads/2017/10/cropped-2017100516105739-1-270x270.png">
    <style type="text/css" id="wp-custom-css">
        figure a{
            width:60%;
            margin:0 auto;
            margin-top: 30px;
        }



        .new_list h2{
            font-size:18px;
        }


        .new_list li
        {
            background-color:#EFF0F6;
        }

        .postlist figure a{
            width:60%;
            margin:0 auto;

        }

    </style>
    <style type="text/css" title="dynamic-css" class="options-output">body{background-color:#f8f8f8;background-repeat:repeat;background-size:inherit;background-attachment:fixed;background-position:center center;background-image:url('http://fujianyeyu.cn/wp-content/themes/lensnews-1/images/body.png');}.crumbs_shop{background-color:#fff;background-repeat:no-repeat;background-size:cover;background-attachment:scroll;background-position:center center;background-image:url('http://fujianyeyu.cn/wp-content/themes/lensnews-1/images/crumbs_shop.jpg');}.crumbs_page{background-color:#fff;background-repeat:no-repeat;background-size:cover;background-attachment:scroll;background-position:center center;background-image:url('http://fujianyeyu.cn/wp-content/themes/lensnews-1/images/crumbs_page.jpg');}</style></head>

<body class="home blog">
<!--头部-->
<!--桌面-->
<header class="header">
    <section class="wrapper">
        <nav class="top-nav">
            <div class="top-menu left">
                <ul class="menu">
                    <!--前台登录与注册-->
                    <li class="menu-item menu-item-welcome">
                        您好，欢迎访问本站！                    </li>
                    <li class="menu-item menu-item-login">
                        <a class="user-login" href="#login">
                            <i class="icon-login"></i>
                            登录                        </a>
                    </li>
                    <!--前台登录与注册end-->
                </ul>
            </div>
            <!--顶部菜单-->
            <div class="top-menu right"><ul class="menu"><li id="menu-item-192" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-192"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2727737621&amp;site=qq&amp;menu=yes">QQ客服</a></li>
                    <li id="menu-item-193" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-193"><a href="http://fujianyeyu.cn/留言/">我要留言</a></li>
                </ul></div>            <!--顶部菜单end-->
        </nav>
        <!--菜单-->
        <nav class="header-nav">
            <!--LOGO-->
            <h1>
                <a href="http://fujianyeyu.cn" class="logo left" title="momo分享-我们的分享——免费下载各种资料、视频、软件等"><img src="http://fujianyeyu.cn/wp-content/uploads/2017/10/2017100516095052.png" alt="momo分享"></a>
            </h1>
            <!--LOGO-->
            <div class="header-menu right"><ul class="menu"><li id="menu-item-249" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-249"><a href="http://fujianyeyu.cn/">首页</a></li>
                    <li id="menu-item-252" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-252"><a href="http://fujianyeyu.cn/software/">应用软件</a>
                        <ul class="sub-menu">
                            <li id="menu-item-253" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-253"><a href="http://fujianyeyu.cn/software/recreation/">娱乐软件</a></li>
                            <li id="menu-item-254" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-254"><a href="http://fujianyeyu.cn/software/leam/">学习软件</a></li>
                            <li id="menu-item-255" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-255"><a href="http://fujianyeyu.cn/software/tools/">工具软件</a></li>
                        </ul>
                    </li>
                    <li id="menu-item-256" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-256"><a href="http://fujianyeyu.cn/course/">视频教程</a></li>
                    <li id="menu-item-250" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-250"><a href="http://fujianyeyu.cn/%e5%ae%9e%e7%94%a8%e6%95%99%e7%a8%8b/">实用教程</a></li>
                    <li id="menu-item-251" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-251"><a href="http://fujianyeyu.cn/material/">实用素材</a></li>
                    <li id="menu-item-365" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-365"><a href="http://fujianyeyu.cn/%e5%a4%a7%e5%90%88%e9%9b%86/">大合集</a></li>
                    <li id="menu-item-356" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-356"><a href="http://fujianyeyu.cn/dnxh/index.php">计算机一级等级练习</a></li>
                    <li id="menu-item-260" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-260"><a href="http://fujianyeyu.cn/video/video.php">momo视频</a></li>
                    <li id="menu-item-257" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-257"><a href="http://fujianyeyu.cn/%e5%85%b3%e4%ba%8e%e6%88%91%e4%bb%ac/">关于我们</a>
                        <ul class="sub-menu">
                            <li id="menu-item-258" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-258"><a href="http://fujianyeyu.cn/%e7%95%99%e8%a8%80/">留言</a></li>
                            <li id="menu-item-259" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-259"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2727737621&amp;site=qq&amp;menu=yes">QQ客服</a></li>
                        </ul>
                    </li>
                    <li class="menu-item menu-item-search"><a href="#search" title="点击搜索"><i class="icon-search-1"></i></a></li></ul></div>        </nav>
        <!--菜单end-->
    </section>
</header>

</body>
</head>
<script type="text/javascript">
	$(function() {
	
		//$(document).on("click", ".submitdata", getURL);
		
		$(document).keyup(function(event){
			  if(event.keyCode ==13){
				  ToSubmi();
			  }
		});
	});
	
var ToSubmi=function(){
	val=$("#musicName").val();

	if(val == "" || $.trim(val).length == 0){
		alert("不能为空");
	}else{
		getMusicData();
	}
	
};
	var getMusicData = function() {
		$.ajax({
			url : "show.do",
			type : "get",
			data : {
				name : $("#musicName").val(),
			},
			dataType : "json",
			success : function(json) {
				//显示数据
				showMusicData(json.data);
				
			},
			error : function(json) {

				alert(json.code)
				showMusicData(json.data);
				alert("获取数据失败！");
			},
		});
	};

	var showMusicData = function(data) {
		/*
		 * 序号
		 */
		var i = 1;
		/*
		 *移除原有
		 */
		$("#mktr tr").not(".not").remove();
		var html = "";
		if (data && data.length > 0) {

			$(data).each(function() {

				html += '<tr>';
				html += ' <td>' + i + '</td>';
				html += ' <td >' + this.name + '</td>';
				html += ' <td>' + this.author + '</td>';
				
				html += ' <td><select class="form-control selectUsertype" name="usertype"><option value="2" class="userType" id="userType1">普通音质</option><option value="3" class="userType" id="userType2">高等音质</option></select></td>';
				html += ' <td><a name="' + this.name + '" pic="' + this.pic + '" ids="' + this.id + '" class="submitdata" href="play.do?id=' + this.id + '&pic=' + this.pic + '&name=' + this.name + '">在线播放</a></td>';
				html += ' <td><a href="download.do?num=3&id=' + this.id + '&name=' + this.name + '&author=' + this.author + '">下载</a></td>';
				html += '</tr>';
				i++;

			});
		}
		$("#mktr").append(html);
	};

	/* 搜索框 

	var getURL = function() {
		id=$(this).attr("ids");
		name=$(this).attr("name");
		pic=$(this).attr("pic");
		alert(name)
		alert(pic)
		$.ajax({
			url : "play.do",
			type : "post",
			data : {
				id : id,
				pic:pic,
				name:name,
			},
			dataType : "json",
			success : function(json) {
				
				window.location.href = json.url;
				
			},
			error : function() {
				alert("获取数据失败！");
			},
		});
	};
	 */
</script>
<body>


			<span class="qqqqq" style="text-align: center;margin: 0 auto;">各种音乐免费在线播放、下载！</span>
	<div class="container ">
		
		<div class="row">
<div class="col-sm-3" id="so"></div>
			<div class="col-sm-6" id="so">
		
				
				<div class="input-group">
					<input type="text" class="form-control" id="musicName" /> 
					<span class="input-group-addon">
					    <a href="javascript:void(0);" onclick="ToSubmi()"> <span class="glyphicon glyphicon-search"></span><span>搜索</span></a>
					</span>
					<br>
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
						<th>序号</th>
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



<footer style="padding-bottom: 10px;background-color: rgba(200,200,200,0.6);font-size: 16px;">
    <div style="text-align: center;width: 100%;padding-top: 15px;padding-bottom: 10px;">
        
        <p></p>
        <p>
            ©2017 闽ICP备17014106号 &nbsp;&nbsp;版权所有@ YYZ.<span STYLE="color: #4aa4b4;font-size: 13px;">momo</span> 
          |  <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2727737621&site=qq&menu=yes">QQ客服</a
          </p>
    </div>
</footer>


</body>
</html>
