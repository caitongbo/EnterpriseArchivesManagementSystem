package com.enterpriseams.service;

import com.enterpriseams.entity.Destroy;

import java.util.Date;
import java.util.List;

/**
 * Created by caitongbo.
 * Date: 2018/6/19
 * Time: 16:38
 */
public interface DestroyService {
    List<Destroy> getAll(String keyword,String timeStart,String timeEnd);
}
