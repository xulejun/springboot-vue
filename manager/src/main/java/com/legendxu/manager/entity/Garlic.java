package com.legendxu.manager.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 大蒜行情价格
 *
 * @author lejunxu
 * @TableName garlic
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@TableName(value = "garlic")
public class Garlic implements Serializable {
    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 标题
     */
    private String title;

    /**
     * 详情Url
     */
    private String detailUrl;

    /**
     * 文章发布时间
     */
    private String articleTime;

    /**
     * 价格
     */
    private BigDecimal price;

    /**
     * 文章采集时间
     */
    private Date crawlerTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}