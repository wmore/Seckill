package org.seckill.exception;

import org.seckill.dto.SeckillExecution;
import org.seckill.entity.SuccessKilled;

/**
 * 秒杀关闭异常
 * Created by wangyue on 16/7/10.
 */
public class SeckillCloseException extends SeckillException {

    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }

}
