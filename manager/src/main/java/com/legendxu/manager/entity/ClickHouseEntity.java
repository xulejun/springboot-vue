package com.legendxu.manager.entity;

import lombok.Data;

/**
 * clickhouse 测试实体类
 *
 * @author legend xu
 * @date 2022/7/11
 */
@Data
public class ClickHouseEntity {
    private Long id;
    private String name;
    private Integer age;
    private String email;
}
