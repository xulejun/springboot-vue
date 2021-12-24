package com.legendxu.manager.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.Garlic;
import com.legendxu.manager.service.GarlicService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 价格折线图
 * 该Controller使用Restful接口规范，可不填子路径名，通过请求类型找到对应接口
 *
 * @author legend xu
 * @date 2021/12/10
 */
@Slf4j
@RestController
@RequestMapping("/garlic")
public class GarlicController {

    @Autowired
    GarlicService garlicService;

    @PostMapping("/saveGarlic")
    public Result<?> saveGarlic(@RequestBody Garlic garlic) {
        garlicService.save(garlic);
        return Result.success();
    }

    @PutMapping("/updateGarlic")
    public Result<?> updateGarlic(@RequestBody Garlic garlic) {
        garlicService.updateById(garlic);
        return Result.success();
    }

    @PutMapping("/updateGarlicByDate")
    public Result<?> updateGarlicByDate(@RequestBody Garlic garlic) {
        garlicService.update(garlic, Wrappers.<Garlic>lambdaUpdate().like(Garlic::getArticleTime, garlic.getArticleTime()));
        return Result.success();
    }

    @DeleteMapping("/deleteGarlic/{id}")
    public Result<?> updateGarlic(@PathVariable("id") Integer id) {
        garlicService.removeById(id);
        return Result.success();
    }

    @PostMapping("/bathDelete")
    public Result<?> updateGarlic(@RequestBody List<Integer> ids) {
        garlicService.removeByIds(ids);
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
    @GetMapping("/pageFindGarlic")
    public Result<?> pageFindGarlic(@RequestParam(defaultValue = "1") Integer pageNum,
                                    @RequestParam(defaultValue = "10") Integer pageSize,
                                    @RequestParam(defaultValue = "") String search) {
        Page<Garlic> page = garlicService.page(new Page<>(pageNum, pageSize), Wrappers.<Garlic>lambdaQuery().like(Garlic::getPrice, search));
        return Result.success(page);
    }

    @GetMapping("/getYearPrice")
    public Result<?> getYearPrice() {
        List<Garlic> yearPrice = garlicService.getYearPrice();
        return Result.success(yearPrice);
    }

}
