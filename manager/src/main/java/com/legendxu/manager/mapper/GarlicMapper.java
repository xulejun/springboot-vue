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

    @Select("select id,title,detailUrl,article_time,price,crawler_time from garlic group by article_time desc limit 365")
    List<Garlic> getYearPrice();
}




