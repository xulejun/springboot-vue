package com.legendxu.manager.common;

import lombok.*;

/**
 * 响应包装类
 *
 * @author legend xu
 * @date 2021/12/10
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Result<T> {
    private String code;
    private String msg;
    private T data;

    public Result(T data) {
        this.data = data;
    }

    public static Result success() {
        return Result.builder().code("0").msg("成功").build();
    }

    public static <T> Result<T> success(T data) {
        Result<T> result = new Result<>(data);
        result.setCode("0");
        result.setMsg("成功");
        return result;
    }

    public static Result error(String code, String msg) {
        return Result.builder().code(code).msg(msg).build();
    }
}
