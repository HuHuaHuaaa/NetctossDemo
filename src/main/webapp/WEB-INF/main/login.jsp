<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>达内－NetCTOSS</title>
    <link type="text/css" rel="stylesheet" media="all" href="styles/global.css" />
    <link type="text/css" rel="stylesheet" media="all" href="styles/global_color.css" />
</head>
<body class="index">
<div class="login_box">
    <%-- 当前:http://localhost:8080/NETCTOSS/main/toLogin.do --%>
    <%-- 目标:http://localhost:8080/NETCTOSS/main/login.do --%>
    <form action="login.do" method="post">
        <table>
            <tr>
                <td class="login_info">账号：</td>
                <td colspan="2"><input name="admin_code" value="${param.admin_code }" type="text" class="width150" /></td>
                <td class="login_error_info"><span class="required">30长度的字母、数字和下划线</span></td>
            </tr>
            <tr>
                <td class="login_info">密码：</td>
                <td colspan="2"><input name="password" type="password" value="${param.password }" class="width150" /></td>
                <td><span class="required">30长度的字母、数字和下划线</span></td>
            </tr>
            <tr>
                <td class="login_info">验证码：</td>
                <td class="width70"><input name="imagecode" type="text" class="width70" /></td>
                <td><img src="createImg.do" alt="验证码" title="点击更换"
                         onclick="this.setAttribute('src','createImg.do?x='+Math.random())" /></td>
                <td><span class="required"></span></td>
            </tr>
            <tr>
                <td></td>
                <td class="login_button" colspan="2">
                    <a href="javascript:document.forms[0].submit();"><img src="images/login_btn.png" /></a>
                </td>
                <td><span class="required">${error}</span></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
