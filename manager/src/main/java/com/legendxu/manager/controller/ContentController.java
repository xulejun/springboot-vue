package com.legendxu.manager.controller;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.legendxu.manager.common.Result;
import com.legendxu.manager.entity.Content;
import com.legendxu.manager.service.ContentService;
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
@RequestMapping("/content")
public class ContentController {
    @Value("${server.port}")
    private String port;

    @Autowired
    ContentService contentService;

    private static String ip = "http://localhost:";

    @PostMapping("/uploadImg")
    public JSONObject uploadFile(@RequestBody MultipartFile file) {
        String uuid = IdUtil.simpleUUID();
        String fileName = uuid + "_" + file.getOriginalFilename();
        String filePath = System.getProperty("user.dir").concat("/manager/src/main/resources/file/" + fileName);
        try {
            FileUtil.writeBytes(file.getBytes(), filePath);
        } catch (IOException e) {
            log.warn("文件上传失败：", e);
        }
        String url = ip + port + "/product/download/" + uuid;
        // wangEditor图片上传返回格式
        JSONObject jsonObject = new JSONObject();
        jsonObject.putOpt("errno", "0");
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject1 = new JSONObject();
        jsonObject1.putOpt("url", url);
        jsonObject1.putOpt("alt", "图片文字说明");
        jsonObject1.putOpt("href", "跳转链接");
        jsonArray.put(jsonObject1);
        jsonObject.putOpt("data", jsonArray);
        return jsonObject;
    }

    @PostMapping("/saveContent")
    public Result<?> saveContent(@RequestBody Content content) {
        if (ObjectUtil.isEmpty(content.getCreateTime())) {
            content.setCreateTime(new Date());
        }
        contentService.save(content);
        return Result.success();
    }

    @PutMapping("/updateContent")
    public Result<?> updateContent(@RequestBody Content content) {
        if (ObjectUtil.isEmpty(content.getCreateTime())) {
            content.setCreateTime(new Date());
        }
        contentService.updateById(content);
        return Result.success();
    }

    @DeleteMapping("/deleteContent/{id}")
    public Result<?> updateContent(@PathVariable("id") Integer id) {
        contentService.removeById(id);
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
    @GetMapping("/pageFindContent")
    public Result<?> pageFindContent(@RequestParam(defaultValue = "1") Integer pageNum,
                                     @RequestParam(defaultValue = "10") Integer pageSize,
                                     @RequestParam(defaultValue = "") String search) {
        Page<Content> page = contentService.page(new Page<>(pageNum, pageSize), Wrappers.<Content>lambdaQuery().like(Content::getAuthor, search));
        return Result.success(page);
    }
}
