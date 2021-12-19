package com.legendxu.manager.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @author xulejun
 * @date 2021/12/19
 */
@Data
public class AliPay {
    /**
     * 商品名称
     */
    private String subject;
    /**
     * 订单流水号
     */
    private String traceNo;
    /**
     * 支付金额
     */
    private String totalAmount;
}
