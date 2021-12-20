package com.legendxu.manager.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.legendxu.manager.entity.Product;
import com.legendxu.manager.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
 * @author lejunxu
 */
public interface ProductMapper extends BaseMapper<Product> {
    /**
     * 根据商品名称扣库存
     *
     * @param name
     */
    @Update("update product set stock = stock-1 where name = #{name}")
    void reduceStockByName(@Param("name") String name);
}




