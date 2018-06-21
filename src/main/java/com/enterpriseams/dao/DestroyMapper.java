package com.enterpriseams.dao;

import com.enterpriseams.entity.Destroy;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import java.util.List;

public interface DestroyMapper {
    @Select("select * from t_destroy where destroytime between STR_TO_DATE(#{timeStart},'%Y-%m-%d %H:%i:%s') and STR_TO_DATE(#{timeEnd},'%Y-%m-%d %H:%i:%s') or loginid=#{keyword} or #{timeStart}+ #{timeEnd} is null order by destroyid asc ") //用@Select注解sql语句
    List<Destroy> findAll(@Param("keyword")String keyword, @Param("timeStart")String timeStart, @Param("timeEnd")String timeEnd);
    @Select("delete from t_destroy where destroyid=#{destroyid}")
    List<Destroy> delSelect(int destroyid);
}