package com.enterpriseams.dao;

import com.enterpriseams.entity.UserInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

//@Repository
public interface UserInfoMapper {
    @Select("select * from t_userinfo where loginname=#{loginname} and loginpwd=#{loginpwd}") //以#{}的方式表示sql中的参数
    UserInfo finwithLoginnameAndPassword(@Param("loginname")String loginname, @Param("loginpwd")String loginpwd);//@param表示上面sql中的参数
}