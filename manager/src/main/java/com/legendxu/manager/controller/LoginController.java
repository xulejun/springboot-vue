package com.legendxu.manager.controller;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONObject;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.google.common.collect.Maps;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.User;
import com.legendxu.manager.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.session.web.server.session.SpringSessionWebSessionStore;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.session.WebSessionStore;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @author legend xu
 * @date 2022/1/20
 */
@Slf4j
@Controller
//@RestController
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UserService userService;

    /**
     * 微博授权后请求的回调接口
     *
     * @param code
     * @return
     */
    @GetMapping("/oauth2")
    public String oauth2(String code, HttpSession httpSession) {
        String accessTokenUrl = "https://api.weibo.com/oauth2/access_token";
        Map<String, Object> params = Maps.newHashMap();
        params.put("client_id", "2073363660");
        params.put("client_secret", "bad1f42a55d44f3894f0ea33942cdf3b");
        params.put("grant_type", "authorization_code");
        params.put("redirect_uri", "http://106.12.154.159:8096/login/oauth2");
        params.put("code", code);
        // 获取授权码
        HttpResponse response = HttpRequest.post(accessTokenUrl).form(params).timeout(15000).execute();
        JSONObject jsonObject = new JSONObject(response.body());
        String accessToken = jsonObject.getStr("access_token");
        String uid = jsonObject.getStr("uid");
        // 获取用户信息
        String userUrl = String.format("https://api.weibo.com/2/users/show.json?access_token=%s&uid=%s", accessToken, uid);
        HttpResponse userResponse = HttpRequest.get(userUrl).timeout(15000).execute();
        JSONObject userJson = new JSONObject(userResponse.body());
        log.info("获取到的用户信息：{}", userJson);
        // 默认将微博授权用户进行注册，如果已经注册过，直接进行登录，否则，先进行登录
        String screenName = userJson.getStr("screen_name");
        String sex = "m".equals(userJson.getStr("gender")) ? "男" : "女";
        String location = userJson.getStr("location");
        User userServiceOne = userService.getOne(Wrappers.<User>lambdaQuery().eq(User::getUsername, screenName));
        if (ObjectUtil.isEmpty(userServiceOne)) {
            // 默认密码为123456，数据库中保存的是md5+盐进行加密过后的密码，密码加密
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            userServiceOne = User.builder().nickName(screenName).username(screenName).sex(sex).address(location).age(18).password(passwordEncoder.encode("123456")).build();
            userService.save(userServiceOne);
        }
        httpSession.setAttribute("loginUser", userServiceOne);
        return "redirect:http://106.12.154.159/";
    }

    @ResponseBody
    @GetMapping("/oauth2Fail")
    public Result<?> oauth2Fail() {
        return Result.error("500", "登录失败");
    }

    /**
     * 退出登录
     *
     * @param httpSession
     * @return
     */
    @ResponseBody
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
    @ResponseBody
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
    @ResponseBody
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

    @ResponseBody
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
