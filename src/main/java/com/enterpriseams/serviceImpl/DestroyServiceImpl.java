package com.enterpriseams.serviceImpl;

import com.enterpriseams.dao.DestroyMapper;
import com.enterpriseams.entity.Destroy;
import com.enterpriseams.entity.UserInfo;
import com.enterpriseams.service.DestroyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by caitongbo.
 * Date: 2018/6/19
 * Time: 16:50
 */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
//表示数据库隔离级别为如果当前有就使用当前，如果没有就创建新的事务，
//隔离级别为：读已提交，也就是数据在写入的时候是无法被读的，只有提交后才能让其他事务读取，防止数据库发生脏读
@Service("destroyService")
public class DestroyServiceImpl implements DestroyService {
    @Autowired
    private DestroyMapper destroyMapper; //用AutoWired注入DB层

    @Transactional(readOnly=true) //数据库的读取方式为：只读
    public List<Destroy> getAll(String keyword,String timeStart,String timeEnd) {
        return destroyMapper.findAll(keyword,timeStart,timeEnd);
    }
    @Transactional(readOnly=true) //数据库的读取方式为：只读
    public List<Destroy> delSelect(int destroyid) {
        return destroyMapper.delSelect(destroyid);
    }
}
