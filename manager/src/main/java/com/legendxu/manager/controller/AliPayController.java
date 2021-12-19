package com.legendxu.manager.controller;

import com.alipay.easysdk.factory.Factory;
import com.alipay.easysdk.payment.page.models.AlipayTradePagePayResponse;
import com.google.common.collect.Maps;
import com.legendxu.manager.entity.AliPay;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.Objects;

/**
 * @author xulejun
 * @date 2021/12/19
 */
@Slf4j
@RestController
@RequestMapping("/alipay")
public class AliPayController {

    @GetMapping("/pay")
    public String pay(AliPay aliPay) {
        AlipayTradePagePayResponse payResponse = null;
        try {
            // 发起支付宝API接口调用
            payResponse = Factory.Payment.Page().pay(aliPay.getSubject(), aliPay.getTraceNo(), aliPay.getTotalAmount(), "");
        } catch (Exception e) {
            log.warn("支付接口调用异常：", e);
        }
        return Objects.requireNonNull(payResponse).getBody();
    }

    @PostMapping("/notify")
    public String payNotify(HttpServletRequest request) {
        if ("TRADE_SUCCESS".equals(request.getParameter("trade_status"))) {
            Map<String, String> params = Maps.newHashMap();
            Map<String, String[]> requestParams = request.getParameterMap();
            for (String name : requestParams.keySet()) {
                params.put(name, request.getParameter(name));
            }
            String tradeNo = params.get("out_trade_no");
            String payment = params.get("gmt_payment");

            // 支付宝验签
            try {
                if (Factory.Payment.Common().verifyNotify(params)) {
                    log.info("交易名称：{}", params.get("subject"));
                    log.info("交易状态：{}", params.get("trade_status"));
                    log.info("支付宝交易凭证号：{}", params.get("trade_no"));
                    log.info("商品订单号：{}", params.get("out_trade_no"));
                    log.info("交易金额：{}", params.get("total_amount"));
                    log.info("买家在支付宝唯一id：{}", params.get("buyer_id"));
                    log.info("买家付款时间：{}", params.get("gmt_payment"));
                    log.info("买家付款金额：{}", params.get("buyer_pay_amount"));
                }
                // 更新订单 未/已支付
            } catch (Exception e) {
                log.warn("支付宝验签异常：", e);
            }
        }
        return HttpStatus.OK.toString();
    }
}
