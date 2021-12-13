package com.legendxu.manager.controller;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.User;
import com.legendxu.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 该Controller使用Restful接口规范，可不填子路径名，通过请求类型找到对应接口
 *
 * @author legend xu
 * @date 2021/12/10
 */
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @PostMapping("/login")
    public Result<?> login(@RequestBody User user) {
        User selectUser = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, user.getUsername()).eq(User::getPassword, user.getPassword()));
        if (ObjectUtil.isEmpty(selectUser)) {
            return Result.error("-1", "用户名或者密码错误");
        }
        return Result.success();
    }

    @PostMapping("/register")
    public Result<?> register(@RequestBody User user) {
        User selectUser = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, user.getUsername()));
        if (ObjectUtil.isNotEmpty(selectUser)) {
            return Result.error("-1", "用户名重复");
        }
        if (StrUtil.isBlank(user.getPassword())) {
            user.setPassword("123456");
        }
        userService.save(user);
        return Result.success();
    }

    @PostMapping("/saveUser")
    public Result<?> saveUser(@RequestBody User user) {
        if (StrUtil.isBlank(user.getPassword())) {
            user.setPassword("123456");
        }
        userService.save(user);
        return Result.success();
    }

    @PutMapping("/updateUser")
    public Result<?> updateUser(@RequestBody User user) {
        if (StrUtil.isBlank(user.getPassword())) {
            user.setPassword("123456");
        }
        userService.updateById(user);
        return Result.success();
    }

    @DeleteMapping("/deleteUser/{id}")
    public Result<?> updateUser(@PathVariable("id") Integer id) {
        userService.removeById(id);
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
    @GetMapping("/pageFindUser")
    public Result<?> pageFindUser(@RequestParam(defaultValue = "1") Integer pageNum,
                                  @RequestParam(defaultValue = "10") Integer pageSize,
                                  @RequestParam(defaultValue = "") String search) {
        Page<User> page = userService.page(new Page<>(pageNum, pageSize), Wrappers.<User>lambdaQuery().like(User::getUsername, search));
        return Result.success(page);
    }
}
