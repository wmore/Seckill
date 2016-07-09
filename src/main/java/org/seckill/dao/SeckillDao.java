package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by wangyue on 16/7/8.
 */
public interface SeckillDao {

    /**
     * 减库存
     *
     * @param seckillId
     * @param killtime
     * @return
     */
    int reduceNumber(@Param("seckillId") long seckillId, @Param("killtime") Date killtime);

    /**
     * 查询
     *
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * 根据偏移量查询秒杀商品列表
     *
     * @param offet
     * @param limit
     * @return
     */
    List<Seckill> queryAll(@Param("offset") int offet, @Param("limit") int limit);

}
