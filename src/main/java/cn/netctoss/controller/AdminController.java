package cn.netctoss.controller;

import cn.netctoss.service.IAdminService;
import cn.netctoss.util.ImageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private IAdminService iAdminService;


    @RequestMapping("toLogin.do")
    public String toLogin(){
        return "main/login";
    }
    //localhost:8080/NETCTOSS/main/toLogin.do

    @RequestMapping("login.do")
    public String login(String admin_code, String password, String imagecode, HttpSession session, ModelMap modelMap){
        //从session中获取createImg()方法存入的验证码
        //imgcode:session中存入的验证码
        String imgcode=(String) session.getAttribute("imgcode");
        //如果用户传入的验证码为null或者为空字符串或者不等于之前session中存入的验证码即验证码错误
        if(imagecode==null||
                imagecode.equals("")||
                !imagecode.equalsIgnoreCase(imgcode)){
            //验证码错误,将错误信息转发到登录页面
            modelMap.addAttribute("error", "验证码错误");
            return "main/login";
        }

        //根据客户端传入的账号去数据库查询密码
        String pwd=iAdminService.findByCode(admin_code,password);
        //如果没有查询到密码，账号错误
        if(pwd==null){
            modelMap.addAttribute("error","账号错误");
            return "main/login";
            //如果数据库的密码和传入的密码不一致，密码错误
        }else if(!pwd.equals(password)){
            modelMap.addAttribute("error","密码错误");
            return "main/login";
        }else{
            //登录成功,重定向到主页
            //将用户名存入session
            session.setAttribute("admin_code",admin_code);
            return "redirect:toIndex.do";
        }
    }
    @RequestMapping("toIndex.do")
    public String toIndex(){
        return "main/index";
    }

    @RequestMapping("createImg.do")
    public String createImg(HttpSession session, HttpServletResponse res) throws IOException {
        //调用ImageUtil获取验证码文字和图片
        Object[]objs= ImageUtil.createImage();
        //验证码文字
        String imgCode=(String)objs[0];
        //验证码文字存入session,
        session.setAttribute("imgcode", imgCode);
        //验证码图片
        BufferedImage img=(BufferedImage)objs[1];
        //将图片相应给浏览器
        res.setContentType("image/jpeg");
        //获取向浏览器相应是输出流
        OutputStream os=res.getOutputStream();
        ImageIO.write(img, "jpeg", os);
        return null;
    }
}
