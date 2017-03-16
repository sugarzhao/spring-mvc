<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:set var="base" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${base}/res/css/index.css" rel="stylesheet" type="text/css" />
<decorator:head />
</head>

<body>
<div class="top">
	<div class="logo"><a href="#"><img src="${base}/res/images/logo.gif" width="1002" height="58" /></a></div>
    <div class="nav_left"></div>
    <div class="nav_center"></div>
    <div class="nav_right"></div>
    <div class="clear"></div>
</div>
<!--top end-->
<div class="main">
	<div class="left">
    	<h2>流量分析</h2>
    	<ul>
        	<li><a href="${base}/testUser/queryUser.do">概况</a></li>
            <li><a href="${base}/testUser/queryUser.do">按天流量分析</a></li>
            <li><a href="${base}/testUser/queryUser.do">按小时流量查询</a></li>
        </ul>
        <h2>流量分析</h2>
    	<ul>
        	<li><a href="${base}/testUser/queryUser.do">概况</a></li>
            <li><a href="${base}/testUser/addUserView.do">添加</a></li>
            <li><a href="${base}/testCache/cache.do">缓存测试</a></li>
            <li><a href="${base}/testUser/queryUserByCache.do">缓存测试2</a></li>
        </ul>
    </div>
      <decorator:body />
    <div class="clear"></div>
</div><!--main end-->
<div class="foot">
	<center>版权信息</center>
</div>
</body>
</html>
