package com.legendxu.manager.controller;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.User;
import com.legendxu.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

/**
 * @author legend xu
 * @date 2022/1/20
 */
@RestController
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UserService userService;

    /**
     * 退出登录
     *
     * @param httpSession
     * @return
     */
    @GetMapping("/logout")
    public Result<?> logout(HttpSession httpSession) {
        httpSession.removeAttribute("loginUser");
        return Result.success();
    }

    /**
     * 预登陆处理
     *
     * @param httpSession
     * @return
     */
    @GetMapping("/preLogin")
    public Result<?> doLogin(HttpSession httpSession) {
        Object loginUser = null;
        if (ObjectUtil.isNotEmpty(httpSession.getAttribute("loginUser"))) {
            loginUser = httpSession.getAttribute("loginUser");
        }
        return Result.success(loginUser);
    }

    /**
     * 登录按钮
     *
     * @param user
     * @param httpSession
     * @return
     */
    @PostMapping("/doLogin")
    public Result<?> login(@RequestBody User user, HttpSession httpSession) {
        User selectUser = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, user.getUsername()));
        if (ObjectUtil.isEmpty(selectUser)) {
            return Result.error("-1", "用户名不存在");
        }
        // 用 security 框架自带的API做密码匹配校验
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        boolean matches = passwordEncoder.matches(user.getPassword(), selectUser.getPassword());
        if (!matches) {
            return Result.error("-2", "密码错误");
        }
        httpSession.setAttribute("loginUser", selectUser);
        return Result.success(selectUser);
    }

    @PostMapping("/register")
    public Result<?> register(@RequestBody User user) {
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
}
