package org.seckill.exception;

import org.seckill.dto.SeckillExecution;
import org.seckill.entity.SuccessKilled;

/**
 * 重复秒杀异常
 * Created by wangyue on 16/7/10.
 */
public class RepeatKillException extends SeckillException {

    public RepeatKillException(String message) {
        super(message);
    }

    public RepeatKillException(String message, Throwable cause) {
        super(message, cause);
    }
}
