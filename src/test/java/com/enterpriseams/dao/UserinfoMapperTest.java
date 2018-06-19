//package com.enterpriseams.dao;
//
//import com.enterpriseams.entity.UserInfo;
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
///**
// * Created by caitongbo.
// * Date: 2018/6/19
// * Time: 14:33
// */
//public class UserinfoMapperTest {
//    private ApplicationContext applicationContext;
//    @Autowired
//    private UserInfoMapper userinfoMapper;
//
//    @Before
//    public void setUp() throws Exception {
//        applicationContext = new ClassPathXmlApplicationContext("classpath:spring/applicationContext.xml");//加载spring配置文件
//        userinfoMapper = applicationContext.getBean(UserInfoMapper.class);//在这里导入要测试的
//    }
//
//    @After
//    public void tearDown() throws Exception {
//
//    }
//
//    @Test
//    public void insert() {
//        UserInfo userinfo = new UserInfo();
//        userinfo.setLoginid("1");
//        userinfo.setLoginname("admin");
//        userinfo.setLoginpwd("admin");
//        userinfo.setRoleid(2);
//        userinfo.setLevelid(89);
//        userinfo.setCardid("1101");
//        userinfo.setDutyid(1);
//        userinfo.setDeptid(1);
//        userinfo.setJoindate(12);
//        userinfo.setTelephone("100000011100");
//        userinfo.setEnduid(1);
//        userinfo.setAddress("中国南京");
//        userinfo.setSex("男");
//        userinfo.setRemark("管理员");
//        int result = userinfoMapper.insertSelective(userinfo);
//        System.out.println(result);
//        assert (result == 1);
//    }
//}