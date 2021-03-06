package com.legendxu.manager.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.legendxu.manager.entity.Garlic;
import com.legendxu.manager.mapper.GarlicMapper;
import com.legendxu.manager.service.GarlicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author lejunxu
 */
@Service
public class GarlicServiceImpl extends ServiceImpl<GarlicMapper, Garlic> implements GarlicService {
    @Resource
    GarlicMapper garlicMapper;

    @Override
    public List<Garlic> getOneYearData() {
        return garlicMapper.getOneYearData();
    }

    @Override
    public List<Garlic> getThreeYearData() {
        return garlicMapper.getThreeYearData();
    }

    @Override
    public int replace(Garlic garlic) {
        return garlicMapper.replace(garlic);
    }
}




