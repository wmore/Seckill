package org.seckill.exception;

/**
 * 所有秒杀相关业务异常
 * Created by wangyue on 16/7/10.
 */
public class SeckillException extends RuntimeException {
    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
