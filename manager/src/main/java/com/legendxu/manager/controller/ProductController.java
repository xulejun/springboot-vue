package com.legendxu.manager.controller;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.lang.UUID;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.OrderInfo;
import com.legendxu.manager.entity.Product;
import com.legendxu.manager.service.OrderInfoService;
import com.legendxu.manager.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * 该Controller使用Restful接口规范，可不填子路径名，通过请求类型找到对应接口
 *
 * @author legend xu
 * @date 2021/12/10
 */
@Slf4j
@RestController
@RequestMapping("/product")
public class ProductController {
    @Value("${server.port}")
    private String port;

    @Autowired
    ProductService productService;

    @Autowired
    OrderInfoService orderService;

    private static String ip = "http://localhost:";

    @PostMapping("/purchase/{id}")
    public Result<?> purchase(@PathVariable Integer id, @RequestParam String username) {
        Product product = productService.getById(id);
        if (ObjectUtil.isEmpty(product)) {
            return Result.error(String.valueOf(HttpStatus.BAD_REQUEST.value()), "未找到该商品");
        }
        if (Integer.parseInt(product.getStock()) <= 0) {
            return Result.error(String.valueOf(HttpStatus.BAD_REQUEST.value()), "该商品已售罄");
        }
        String skuTranceNo = IdUtil.getSnowflake(0L, 0L).nextIdStr();
        String requestParams = String.format("subject=%s&traceNo=%s&totalAmount=%s", product.getName(), skuTranceNo, product.getPrice());
        // 订单信息保存到数据库
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setSubject(product.getName());
        orderInfo.setSkuTradeNo(skuTranceNo);
        orderInfo.setPayAmount(product.getPrice().toString());
        orderInfo.setPayer(username);
        orderService.save(orderInfo);
        return Result.success(ip + port + "/alipay/pay?" + requestParams);
    }

    @PostMapping("/uploadFile")
    public Result<?> uploadFile(@RequestBody MultipartFile file) {
        String uuid = IdUtil.simpleUUID();
        String fileName = uuid + "_" + file.getOriginalFilename();
        String filePath = System.getProperty("user.dir").concat("/manager/src/main/resources/file/" + fileName);
        try {
            FileUtil.writeBytes(file.getBytes(), filePath);
        } catch (IOException e) {
            log.warn("文件上传失败：", e);
        }
        return Result.success(ip + port + "/product/download/" + uuid);
    }

    @GetMapping("/download/{uuid}")
    public ResponseEntity<byte[]> download(@PathVariable String uuid) {
        String filePath = System.getProperty("user.dir").concat("/manager/src/main/resources/file/");
        List<String> listFile = FileUtil.listFileNames(filePath);
        // 通过uuid找到对应文件
        String fileName = listFile.stream().filter(name -> name.contains(uuid)).findAny().orElse("");
        // 实现下载
        HttpHeaders headers = new HttpHeaders();
        if (StrUtil.isNotBlank(fileName)) {
            headers.setContentDispositionFormData("attachment", fileName);
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            return new ResponseEntity<>(FileUtil.readBytes(filePath + fileName), headers, HttpStatus.CREATED);
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    @PostMapping("/saveProduct")
    public Result<?> saveProduct(@RequestBody Product product) {
        if (ObjectUtil.isEmpty(product.getCreateTime())) {
            product.setCreateTime(new Date());
        }
        productService.save(product);
        return Result.success();
    }

    @PutMapping("/updateProduct")
    public Result<?> updateProduct(@RequestBody Product product) {
        if (ObjectUtil.isEmpty(product.getCreateTime())) {
            product.setCreateTime(new Date());
        }
        productService.updateById(product);
        return Result.success();
    }

    @DeleteMapping("/deleteProduct/{id}")
    public Result<?> updateProduct(@PathVariable("id") Integer id) {
        productService.removeById(id);
        return Result.success();
    }

    /**
     * 分页查询
     *
     * @param pageNum
     * @param pageSize
     * @param search
     * @return
     */
    @GetMapping("/pageFindProduct")
    public Result<?> pageFindProduct(@RequestParam(defaultValue = "1") Integer pageNum,
                                     @RequestParam(defaultValue = "10") Integer pageSize,
                                     @RequestParam(defaultValue = "") String search) {
        Page<Product> page = productService.page(new Page<>(pageNum, pageSize), Wrappers.<Product>lambdaQuery().like(Product::getName, search));
        return Result.success(page);
    }
}
