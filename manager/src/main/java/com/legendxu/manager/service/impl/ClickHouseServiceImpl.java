package com.legendxu.manager.service.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.legendxu.manager.entity.ClickHouseEntity;
import com.legendxu.manager.mapper.ClickHouseMapper;
import com.legendxu.manager.service.ClickHouseService;
import org.springframework.stereotype.Service;

/**
 * @author legend xu
 * @date 2022/7/11
 */
@Service
//@DS("clickhouse")   // 多数据源，标注名称，需要配置多数据源则开启
public class ClickHouseServiceImpl extends ServiceImpl<ClickHouseMapper, ClickHouseEntity> implements ClickHouseService {
}
