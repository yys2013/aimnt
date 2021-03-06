package com.ai.mnt.service.req;

import java.util.List;
import com.ai.mnt.model.req.MntReqTrack;

/**
 * @Title: MntReqTrackService 
 * @Description: MntReqTrackService ServicePackage
 * @Author: Auto Generate.
 * @Date: 2016-7-27
 */

public interface MntReqTrackService {
    
    /**
     * 获取所有部门需求故障跟踪列表
     * @return List<MntReqTrack>
     */
    public List<MntReqTrack> findAllMntReqTrack();
    
    
    /**
     * 获取部门需求故障跟踪列表
     * @param req
     * @return List<MntReqTrack>
     */
    public List<MntReqTrack> findMntReqTrackList(MntReqTrack mntReqTrack);
    
    /**
     * 通过主键ID获取部门需求故障跟踪
     * @param trackId Primary key
     * @return MntReqTrack
     */
    public MntReqTrack findMntReqTrackByTrackId(Integer trackId);
    
    /**
     * 添加部门需求故障跟踪
     * @param MntReqTrack
     */
    public void saveMntReqTrack(MntReqTrack mntReqTrack);
    
    /**
     * 更新部门需求故障跟踪
     * 根据MntReqTrack的主键更新主键以外的其他字段
     * @param MntReqTrack
     */
    public void updateMntReqTrackByTrackId(MntReqTrack mntReqTrack);
    
    /**
     * 根据主键批量删除部门需求故障跟踪 
     * 非物理删除 修改删除标识
     * @param trackId Primary key
     */
    public void deleteMntReqTrackByTrackIds(String trackIds);
}
