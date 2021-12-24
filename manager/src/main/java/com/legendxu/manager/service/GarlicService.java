package com.legendxu.manager.service;

import com.legendxu.manager.entity.Garlic;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @author lejunxu
 */
public interface GarlicService extends IService<Garlic> {

    /**
     * 获取近一年内的价格
     *
     * @return
     */
    List<Garlic> getOneYearData();

    /**
     * 获取近三年内的价格
     *
     * @return
     */
    List<Garlic> getThreeYearData();
}
