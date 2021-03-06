package com.ai.mnt.service.product;

import java.util.List;
import com.ai.mnt.model.product.MntLibRelHis;

/**
 * @Title: MntLibRelHisService 
 * @Description: MntLibRelHisService ServicePackage
 * @Author: Auto Generate. HE
 * @Date: 2016-5-17
 */

public interface MntLibRelHisService {
    
    /**
     * 获取所有库文件发布历史明细列表
     * @return List<MntLibRelHis>
     */
    public List<MntLibRelHis> findAllMntLibRelHis();
    
    
    /**
     * 获取库文件发布历史明细列表
     * @param product
     * @return List<MntLibRelHis>
     */
    public List<MntLibRelHis> findMntLibRelHisList(MntLibRelHis mntLibRelHis);
    
    /**
     * 通过主键ID获取库文件发布历史明细
     * @param id Primary key
     * @return MntLibRelHis
     */
    public MntLibRelHis findMntLibRelHisById(Integer id);
    
    /**
     * 添加库文件发布历史明细
     * @param MntLibRelHis
     */
    public void saveMntLibRelHis(MntLibRelHis mntLibRelHis);
    
    /**
     * 更新库文件发布历史明细
     * 根据MntLibRelHis的主键更新主键以外的其他字段
     * @param MntLibRelHis
     */
    public void updateMntLibRelHisById(MntLibRelHis mntLibRelHis);
    
    /**
     * 根据主键批量删除库文件发布历史明细 
     * 非物理删除 修改删除标识
     * @param id Primary key
     */
    public void deleteMntLibRelHisByIds(String ids);
}
