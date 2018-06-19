package com.enterpriseams.dao;

import com.enterpriseams.entity.Destroy;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface DestroyMapper {

    @Select("select * from t_destroy where destroytime between STR_TO_DATE(#{timeStart},'%Y-%m-%d %H:%i:%s') and STR_TO_DATE(#{timeEnd},'%Y-%m-%d %H:%i:%s')") //用@Select注解sql语句
//    Destroy findtimestarttotimeend(@Param("timeStart")String timeStart, @Param("timeEnd")String timeEnd);
    List<Destroy> findAll(@Param("keyword")String keyword, @Param("timeStart")String timeStart, @Param("timeEnd")String timeEnd);

}