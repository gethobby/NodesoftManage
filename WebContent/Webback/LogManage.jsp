<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>目标特性建模软件及几何模型管理平台——后台——暂未开放</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="robots" content="">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="../css/style.css" media="all">
<link rel="stylesheet" href="../css/ui.css" media="all">
<script src="../js/jquery-1.11.1.min.js"></script>
<!--[if IE]><link rel="stylesheet" href="../css/ie.css" media="all" /><![endif]-->
<!--[if lt IE 9]><link rel="stylesheet" href="../css/lt-ie-9.css" media="all" /><![endif]-->
<!--[if IE 7]><link rel="stylesheet" href="../css/IE/ie7.css" media="all" /><![endif]-->
<!--[if IE 8]><link rel="stylesheet" href="../css/IE/ie8.css" media="all" /><![endif]-->
<script src="../js/bootstrap/www/js/echarts.js"></script>
<script src="../js/bootstrap/www/js/bootstrap.js"></script>
</head>
<body onload="startTime()"> 
<div class="testing">
	<header class="main">
		<h1><strong>目标特性建模软件及几何模型</strong> 管理平台</h1>
		<span class="button blue" style="margin-top: -23px; float: right; position: relative;" onclick="window.open('SearchFile.jsp?filename='+document.getElementById('search').value)">查询</span>
		<input type="text" value="模型名称" id="search">
	</header>
	<section class="user" >
		<div class="profile-img">
			<p><img src="../image/button_logout.jpg" alt="" height="40" width="40"> 您好！用户</p>
			<p id="day" style="display:inline">2014.07.24</p>
		</div>
		<div class="buttons">
			<button class="ico-font">⏶</button>
			<span class="button">设置</span>
			<span class="button">帮助</span>
			<span class="button blue"><a href="../login_back.jsp">登出</a></span>
		</div>
	</section>
</div>
<nav>
	<ul id="navBar">
		<li>
			<a href="UserManage.jsp" class="users" title="Users"><span class="icon">&#128711;</span>用户管理</a>
		</li>
		<li>
			<a href="NodeManage.jsp" class="nodes" title="Nodes"><span class="icon">&#128711;</span> 节点管理</a>
			<ul class="submenu">
				<li><a href="PlatformlogNodeconcern.jsp">节点使用情况</a></li>
				<li class="last"><a href="NodeManage.jsp">添加节点</a></li>
			</ul>
		</li>
		<li>
			<a href="SoftManage.jsp" class="users" title="Users"><span class="icon">&#128711;</span>软件管理</a>
			<ul class="submenu">
				<li class="last"><a href="Softinfo.jsp">添加/修改软件</a></li>
			</ul>			
		</li>
		<li  class="section">
			<a href="PlatformlogUserconcern.jsp" class="logs" title="Logs"><span class="icon">&#128711;</span>日志管理</a>
		</li>
		<li></li>
	</ul>
</nav>
<div id="alert">
	<section class="alert">
		<div class="green">	
			<p>当前模型计算进行中 <a href="#">3 项</a>和等待计算 <a href="#">7项</a>,详情参看计算任务管理</p>
				<span class="close" onclick="document.getElementById('alert').close();">✖</span>
			</div>
	</section>
</div>
<section class="content">
	<div class="widget-container">
	</div>
</section>
<script src="../js/custom.js"></script>
<script src="../js/cycle.js"></script>
<script src="../js/jquery.checkbox.min.js"></script>
<script src="../js/jquery.tablesorter.min.js"></script>
<script src="../js/timerFunction.js"></script>
<script src="../js/tableData.js"></script>
<script type="text/javascript">var timeTicket=2000;var timeTicket1=2000;</script>
<script src="../js/bootstrap/echartExample.js"></script>
<script type="text/javascript">
// Feature slider for graphs
$('.cycle').cycle({
	fx: "scrollHorz",
	timeout: 0,
    slideResize: 0,
    prev:    '.left-btn', 
    next:    '.right-btn'
});
</script>
</body>
</html>