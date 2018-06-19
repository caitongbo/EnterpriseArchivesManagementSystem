package com.enterpriseams.service;

import com.enterpriseams.entity.UserInfo;

/**
 * Created by caitongbo.
 * Date: 2018/6/19
 * Time: 16:36
 */
public interface UserInfoService {
    UserInfo login(String username, String password);
}
