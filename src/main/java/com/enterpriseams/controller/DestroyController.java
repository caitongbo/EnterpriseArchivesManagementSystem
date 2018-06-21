package com.enterpriseams.controller;

import com.enterpriseams.entity.Destroy;
import com.enterpriseams.service.DestroyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by caitongbo.
 * Date: 2018/6/19
 * Time: 14:53
 */
@Controller
public class DestroyController {
    @Autowired
    @Qualifier("destroyService")   //这里使用@ualifier注解注入bookService业务层
    private DestroyService destroyService;

    @RequestMapping("/destroyQuery")  //处理main请求
    public String main(Model model,String keyword,String timeStart,String timeEnd){
        List<Destroy> destroys = destroyService.getAll(keyword,timeStart,timeEnd); //调用业务层方法
        model.addAttribute("destroys",destroys);//把从数据库取到的数据放入到model中
        return "destroyQuery";
    }
    @RequestMapping("/search")
    public String search(Model model,@RequestParam("keyword") String keyword, @RequestParam("timeStart") String timeStart,@RequestParam("timeEnd") String timeEnd){
           List<Destroy> destroys = destroyService.getAll(keyword, timeStart, timeEnd); //调用业务层方法
           model.addAttribute("destroys", destroys);//把从数据库取到的数据放入到model中
           return "destroyQuery";
    }
    @RequestMapping(value = "/delete/{destroyid}",method = RequestMethod.GET)
    public String delete(Model model, @PathVariable String destroyid) {
        int i = Integer.parseInt(destroyid);
        List<Destroy> destroys = destroyService.delSelect(i); //调用业务层方法
        model.addAttribute("destroys"   ,destroys);//把从数据库取到的数据放入到model中
        System.out.printf("%d",i);
        return "redirect:/destroyQuery";
    }


}
