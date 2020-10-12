<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<img src="images/logo.png" alt="logo" class="left" />
<span style="color: #fff">${sessionScope.admincode }</span>
<%--<span style="color: #fff">${cookie.admincode.value }</span>--%>
<a href="logout.do">[退出]</a>
