package com.legendxu.manager.mapper;

import com.legendxu.manager.entity.Garlic;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author lejunxu
 * @Entity orderInfo.domain.Garlic
 */
public interface GarlicMapper extends BaseMapper<Garlic> {

    @Select("select id,title,detail_url,article_time,price,crawler_time from garlic group by article_time desc limit 365")
    List<Garlic> getOneYearData();

    @Select("select id,title,detail_url,article_time,price,crawler_time from garlic group by article_time desc limit 1095")
    List<Garlic> getThreeYearData();
}




