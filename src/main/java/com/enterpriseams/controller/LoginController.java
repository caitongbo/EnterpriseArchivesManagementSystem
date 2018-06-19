package com.enterpriseams.controller;

import com.enterpriseams.entity.UserInfo;
import com.enterpriseams.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;

/**
 * Created by caitongbo.
 * Date: 2018/6/19
 * Time: 14:53
 */
@Controller
public class LoginController {

    @Autowired
    @Qualifier("userInfoService")
    private UserInfoService userInfoService; //注意业务层


    @RequestMapping("/login")  //处理login请求
    public ModelAndView login(String loginname, String loginpwd, ModelAndView mv, HttpSession session){

        UserInfo userInfo = userInfoService.login(loginname, loginpwd); //调用业务层方法返回一个实例对象

        if (userInfo!=null) {  //判断查到的数据是否为空
            //如果用户不为空，设在Session域中
            session.setAttribute("userInfo", userInfo);

            mv.setView(new RedirectView("/main")); //重定向到main页面中

        }else {

            mv.addObject("message","登录名或者密码错误，请重新输入");

            mv.setViewName("login"); //重新设置view视图页面


        }

        return mv; //返回视图
    }

}
