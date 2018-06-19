package com.enterpriseams.serviceImpl;

import com.enterpriseams.dao.UserInfoMapper;
import com.enterpriseams.entity.UserInfo;
import com.enterpriseams.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by caitongbo.
 * Date: 2018/6/19
 * Time: 16:50
 */

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {    //表示service层

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Transactional(readOnly=true)
    public UserInfo login(String loginname, String loginpwd) {

        return userInfoMapper.finwithLoginnameAndPassword(loginname, loginpwd);//调用DB层方法

    }

}
