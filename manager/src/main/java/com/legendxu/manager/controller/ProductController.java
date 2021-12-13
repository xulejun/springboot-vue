package com.legendxu.manager.controller;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.Product;
import com.legendxu.manager.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * 该Controller使用Restful接口规范，可不填子路径名，通过请求类型找到对应接口
 *
 * @author legend xu
 * @date 2021/12/10
 */
@RestController
@RequestMapping("/product")
public class ProductController {
    @Autowired
    ProductService productService;

    @PostMapping("/saveProduct")
    public Result<?> saveProduct(@RequestBody Product product) {
        if (ObjectUtil.isEmpty(product.getCreateTime())) {
            product.setCreateTime(new Date());
        }
        productService.save(product);
        return Result.success();
    }

    @PutMapping("/updateProduct")
    public Result<?> updateProduct(@RequestBody Product product) {
        if (ObjectUtil.isEmpty(product.getCreateTime())) {
            product.setCreateTime(new Date());
        }
        productService.updateById(product);
        return Result.success();
    }

    @DeleteMapping("/deleteProduct/{id}")
    public Result<?> updateProduct(@PathVariable("id") Integer id) {
        productService.removeById(id);
        return Result.success();
    }

    /**
     * 分页查询
     *
     * @param pageNum
     * @param pageSize
     * @param search
     * @return
     */
    @GetMapping("/pageFindProduct")
    public Result<?> pageFindProduct(@RequestParam(defaultValue = "1") Integer pageNum,
                                     @RequestParam(defaultValue = "10") Integer pageSize,
                                     @RequestParam(defaultValue = "") String search) {
        Page<Product> page = productService.page(new Page<>(pageNum, pageSize), Wrappers.<Product>lambdaQuery().like(Product::getName, search));
        return Result.success(page);
    }
}
