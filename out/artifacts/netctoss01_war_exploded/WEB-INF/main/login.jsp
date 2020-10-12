<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <table>
                <tr>
                    <td class="login_info">账号：</td>
                    <td colspan="2"><input id="admincode" type="text" class="width150" /></td>
                    <td class="login_error_info"><span class="required">30长度的字母、数字和下划线</span></td>
                </tr>
                <tr>
                    <td class="login_info">密码：</td>
                    <td colspan="2"><input id="password" type="password" class="width150" /></td>
                    <td><span class="required">30长度的字母、数字和下划线</span></td>
                </tr>
                <tr>
                    <td class="login_info">验证码：</td>
                    <td class="width70"><input id="imgcode" type="text" class="width70" /></td>
                    <td><img src="createCode.do" onclick="this.setAttribute('src','createCode.do?x='+Math.random());" alt="验证码" title="点击更换" /></td>
                    <td><span class="required"></span></td>              
                </tr>            
                <tr>
                    <td></td>
                    <td class="login_button" colspan="2">
                        <img id="loginImg" src="images/login_btn.png" /></a>
                    </td>    
                    <td><span id="errorMessage" class="required"></span></td>
                </tr>
            </table>
        </div>

        <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
        <script type="text/javascript">
            //页面加载完成后,自动调用
            $(function () {
                //给登录按钮设置一个监听器,点击登录按钮该函数回调
                $("#loginImg").click(function () {
                    //获取输入框中的账号,密码,验证码,发送给服务器
                    var admincode=$("#admincode").val();//通过id获取输入框中的值
                    var password=$("#password").val();
                    var imgcode = $("#imgcode").val();
                    //通过AJAX请求,将账户和密码发送给服务器
                    //login.do 请求路径
                    //params 参数
                    //发送请求成功后,当服务端响应数据成功时,该函数会回调
                    var params={
                        "admincode":admincode,
                        "password":password,
                        "imgcode" : imgcode
                    }
                    $.post("login.do",params,function (result) {
                        if (result.message=="imgcoderror"){
                            $("#errorMessage").html("验证码错误");
                        }else if (result.message=="imgcodetimeout"){
                            $("#errorMessage").html("验证码过期");
                        }else if (result.message=="usererror"){
                            $("#errorMessage").html("账号错误");
                        } else if (result.message=="pwderror"){
                            $("#errorMessage").html("密码错误");
                        }else if (result.message="success"){
                            location.href="toIndex.do";
                        }

                    },"json")
                        //请求失败回调该函数
                    .fail(function () {
                        alert("error")

                    })

                })
            })

        </script>
    </body>
</html>
