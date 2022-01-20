package com.legendxu.manager.controller;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.User;
import com.legendxu.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

    @PostMapping("/saveUser")
    public Result<?> saveUser(@RequestBody User user) {
        User selectUser = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, user.getUsername()));
        if (ObjectUtil.isNotEmpty(selectUser)) {
            return Result.error("-3", "用户名重复");
        }
        // 默认密码为123456，数据库中保存的是md5+盐进行加密过后的密码，密码加密
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String password = StrUtil.isBlank(user.getPassword()) ? "123456" : user.getPassword();
        user.setPassword(passwordEncoder.encode(password));
        user.setRole("2");
        userService.save(user);
        return Result.success();
    }

    @PutMapping("/updateUser")
    public Result<?> updateUser(@RequestBody User user) {
        // 默认密码为123456，数据库中保存的是md5+盐进行加密过后的密码，密码加密
        if (StrUtil.isBlank(user.getPassword())) {
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            user.setPassword(passwordEncoder.encode("123456"));
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

    @GetMapping("/userInfo")
    public Result<?> userInfo(@RequestParam String username) {
        User user = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, username));
        if (ObjectUtil.isEmpty(user)) {
            return Result.error("-1", "当前用户不存在");
        }
        return Result.success(user);
    }


}
