package com.legendxu.manager.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

import lombok.Data;

/**
 * 订单详情表
 *
 * @author lejunxu
 * @TableName order_info
 */
@TableName(value = "order_info")
@Data
public class OrderInfo implements Serializable {
    /**
     *
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 交易名称
     */
    private String subject;

    /**
     * 支付宝交易凭证号
     */
    private String tradeNo;

    /**
     * 买家在支付宝唯一id
     */
    private String buyerId;

    /**
     * 商品订单号
     */
    private String skuTradeNo;

    /**
     * 交易状态：0-未支付，1-已支付
     */
    private Integer status;

    /**
     * 支付人
     */
    private String payer;

    /**
     * 买家付款金额
     */
    private String payAmount;

    /**
     * 买家付款时间
     */
    private String payTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}