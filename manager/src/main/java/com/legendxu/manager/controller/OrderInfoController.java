package com.legendxu.manager.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.OrderInfo;
import com.legendxu.manager.service.OrderInfoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 该Controller使用Restful接口规范，可不填子路径名，通过请求类型找到对应接口
 *
 * @author legend xu
 * @date 2021/12/10
 */
@Slf4j
@RestController
@RequestMapping("/order")
public class OrderInfoController {
    @Autowired
    OrderInfoService orderService;

    @PostMapping("/saveOrder")
    public Result<?> saveOrder(@RequestBody OrderInfo order) {
        orderService.save(order);
        return Result.success();
    }

    @PutMapping("/updateOrder")
    public Result<?> updateOrder(@RequestBody OrderInfo order) {
        orderService.updateById(order);
        return Result.success();
    }

    @DeleteMapping("/deleteOrder/{id}")
    public Result<?> updateOrder(@PathVariable("id") Integer id) {
        orderService.removeById(id);
        return Result.success();
    }

    @PostMapping("/bathDelete")
    public Result<?> updateOrder(@RequestBody List<Integer> ids) {
        orderService.removeByIds(ids);
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
    @GetMapping("/pageFindOrder")
    public Result<?> pageFindOrder(@RequestParam(defaultValue = "1") Integer pageNum,
                                   @RequestParam(defaultValue = "10") Integer pageSize,
                                   @RequestParam(defaultValue = "") String search) {
        Page<OrderInfo> page = orderService.page(new Page<>(pageNum, pageSize), Wrappers.<OrderInfo>lambdaQuery().like(OrderInfo::getSubject, search));
        return Result.success(page);
    }
}
