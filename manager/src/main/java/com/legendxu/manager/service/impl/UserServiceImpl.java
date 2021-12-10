package com.legendxu.manager.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.legendxu.manager.entity.User;
import com.legendxu.manager.mapper.UserMapper;
import com.legendxu.manager.service.UserService;
import org.springframework.stereotype.Service;

/**
 * @author lejunxu
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}




