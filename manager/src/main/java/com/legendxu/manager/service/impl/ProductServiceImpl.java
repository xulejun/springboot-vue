package com.legendxu.manager.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.legendxu.manager.entity.Product;
import com.legendxu.manager.mapper.ProductMapper;
import com.legendxu.manager.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author lejunxu
 */
@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements ProductService {
    @Resource
    ProductMapper productMapper;

    @Override
    public void reduceStockByName(String name) {
        productMapper.reduceStockByName(name);
    }
}




