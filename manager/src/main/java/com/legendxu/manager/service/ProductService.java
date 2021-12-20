package com.legendxu.manager.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.legendxu.manager.entity.Product;
import com.legendxu.manager.entity.User;

/**
 * @author lejunxu
 */
public interface ProductService extends IService<Product> {
    /**
     * 根据商品名称扣库存
     *
     * @param name
     */
    void reduceStockByName(String name);
}
